package com.vt.lms;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class enrolledCoursesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<String> courses = new ArrayList<String>();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?useSSL=true\",\"root\",\"saranya@2001");
			PreparedStatement ps = con.prepareStatement("SELECT * FROM enrolled_courses");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				String course = rs.getString("course");
				courses.add(course);
			}
			
			request.setAttribute("courses", courses);
			request.getRequestDispatcher("enrolledcourses.jsp").forward(request, response);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
