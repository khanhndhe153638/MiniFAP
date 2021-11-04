<%-- 
    Document   : Curriculum
    Created on : Jun 25, 2021, 5:30:09 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Curriculum</title>
        <style>
            a{
                text-decoration: none;
            }
        </style>
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

            <nav style="margin-bottom: 20px; width: 198%">
                <label class="logo"><a href="Home.jsp">Home</a></label>
                <ul>
                    <li><a class="label label-success" href="detail">${sessionScope.acc.user}</a></li> |
                    <li><a class="label label-success" href="logout">logout</a></li> |
                    <li class="label label-success">CAMPUS: FPTU-Hoà Lạc</li>
                </ul>
            </nav>

            <div class="sidebar" style="width: 80%">
                <div class="box">
                    <h3 class="title" style="float: left; width: 30%">Curriculum</h3>
                    <table style="width: 60%">
                        <tr>
                            <th style="padding: 0">Subject Code</th>
                            <th>Subject Name</th>
                            <th>Term No</th>
                        </tr>
                        <c:forEach items="${curriList}" var="o">
                            <tr>
                                <td>${o.subjectCode}</td>
                                <td>${o.subjectName}</td>
                                <td>${o.termNo}</td>
                            </tr>
                        </c:forEach>
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
