<%-- 
    Document   : LoginMenu
    Created on : Jun 23, 2021, 11:20:22 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Form</title>
        <link href="css/loginStyled.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form class="box" action="login" method="post">
            <h1>Login</h1>
            <input type="text" name="username" placeholder="Username">
            <input type="password" name="password" placeholder="Password">
            <p>${mess}</p>
            <input type="submit" name="login-submit" value="Log In">
        </form>
    </body>
</html>
