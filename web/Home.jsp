<%-- 
    Document   : Home
    Created on : Jun 23, 2021, 4:08:17 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link href="css/homeStyle.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

            if (session.getAttribute("acc") == null) {
                response.sendRedirect("index.html");
            }
        %>
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

                <div class="navigation">
                    <a href="detail">
                        <span class="label label-success">${sessionScope.acc.user}</span>
                    </a> 
                    |
                    <a href="logout">
                        <span class="label label-success">logout</span>
                    </a>
                    |
                    <span class="label label-success">CAMPUS: FPTU-Hoà Lạc</span>
                </div>

            <div class="main">
                <c:if test="${sessionScope.acc.isStudent == 1}">
                    <div class="box">
                        <h3 class="title" style="float: right; width: 40%">ACADEMICS INFORMATION</h3>
                        <table>
                            <tr>
                                <th>Registration/Application(Thủ tục/đơn từ)</th>
                                <th>Information Access(Tra cứu thông tin)</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul>
                                        <li><a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Suspend one semester to take repeated course |  Cancel</a></li>
                                        <li><a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Suspend one semester |  Cancel</a></li>
                                        <li><a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Move out class, suspend subject | Cancel</a></li>
                                        <li><a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Register extra courses</a></li>
                                        <li><a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Register to improve mark</a></li>
                                        <li><a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Register to repeat a course</a></li>
                                        <li><a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Cancel registration</a></li>
                                        <li><a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Register Free Elective Courses</a></li>
                                        <li><a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Send Application |  View Application</a></li>
                                        <li><a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Xin xác nhận sinh viên</a></li>
                                        <li><a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Choose paid items (Lựa chọn các khoản nộp) - View</a></li>
                                    </ul>
                                </td>
                                <td>
                                    <ul>
                                        <li><a href="schedule">View exam schedule</a></li>
                                        <li><a href="curriculum">Curriculum</a></li>
                                    </ul>
                                </td>
                            </tr>
                        </table>
                    </div>
                </c:if>

                <c:if test="${sessionScope.acc.isAdmin == 1}">
                    <div class="box">
                        <h3 class="title" style="float: right; width: 60%">MANAGE INFORMATION</h3>
                        <table>
                            <tr>
                                <th>Manage/Update(Quản lý/cập nhật)</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul>
                                        <li><a href="manager">Update schedule</a></li>
                                        <li><a href="managerCurri">Update curriculum</a></li>
                                    </ul>
                                </td>
                            </tr>
                        </table>
                    </div>
                </c:if>
            </div>

            <c:if test="${sessionScope.acc.isStudent == 1}">
                <div class="sidebar" style="width: 95%">
                    <div class="box">
                        <h3 class="title" style="float: left; width: 40%">News</h3>
                        <ul>
                            <li>15/07/21 17:23 - <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">FU-HL: Thông báo điểm thi lần 2 các môn BDP301b, BDP303b, CPP101b, CQT201b HK Summer 2021.</a></li>
                            <li>15/07/21 09:53 - <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">FU-HL: Thư mời tham dự chương trình The Dialogue “Xây dựng và Quản trị Cộng đồng - Câu chuyện từ VNG”</a></li>
                            <li>24/06/21 09:45 - <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">FU-HL: QUYẾT ĐỊNH 691_BIỂU PHÍ CÁC MÔN HỌC VÀ QUY ĐỊNH VỀ PHÍ HỌC LẠI, PHÍ THU HỒI HỌC BỔNG, PHÍ VI PHẠM QUY CHẾ THI TỪ NGÀY 01/9/2021</a></li>
                            <li>13/07/21 08:39 - <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">FU-HL: Thông báo lịch thi lần 1 và lần 2 các môn học online (coursera) HK Summer 2021.</a></li>
                            <li>09/07/21 14:45 - <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">FU-HL: [THƯ VIỆN] THÔNG BÁO NHẬN SÁCH GIÁO TRÌNH MÔN TRS501, TRS601 PART 2 KỲ SU2021 (Expired: 25/07/21)</a></li>
                            <li>08/07/21 17:09 - <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">FU-HL: Thông báo về kế hoạch học tập các lớp part2 kỳ Summer 2021.</a></li>
                            <li>03/07/21 12:03 - <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">FU-HL: Thông báo: Phòng Dịch vụ sinh viên ngừng phục vụ trong thời gian nghỉ hè từ 05/7 – 11/7/2021</a></li>
                        </ul>
                        <img src="img/PTH-01.jpg" alt="notice"/>
                    </div>
                </div>
            </c:if>

            <c:if test="${sessionScope.acc.isAdmin == 1}">
                <div class="sidebar" style="width: 59%">
                    <div class="box">
                        <h3 class="title" style="float: left; width: 40%">News</h3>
                        <ul>
                            <li>15/07/21 17:23 - <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">FU-HL: Thông báo điểm thi lần 2 các môn BDP301b, BDP303b, CPP101b, CQT201b HK Summer 2021.</a></li>
                            <li>15/07/21 09:53 - <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">FU-HL: Thư mời tham dự chương trình The Dialogue “Xây dựng và Quản trị Cộng đồng - Câu chuyện từ VNG”</a></li>
                            <li>24/06/21 09:45 - <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">FU-HL: QUYẾT ĐỊNH 691_BIỂU PHÍ CÁC MÔN HỌC VÀ QUY ĐỊNH VỀ PHÍ HỌC LẠI, PHÍ THU HỒI HỌC BỔNG, PHÍ VI PHẠM QUY CHẾ THI TỪ NGÀY 01/9/2021</a></li>
                            <li>13/07/21 08:39 - <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">FU-HL: Thông báo lịch thi lần 1 và lần 2 các môn học online (coursera) HK Summer 2021.</a></li>
                            <li>09/07/21 14:45 - <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">FU-HL: [THƯ VIỆN] THÔNG BÁO NHẬN SÁCH GIÁO TRÌNH MÔN TRS501, TRS601 PART 2 KỲ SU2021 (Expired: 25/07/21)</a></li>
                            <li>08/07/21 17:09 - <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">FU-HL: Thông báo về kế hoạch học tập các lớp part2 kỳ Summer 2021.</a></li>
                            <li>03/07/21 12:03 - <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">FU-HL: Thông báo: Phòng Dịch vụ sinh viên ngừng phục vụ trong thời gian nghỉ hè từ 05/7 – 11/7/2021</a></li>
                        </ul>
                        <img src="img/PTH-01.jpg" alt="notice"/>
                    </div>
                </div>
            </c:if>

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
