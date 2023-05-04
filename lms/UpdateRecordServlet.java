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

@WebServlet("/UpdateRecordServlet")
public class UpdateRecordServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name"); 
        String price = request.getParameter("price");
        String dur  = request.getParameter("dur"); 
        String lesson = request.getParameter("lesson");
        
        String jdbcUrl = "jdbc:mysql://localhost:3306/lms";
        String username = "root";
        String password = "saranya@2001";
        String driver = "com.mysql.cj.jdbc.Driver";
        
        try {
            Class.forName(driver);
            Connection conn = DriverManager.getConnection(jdbcUrl, username, password);
            
            PreparedStatement stmt = conn.prepareStatement("UPDATE newlyaddedcourses SET course_name = ?, coursePrice = ?, courseduration = ?, courselessons = ? WHERE course_id = ?");
            stmt.setString(1, name);
            stmt.setString(2, price);
            stmt.setString(3, dur);
            stmt.setString(4, lesson);
            stmt.setInt(5, id);
            
            int numRowsUpdated = stmt.executeUpdate();
            
            stmt.close();
            conn.close();
            
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.print("{\"status\":\"success\",\"message\":\"Course details updated successfully\"}");
        } catch (Exception ex) {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.print("{\"status\":\"error\",\"message\":\"Course details could not be updated\"}");
        }
    }
}