<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login</title>
</head>
<body>
    <center>
        <h1>Login Form</h1>
        <form action="LoginControllers" method="post">
            <div><font color="blue">Username:</font> <input type="text" name="username"></div>
            <div><font color="blue">Password:</font> <input type="password" name="password"></div>
            <div><input type="submit" value="Log In"></div>
        </form>
        <p><%= request.getAttribute("errorMessage") == null ? "" : request.getAttribute("errorMessage") %></p>
    </center>
</body>
</html>