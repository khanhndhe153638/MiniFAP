<%-- 
    Document   : Edit
    Created on : Jul 10, 2021, 11:56:57 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form action="edit" method="post">
            <div class="modal-header">						
                <h4 class="modal-title">Edit subject detail</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">	
                <div class="form-group">
                    <label>Code</label>
                    <input value="${detail.subjectCode}" name="code" type="text" class="form-control" readonly required>
                </div>	
                <div class="form-group">
                    <label>Name</label>
                    <input value="${detail.subjectName}" name="name" type="text" class="form-control" readonly required>
                </div>
                <div class="form-group">
                    <label>Date</label>
                    <input value="${detail.date}" name="date" type="text" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>RoomNo</label>
                    <input value="${detail.roomNo}" name="room" type="text" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Time</label>
                    <input value="${detail.time}" name="time" type="text" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Exam form</label>
                    <select name="form" class="form-select" aria-label="Default select example">
                        <option ${detail.examForm == selected ? 'selected="selected"' : ''} value="${detail.examForm}">${detail.examForm}</option>
                    </select>
                </div>				
            </div>
            <div class="modal-footer">
                <a href="manager"><input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel"></a>
                <input type="submit" class="btn btn-info" value="Save">
            </div>
        </form>
    </body>
</html>
