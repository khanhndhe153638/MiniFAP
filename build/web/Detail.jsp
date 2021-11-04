<%-- 
    Document   : Detail
    Created on : Jul 16, 2021, 2:14:48 AM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detail</title>
        <link href="css/homeStyle.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="header">
                <div class="little">
                    <h1>FPT University Mini Academic Portal</h1>
                </div>
                <div class="mini">
                    <table>
                        <tr>
                            <th class="mobile"><p><strong>MiniFAP mobile app is not available at</strong></p></th>
                            <th></th>
                        </tr>
                        <tr>
                            <td><img src="img/appstore.png" style="width: 120px; height: 40px" alt="apple store"></td>
                            <td><img src="img/ggplay.jpg" style="width: 120px; height: 40px" alt="google store"></td>
                        </tr>
                    </table>
                </div>
            </div>

            <nav style="margin-bottom: 20px; width: 193%">
                <label class="logo"><a href="Home.jsp">Home</a></label>
                <ul>
                    <li><a class="label label-success" href="detail">${sessionScope.acc.user}</a></li> |
                    <li><a class="label label-success" href="logout">logout</a></li> |
                    <li class="label label-success">CAMPUS: FPTU-Hoà Lạc</li>
                </ul>
            </nav>

            <div class="sidebar">
                <div class="box">
                    <h3 class="title" style="float: left; width: 30%">USER DETAIL</h3>
                    <table>
                        <tr>
                            <td>Login</td>
                            <td>${detail.user}</td>
                        </tr>
                        <tr>
                            <td>Role</td>
                            <td>${detail.role}</td>
                        </tr>
                        <tr>
                            <td>Full name</td>
                            <td style="width: 250px">${detail.fullname}</td>     
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td>${detail.email}</td>
                        </tr>
                        <tr>
                            <td style="width: 280px">
                                <a href="UpdateInfor.jsp">Update information</a>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>

            <div class="footer">
                <b class="detail">Mọi góp ý, thắc mắc xin liên hệ</b><b class="contact">: Phòng dịch vụ sinh viên: Email: </b><a href="mailto:dichvusinhvien@fe.edu.vn">dichvusinhvien@fe.edu.vn</a>
                <b class="contact">. Điện thoại: </b><p class="phone">(024)7308.13.13</p>
                <p style="text-align: center" class="last">
                    © Powered by <a href="http://fpt.edu.vn" target="_blank">FPT University</a>&nbsp;|&nbsp;
                    <a href="http://cms.fpt.edu.vn/" target="_blank">CMS</a>&nbsp;|&nbsp; <a href="http://library.fpt.edu.vn" target="_blank">library</a>&nbsp;|&nbsp; <a href="http://library.books24x7.com" target="_blank">books24x7</a>
                </p>
            </div>
        </div>
    </body>
</html>
