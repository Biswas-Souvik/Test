package com.Main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.*;
public class AppMain {

	public static void main(String[] args) {
		// --------------- taking user-input -----------------
		Scanner sc = new Scanner(System.in);
		// enter id
		System.out.print("Enter your id: ");
        int id = sc.nextInt();  
        sc.nextLine();  // Consume the leftover newline
        
        // enter name
        System.out.println();
		System.out.print("Enter your name: ");
		String name = sc.nextLine();
		
		// enter marks into Double
		System.out.println();
		System.out.print("Enter your marks: ");
		Double marks = sc.nextDouble();
		
		
		// ------------------ JDBC Connection -----------------
		
		Connection con = null;
		PreparedStatement pst = null;
		int check = 0;
		
		try {
			Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
			
			con = DriverManager.getConnection("jdbc:derby:C:\\\\Users\\\\AVHIRUP MONDAL\\\\MyDB;create=true");
			
			String sqlQueryInsert = "insert into STUDENTS values(?, ?, ?)";
			
			pst = con.prepareStatement(sqlQueryInsert);
			
			pst.setInt(1, id);
			pst.setString(2, name);
			pst.setDouble(3, marks);
			
			
			
			// executing update query
			check = pst.executeUpdate();
			System.out.println(check);
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO: handle exception
			System.out.println(e);
		}
		
	}

}
