package com.springmvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mvc.util.DBConnection;

public class LoginDao {

    public boolean authenticateUser(String username, String password) {
        boolean isAuthenticated = false;
        Connection connection = DBConnection.createConnection();
        try {
            String query = "SELECT * FROM users WHERE username = ? AND password = ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, username);
            statement.setString(2, password);

            ResultSet resultSet = statement.executeQuery();
            isAuthenticated = resultSet.next();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return isAuthenticated;
    }
}