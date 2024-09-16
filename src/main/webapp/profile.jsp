<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Profile</title>
</head>
<body>
    <center>
        <h1>Welcome, <%= session.getAttribute("username") %></h1>
        <p>This is your profile page.</p>
        <a href="logout.jsp">Log out</a>
    </center>
</body>
</html>