package com.vt.lms;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ContactServlet
 */
@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {
	  private static final long serialVersionUID = 1L;
	    
	    // JDBC driver name and database URL
	    static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
	    static final String DB_URL = "jdbc:mysql://localhost:3306/lms?\",\"root\",\"saranya@2001";

	    // Database credentials
	    static final String USER = "root";
	    static final String PASS = "saranya@2001";

	    @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
	            throws ServletException, IOException {
	    	 PrintWriter out = response.getWriter();
	        // Get form data from request parameters
	        String name = request.getParameter("unames");
	        String email = request.getParameter("uemails");
	        String message = request.getParameter("umessage");
	        
	        // Insert form data into database using JDBC
	        try {
	            // Register JDBC driver
	            Class.forName(JDBC_DRIVER);

	            // Open a connection to the database
	            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?","root","saranya@2001");

	            // Prepare SQL statement for inserting data into the enrollment table
	            String sql = "INSERT INTO contact (name, email, message) VALUES (?, ?, ?)";
	            PreparedStatement pstmt = conn.prepareStatement(sql);
	            pstmt.setString(1, name);
	            pstmt.setString(2, email);
	            pstmt.setString(3, message);

	            // Execute the SQL statement
	            pstmt.executeUpdate();

	            // Clean up resources
	            pstmt.close();
	            conn.close();
	            
	            // Send success response to the client using SweetAlert
	            out.println("<html><head>"); 
	            out.println("<script src='https://cdn.jsdelivr.net/npm/sweetalert2@11.1.0/dist/sweetalert2.min.js'></script>");
	            out.println("<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@11.1.0/dist/sweetalert2.min.css'>");
	            out.println("</head><body>");
	            out.println("<script>");
	            out.println("Swal.fire({"); 
	            out.println("  icon: 'success',");
	            out.println("  title: 'Our Executives will Contact You Soon..!!',");
	            out.println("  showConfirmButton: false,");
	            out.println("  timer: 2000");
	            out.println("})");
	            out.println("</script>"); 
	            out.println("</body></html>");
	            
	            response.setHeader("Refresh", "2; URL=Newusercontactjsp.jsp");
	            
	        } catch (ClassNotFoundException | SQLException e) {
	            e.printStackTrace();
	            response.getWriter().write("<script>alert('Enrollment Failed!');</script>");
	        }
	    }
	}
