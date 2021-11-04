<%-- 
    Document   : ManagerSchedule
    Created on : Jun 25, 2021, 5:57:00 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exam Schedule</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
                <br>
                <nav style="margin-bottom: 20px; width: 96.3%; margin-top: 50px">
                    <label class="logo"><a href="Home.jsp">Home</a></label>
                    <ul>
                        <li><a class="label label-success" href="detail">${sessionScope.acc.user}</a></li> |
                        <li><a class="label label-success" href="logout">logout</a></li> |
                        <li class="label label-success">CAMPUS: FPTU-Hoà Lạc</li>
                    </ul>
                </nav>
            </div>



            <div class="sidebar" style="width: 100%; height: 50%">
                <div class="box">
                    <h3 class="title" style="float: left; width: 20%">Curriculum</h3>
                    <table>
                        <tr>
                            <th style="padding-left: 40px">Subject Code</th>
                            <th style="padding-left: 40px">Subject Name</th>
                            <th style="padding-left: 40px">Date</th>
                            <th style="padding-left: 40px">Room No</th>
                            <th style="padding-left: 40px">Time</th>
                            <th style="padding-left: 40px">Exam Form</th>
                            <th style="padding-left: 40px">Actions</th>
                        </tr>
                        <c:forEach items="${listS}" var="o">
                            <tr>
                                <td>${o.subjectCode}</td>
                                <td>${o.subjectName}</td>
                                <td>${o.date}</td>
                                <td>${o.roomNo}</td>
                                <td>${o.time}</td>
                                <td>${o.examForm}</td>
                                <td><a href="load?sid=${o.subjectCode}">edit</a>  <a href="delete?sid=${o.subjectCode}&sname=${o.subjectName}">delete</a></td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>

            <div class="footer">
                <a href="#addEmployeeModal"  class="btn btn-success" data-toggle="modal">Add new subject on exam schedule</a> <br>						
                <b class="detail">Mọi góp ý, thắc mắc xin liên hệ</b><b class="contact">: Phòng dịch vụ sinh viên: Email: </b><a href="mailto:dichvusinhvien@fe.edu.vn">dichvusinhvien@fe.edu.vn</a>
                <b class="contact">. Điện thoại: </b><p class="phone">(024)7308.13.13</p>
                <p style="text-align: center" class="last">
                    © Powered by <a href="http://fpt.edu.vn" target="_blank">FPT University</a>&nbsp;|&nbsp;
                    <a href="http://cms.fpt.edu.vn/" target="_blank">CMS</a>&nbsp;|&nbsp; <a href="http://library.fpt.edu.vn" target="_blank">library</a>&nbsp;|&nbsp; <a href="http://library.books24x7.com" target="_blank">books24x7</a>
                </p>
            </div>



            <%--Add Employee box appearance--%>
            <div id="addEmployeeModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="add" method="post">
                            <div class="modal-header">						
                                <h4 class="modal-title">Subject Detail</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">	
                                <div class="form-group">
                                    <label>Name</label>
                                    <input name="name" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Date</label>
                                    <input name="date" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>RoomNo</label>
                                    <input name="room" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Time</label>
                                    <input name="time" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Exam form</label>
                                    <select name="form" class="form-select" aria-label="Default select example">
                                        <option value="FE">FE</option>
                                        <option value="PE">PE</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Code</label>
                                    <select name="code" class="form-select" aria-label="Default select example">
                                        <c:forEach items="${curriList}" var="o">
                                            <option value="${o.subjectCode}">${o.subjectCode}</option>
                                        </c:forEach>
                                    </select>
                                </div>

                            </div>
                            <div class="modal-footer">
                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                <input type="submit" class="btn btn-success" value="Add">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
