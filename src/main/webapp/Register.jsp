<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Register</title>
    <script> 
    function validate() { 
        var fullname = document.form.fullname.value;
        var email = document.form.email.value;
        var username = document.form.username.value; 
        var password = document.form.password.value;
        var conpassword= document.form.conpassword.value;
        
        if (fullname == "" || email == "" || username == "" || password.length < 6 || password != conpassword) {
            alert("Please fill all fields correctly.");
            return false; 
        } 
        return true;
    } 
    </script> 
</head>
<body>
    <center><h2>Java Registration Application using MVC and MySQL </h2></center>
    <form name="form" action="RegisterServlet" method="post" onsubmit="return validate()">
        <table align="center">
            <tr>
                <td>Full Name</td>
                <td><input type="text" name="fullname" /></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="text" name="email" /></td>
            </tr>
            <tr>
                <td>Username</td>
                <td><input type="text" name="username" /></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="password" /></td>
            </tr>
            <tr>
                <td>Confirm Password</td>
                <td><input type="password" name="conpassword" /></td>
            </tr>
            <tr>
                <td colspan="2"><%= request.getAttribute("errMessage") == null ? "" : request.getAttribute("errMessage") %></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Register"><input type="reset" value="Reset"></td>
            </tr>
        </table>
    </form>
</body>
</html>