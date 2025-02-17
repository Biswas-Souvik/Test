package com.Backend;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Model.*;
import com.DAO.*;

@WebServlet("/regUser")
public class Register extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// ----------- getting user data -------------
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String contactNo = req.getParameter("contactNo");
		String address = req.getParameter("address");
		String pincode = req.getParameter("pincode");
		String password = req.getParameter("password");
		
		System.out.print(name);
		
		User user = new User(name, email, contactNo, address, pincode, password);
        UserDAO userDAO = new UserDAO();
        
        if (userDAO.registerUser(user)) {
            res.sendRedirect("https://www.geeksforgeeks.org/url-rewriting-using-java-servlet/");
        } else {
            res.sendRedirect("https://www.geeksforgeeks.org/exception-handling-in-jsp/404/");
        }
	}
}
