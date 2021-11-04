<%-- 
    Document   : UpdateInfor
    Created on : Jul 16, 2021, 6:28:26 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="update" method="post">	
            <div>
                <label>Full Name</label>
                <input name="fullname" type="text" class="form-control" required>
            </div>		
            <div class="modal-footer">
                <a href="detail"><input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel"></a>
                <input type="submit" class="btn btn-info" value="Save">
            </div>
        </form>
    </body>
</html>
