package com.vt.lms;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;

@WebServlet("/UpdateProfileServlet")
public class UpdateProfileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // get input parameters from the form
        String username = request.getParameter("uname");
        String uemail = request.getParameter("uemail");
        String firstname = request.getParameter("first_name");
        String lastname = request.getParameter("last_name");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String country = request.getParameter("country");
        String postalcode = request.getParameter("postal_code");
        String aboutme = request.getParameter("about_me");

      
        Connection con = null;
        PreparedStatement stmt = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?","root","saranya@2001");
            stmt = con.prepareStatement("UPDATE userss SET uname=?, first_name=?, last_name=?, address=?, city=?, country=?, postal_code=?, about_me=? WHERE uemail=?");
            stmt.setString(1, username);
            stmt.setString(2, firstname);
            stmt.setString(3, lastname);
            stmt.setString(4, address);
            stmt.setString(5, city);
            stmt.setString(6, country);
            stmt.setString(7, postalcode);
            stmt.setString(8, aboutme);
            stmt.setString(9, uemail);

            int rowsUpdated = stmt.executeUpdate();
            stmt.close();
            con.close();
            
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.print("{\"status\":\"success\",\"message\":\"User details updated successfully\"}");
        

          
          
        } catch (Exception e) {
        	  response.setContentType("text/html");
        	  PrintWriter out = response.getWriter();
              out.print("{\"status\":\"error\",\"message\":\"User details could not be updated\"}");
            
            
        } 
    }
}
