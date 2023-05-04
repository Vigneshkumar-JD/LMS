package com.vt.lms;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NotificationCompleted
 */
@WebServlet("/NotificationCompleted")
public class NotificationCompleted extends HttpServlet {
	 private static final long serialVersionUID = 1L;
     
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        int id = Integer.parseInt(request.getParameter("id")); // retrieve the ID parameter from the request
	        
	        // set up the database connection
	        String jdbcUrl = "jdbc:mysql://localhost:3306/lms";
	        String username = "root";
	        String password = "saranya@2001";
	        String driver = "com.mysql.cj.jdbc.Driver";
	        
	        try {
	            Class.forName(driver);
	            Connection conn = DriverManager.getConnection(jdbcUrl, username, password);
	            
	            // prepare the SQL statement
	            PreparedStatement stmt = conn.prepareStatement("DELETE FROM contact WHERE id = ?");
	            stmt.setInt(1, id);
	            
	            // execute the statement and get the number of rows affected
	            int numRowsDeleted = stmt.executeUpdate();
	            
	            // close the statement and connection
	            stmt.close();
	            conn.close();
	            
	            // send a success response back to the client
	            response.setContentType("text/html");
	            PrintWriter out = response.getWriter();
	            out.print("{\"status\":\"success\",\"message\":\"Notification Removed successfully\"}");
	        } catch (Exception ex) {
	            // send an error response back to the client
	            response.setContentType("text/html");
	            PrintWriter out = response.getWriter();
	            out.print("{\"status\":\"error\",\"message\":\"Notification could not be Removed\"}");
	        }
	    }
	}
