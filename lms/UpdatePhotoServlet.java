package com.vt.lms;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Types;
import java.util.Base64;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 * Servlet implementation class UpdatePhoto
 */
@WebServlet("/updatePhoto")
@MultipartConfig(maxFileSize = 16177215) // 16MB max file size
public class UpdatePhotoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatePhotoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the user's email address from the session
        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("email");

        // Get the uploaded file
        Part filePart = request.getPart("photo");
        InputStream inputStream = null;
        if (filePart != null) {
            // Get the file input stream
            inputStream = filePart.getInputStream();
        }

        Connection conn = null;
        PreparedStatement updateStatement = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?","root","saranya@2001");

            // Check if the user exists in the database
            PreparedStatement checkUserStatement = conn.prepareStatement("SELECT COUNT(*) FROM userss WHERE uemail = ?");
            checkUserStatement.setString(1, email);
            boolean userExists = false;
            try (ResultSet resultSet = checkUserStatement.executeQuery()) {
                if (resultSet.next()) {
                    int count = resultSet.getInt(1);
                    if (count > 0) {
                        userExists = true;
                    }
                }
            }

            if (!userExists) {
                // User doesn't exist, show error message
                request.setAttribute("status", "fail");
                request.setAttribute("message", "User not found");
            } else {
                // User exists, update the profile photo
                if (inputStream != null) {
                    // Set the photo parameter if the file was uploaded
                    updateStatement = conn.prepareStatement("UPDATE userss SET photo = ? WHERE uemail = ?");
                    updateStatement.setBlob(1, inputStream);
                    updateStatement.setString(2, email);
                } else {
                    // Set the photo parameter to null if no file was uploaded
                    updateStatement = conn.prepareStatement("UPDATE userss SET photo = NULL WHERE uemail = ?");
                    updateStatement.setString(1, email);
                }

                int rowCount = updateStatement.executeUpdate();

                if (rowCount > 0) {
                    request.setAttribute("status", "success");
                } else {
                    request.setAttribute("status", "fail");
                    request.setAttribute("message", "Failed to update profile photo");
                }
            }

            // Display the updated profile photo
            String photo = "";
            Statement stmt = null;
            try {
                stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT photo FROM userss WHERE uemail = '" + email + "'");
                if (rs.next()) {
                    Blob blob = rs.getBlob("photo");
                    if (blob != null) {
                        // Convert the photo blob to base64 string
                        byte[] photoBytes = blob.getBytes(1L, (int) blob.length());
                        photo = Base64.getEncoder().encodeToString(photoBytes);
                    }
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                if (stmt != null) {
                    try {
                        stmt.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            }

            // Set the photo attribute and forward the request to the profile page
            request.setAttribute("photo", photo);
            request.getRequestDispatcher("userprofile.jsp").forward(request, response);

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (updateStatement != null) {
                try {
                    updateStatement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
