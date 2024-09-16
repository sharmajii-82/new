package com.springmvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.mvc.util.DBConnection;
import com.springmvc.model.User;

public class RegisterDao {

    public boolean registerUser(User user) {
        boolean isRegistered = false;
        Connection connection = DBConnection.createConnection();
        try {
            String query = "INSERT INTO users(fullname, email, username, password) VALUES (?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, user.getFullname());
            statement.setString(2, user.getEmail());
            statement.setString(3, user.getUsername());
            statement.setString(4, user.getPassword());

            int rowsInserted = statement.executeUpdate();
            isRegistered = rowsInserted > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return isRegistered;
    }
}