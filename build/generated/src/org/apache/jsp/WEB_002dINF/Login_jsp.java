package org.apache.jsp.WEB_002dINF;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("        <script src=\"//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"//code.jquery.com/jquery-1.11.1.min.js\"></script>\n");
      out.write("        <style>\n");
      out.write("            body {\n");
      out.write("                padding-top: 90px;\n");
      out.write("            }\n");
      out.write("            .panel-login {\n");
      out.write("                border-color: #ccc;\n");
      out.write("                -webkit-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);\n");
      out.write("                -moz-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);\n");
      out.write("                box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);\n");
      out.write("            }\n");
      out.write("            .panel-login>.panel-heading {\n");
      out.write("                color: #00415d;\n");
      out.write("                background-color: #fff;\n");
      out.write("                border-color: #fff;\n");
      out.write("                text-align:center;\n");
      out.write("            }\n");
      out.write("            .panel-login>.panel-heading a{\n");
      out.write("                text-decoration: none;\n");
      out.write("                color: #666;\n");
      out.write("                font-weight: bold;\n");
      out.write("                font-size: 15px;\n");
      out.write("                -webkit-transition: all 0.1s linear;\n");
      out.write("                -moz-transition: all 0.1s linear;\n");
      out.write("                transition: all 0.1s linear;\n");
      out.write("            }\n");
      out.write("            .panel-login>.panel-heading a.active{\n");
      out.write("                color: #029f5b;\n");
      out.write("                font-size: 18px;\n");
      out.write("            }\n");
      out.write("            .panel-login>.panel-heading hr{\n");
      out.write("                margin-top: 10px;\n");
      out.write("                margin-bottom: 0px;\n");
      out.write("                clear: both;\n");
      out.write("                border: 0;\n");
      out.write("                height: 1px;\n");
      out.write("                background-image: -webkit-linear-gradient(left,rgba(0, 0, 0, 0),rgba(0, 0, 0, 0.15),rgba(0, 0, 0, 0));\n");
      out.write("                background-image: -moz-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));\n");
      out.write("                background-image: -ms-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));\n");
      out.write("                background-image: -o-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));\n");
      out.write("            }\n");
      out.write("            .panel-login input[type=\"text\"],.panel-login input[type=\"email\"],.panel-login input[type=\"password\"] {\n");
      out.write("                height: 45px;\n");
      out.write("                border: 1px solid #ddd;\n");
      out.write("                font-size: 16px;\n");
      out.write("                -webkit-transition: all 0.1s linear;\n");
      out.write("                -moz-transition: all 0.1s linear;\n");
      out.write("                transition: all 0.1s linear;\n");
      out.write("            }\n");
      out.write("            .panel-login input:hover,\n");
      out.write("            .panel-login input:focus {\n");
      out.write("                outline:none;\n");
      out.write("                -webkit-box-shadow: none;\n");
      out.write("                -moz-box-shadow: none;\n");
      out.write("                box-shadow: none;\n");
      out.write("                border-color: #ccc;\n");
      out.write("            }\n");
      out.write("            .btn-login {\n");
      out.write("                background-color: #59B2E0;\n");
      out.write("                outline: none;\n");
      out.write("                color: #fff;\n");
      out.write("                font-size: 14px;\n");
      out.write("                height: auto;\n");
      out.write("                font-weight: normal;\n");
      out.write("                padding: 14px 0;\n");
      out.write("                text-transform: uppercase;\n");
      out.write("                border-color: #59B2E6;\n");
      out.write("            }\n");
      out.write("            .btn-login:hover,\n");
      out.write("            .btn-login:focus {\n");
      out.write("                color: #fff;\n");
      out.write("                background-color: #53A3CD;\n");
      out.write("                border-color: #53A3CD;\n");
      out.write("            }\n");
      out.write("            .forgot-password {\n");
      out.write("                text-decoration: underline;\n");
      out.write("                color: #888;\n");
      out.write("            }\n");
      out.write("            .forgot-password:hover,\n");
      out.write("            .forgot-password:focus {\n");
      out.write("                text-decoration: underline;\n");
      out.write("                color: #666;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .btn-register {\n");
      out.write("                background-color: #1CB94E;\n");
      out.write("                outline: none;\n");
      out.write("                color: #fff;\n");
      out.write("                font-size: 14px;\n");
      out.write("                height: auto;\n");
      out.write("                font-weight: normal;\n");
      out.write("                padding: 14px 0;\n");
      out.write("                text-transform: uppercase;\n");
      out.write("                border-color: #1CB94A;\n");
      out.write("            }\n");
      out.write("            .btn-register:hover,\n");
      out.write("            .btn-register:focus {\n");
      out.write("                color: #fff;\n");
      out.write("                background-color: #1CA347;\n");
      out.write("                border-color: #1CA347;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            $(function () {\n");
      out.write("\n");
      out.write("                $('#login-form-link').click(function (e) {\n");
      out.write("                    $(\"#login-form\").delay(100).fadeIn(100);\n");
      out.write("                    $(\"#register-form\").fadeOut(100);\n");
      out.write("                    $('#register-form-link').removeClass('active');\n");
      out.write("                    $(this).addClass('active');\n");
      out.write("                    e.preventDefault();\n");
      out.write("                });\n");
      out.write("                $('#register-form-link').click(function (e) {\n");
      out.write("                    $(\"#register-form\").delay(100).fadeIn(100);\n");
      out.write("                    $(\"#login-form\").fadeOut(100);\n");
      out.write("                    $('#login-form-link').removeClass('active');\n");
      out.write("                    $(this).addClass('active');\n");
      out.write("                    e.preventDefault();\n");
      out.write("                });\n");
      out.write("\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-6 col-md-offset-3\">\n");
      out.write("                    <div class=\"panel panel-login\">\n");
      out.write("                        <div class=\"panel-heading\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-xs-6\">\n");
      out.write("                                    <a href=\"#\" class=\"active\" id=\"login-form-link\">Login</a>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-xs-6\">\n");
      out.write("                                    <a href=\"#\" id=\"register-form-link\">Register</a>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <hr>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"panel-body\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-lg-12\">\n");
      out.write("                                    <form id=\"login-form\" action=\"login\" method=\"post\" role=\"form\" style=\"display: block;\">\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <input type=\"text\" name=\"username\" id=\"username\" tabindex=\"1\" class=\"form-control\" placeholder=\"Username\" value=\"\">\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <input type=\"password\" name=\"password\" id=\"password\" tabindex=\"2\" class=\"form-control\" placeholder=\"Password\">\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group text-center\">\n");
      out.write("                                            <input type=\"checkbox\" tabindex=\"3\" class=\"\" name=\"remember\" id=\"remember\">\n");
      out.write("                                            <label for=\"remember\"> Remember Me</label>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <div class=\"row\">\n");
      out.write("                                                <div class=\"col-sm-6 col-sm-offset-3\">\n");
      out.write("                                                    <input type=\"submit\" name=\"login-submit\" id=\"login-submit\" tabindex=\"4\" class=\"form-control btn btn-login\" value=\"Log In\">\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </form>\n");
      out.write("                                    <form id=\"register-form\" action=\"#\" method=\"post\" role=\"form\" style=\"display: none;\">\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <input type=\"text\" name=\"username\" id=\"username\" tabindex=\"1\" class=\"form-control\" placeholder=\"Username\" value=\"\">\n");
      out.write("                                        </div>                               \n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <input type=\"password\" name=\"password\" id=\"password\" tabindex=\"2\" class=\"form-control\" placeholder=\"Password\">\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <input type=\"password\" name=\"confirm-password\" id=\"confirm-password\" tabindex=\"2\" class=\"form-control\" placeholder=\"Confirm Password\">\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <div class=\"row\">\n");
      out.write("                                                <div class=\"col-sm-6 col-sm-offset-3\">\n");
      out.write("                                                    <input type=\"submit\" name=\"register-submit\" id=\"register-submit\" tabindex=\"4\" class=\"form-control btn btn-register\" value=\"Register Now\">\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </form>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
