<%-- 
    Document   : SignUp
    Created on : Jun 23, 2021, 11:36:02 PM
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
        <form class="box" action="signup" method="post">
            <h1>Register</h1>
            <input type="text" name="username" placeholder="Username">
            <input type="password" name="password" placeholder="Password" class="password">
            <input type="password" name="repassword" placeholder="Re-password" class="confirmPass">
            <p>${mess}</p>
            <input type="submit" name="login-submit" value="Sign up" class="button">
        </form>
    </body>
</html>
