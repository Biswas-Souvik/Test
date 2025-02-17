package com.DAO;

import com.Utils.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.Model.User;

public class UserDAO {
	public boolean registerUser(User user) {
		String query = "INSERT INTO users (id, name, email, contactNo, address, pincode, password) VALUES (?, ?, ?, ?, ?, ?, ?)";
		try (Connection conn = DBConnection.getConnection();
	            PreparedStatement stmt = conn.prepareStatement(query)) {

	            stmt.setString(1, user.getId());
	            stmt.setString(2, user.getName());
	            stmt.setString(3, user.getEmail());
	            stmt.setString(4, user.getContactNo());
	            stmt.setString(5, user.getAddress());
	            stmt.setString(6, user.getPincode());
	            stmt.setString(7, user.getPassword()); // Store hashed password

	            return stmt.executeUpdate() > 0;
	     } catch (SQLException e) {
	            e.printStackTrace();
	            return false;
	     }
	}
}
