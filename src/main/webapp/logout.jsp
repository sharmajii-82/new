<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Logout</title>
</head>
<body>
    <center>
        <h1>You have logged out successfully!</h1>
        <p><a href="Register.jsp">Log in again</a></p>
        
    </center>
    <%
        session.invalidate();
    %>
</body>
</html>