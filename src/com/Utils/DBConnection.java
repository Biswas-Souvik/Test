package com.Utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	private static final String URL = "jdbc:derby:C:\\\\\\\\Users\\\\\\\\AVHIRUP MONDAL\\\\\\\\MyDB;create=true";
	
	public static Connection getConnection() throws SQLException {
        try {
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver"); // Load Derby Driver
            return DriverManager.getConnection(URL);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            throw new SQLException("Database Connection Error!");
        }
    }
	
}
