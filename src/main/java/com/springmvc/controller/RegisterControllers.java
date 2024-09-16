package com.springmvc.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.springmvc.dao.RegisterDao;
import com.springmvc.model.User;

@WebServlet("/RegisterServlet")
public class RegisterControllers extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        User user = new User();
        user.setFullname(fullname);
        user.setEmail(email);
        user.setUsername(username);
        user.setPassword(password);
        
        RegisterDao registerDao = new RegisterDao();
        
        if (registerDao.registerUser(user)) {
            request.getRequestDispatcher("success.jsp").forward(request, response);
        } else {
            request.setAttribute("errMessage", "Registration failed, please try again.");
            request.getRequestDispatcher("Register.jsp").forward(request, response);
        }
    }
}