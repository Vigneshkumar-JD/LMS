package com.vt.lms;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.io.InputStream; 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Statement;
import java.sql.Types;
import javax.servlet.http.Part;
import java.sql.ResultSet;


/**
 * Servlet implementation class register
 */
@WebServlet("/register")
@MultipartConfig(maxFileSize = 16177215) // 16MB max file size
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register() {
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
        String uname = request.getParameter("name");
        String uemail = request.getParameter("email");
        String upwd = request.getParameter("pass");
        String ucnfrmpwd = request.getParameter("cnfrmpass");

        // Get the uploaded file
        Part filePart = request.getPart("photo");
        InputStream inputStream = null;
        if (filePart != null) {
            // Get the file input stream and file name
            inputStream = filePart.getInputStream();
        }

        Connection conn = null;
        RequestDispatcher dispatcher = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?useSSL=true", "root", "saranya@2001");

            // Check if the email already exists in the database
            PreparedStatement checkEmailStatement = conn.prepareStatement("SELECT COUNT(*) FROM userss WHERE uemail = ?");
            checkEmailStatement.setString(1, uemail);
            boolean emailExists = false;
            try (ResultSet resultSet = checkEmailStatement.executeQuery()) {
                if (resultSet.next()) {
                    int count = resultSet.getInt(1);
                    if (count > 0) {
                        emailExists = true;
                    }
                }
            }

            if (emailExists) {
                // Email already exists, show error message
                dispatcher = request.getRequestDispatcher("log.jsp");
                request.setAttribute("status", "fail");
                request.setAttribute("message", "Email address is already registered");
            } else {
                // Email doesn't exist, insert the new user data into the database
                PreparedStatement insertStatement = conn.prepareStatement("INSERT INTO userss(uname, uemail, upwd, ucnfrmpwd, photo) VALUES (?, ?, ?, ?, ?)");

                insertStatement.setString(1, uname);
                insertStatement.setString(2, uemail);
                insertStatement.setString(3, upwd);
                insertStatement.setString(4, ucnfrmpwd);

                if (inputStream != null) {
                    // Set the photo parameter if the file was uploaded
                    insertStatement.setBlob(5, inputStream);
                } else {
                    // Set the photo parameter to null if no file was uploaded
                    insertStatement.setNull(5, Types.BLOB);
                }

                int rowCount = insertStatement.executeUpdate();
                dispatcher = request.getRequestDispatcher("log.jsp");

                if (rowCount > 0) {
                    request.setAttribute("status", "success");

                } else {
                    request.setAttribute("status", "failed");
                }
            }

            dispatcher.forward(request, response);

        } catch (ClassNotFoundException | SQLException e) {

            e.printStackTrace();
        } finally {
            try {
                conn.close();
            } catch (SQLException e) {

                e.printStackTrace();
            }
        }

    }
}