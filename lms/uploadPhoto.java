package com.vt.lms;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/uploadPhoto")
@MultipartConfig(maxFileSize = 1048576) // 1MB limit for file size
public class uploadPhoto extends HttpServlet {

    private static final long serialVersionUID = 1L;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userId = request.getParameter("userId");
        
        Part filePart = request.getPart("profilePhoto");
        String fileName = filePart.getSubmittedFileName();
        InputStream fileContent = filePart.getInputStream();
        
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?","root","saranya@2001")) {
            String sql = "INSERT INTO user_photo (user_id, file_name, file_content) VALUES (?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, userId);
            stmt.setString(2, fileName);
            stmt.setBlob(3, fileContent);
            stmt.executeUpdate();
        } catch (SQLException e) {
            // Handle any errors that may occur during the SQL statement execution
            e.printStackTrace();
        }
        
        response.sendRedirect("userprofile.jsp?userId=" + userId);
    }

}
