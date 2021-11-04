/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Filter;

import entity.Account;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author PC
 */
public class LoginFilter implements Filter{
    private String FileLogin;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        FileLogin= filterConfig.getInitParameter("LoginFile");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        System.out.println("Filter log");
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        HttpSession s = req.getSession();
         if (req.getServletPath().contains("login") || req.getServletPath().contains("index.html")|| req.getServletPath().contains("Signup.jsp")|| req.getServletPath().contains("LoginMenu.jsp")) {
            chain.doFilter(request, response);
        }
         else{
        Account u = (Account) s.getAttribute("acc");
        
        if(u==null){
            res.sendRedirect("LoginMenu.jsp");
        }
        else{
            chain.doFilter(request, response);
        }
         }
    }

    @Override
    public void destroy() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}