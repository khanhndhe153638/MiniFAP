/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.DetailDAO;
import dao.LoginDAO;
import entity.Account;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "SignUpControl", urlPatterns = {"/signup"})
public class SignUpControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String user = request.getParameter("username");
        String pass = request.getParameter("password");
        String re_pass = request.getParameter("repassword");
        if (user == null || pass == null || re_pass == null) {
            request.setAttribute("mess", "You must enter all field");
            request.getRequestDispatcher("SignUp.jsp").forward(request, response);
        } else if (!pass.equals(re_pass)) {
            request.setAttribute("mess", "Re-password is incorrect");
            request.getRequestDispatcher("SignUp.jsp").forward(request, response);
        } else {
            LoginDAO dao = new LoginDAO();
            DetailDAO detailDAO = new DetailDAO();
            
            Account a = dao.checkAccountExist(user);
            if (a == null) { //duoc sign up
                dao.signup(user, pass);
                if (user.contains("admin")) {
                    dao.changeLevel();
                    detailDAO.addNewAdminDetail();
                } else {
                    detailDAO.addNewStudentDetail();
                }
                request.setAttribute("mess", "You can login your new account now");
                request.getRequestDispatcher("LoginMenu.jsp").forward(request, response);
            } else { // user name da co trong database
                request.setAttribute("mess", "Your username has been taken");
                request.getRequestDispatcher("SignUp.jsp").forward(request, response);
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
