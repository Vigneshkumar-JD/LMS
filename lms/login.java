package com.vt.lms;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
	
/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uemail=request.getParameter("username");
		String upwd=request.getParameter("password");
		Connection conn=null;
		RequestDispatcher dispatcher=null;
		HttpSession session = request.getSession();
		
		if(uemail==null || uemail.equals("")) {
			request.setAttribute("status", "invalid email");
			dispatcher=request.getRequestDispatcher("signin-up.jsp");
			dispatcher.forward(request, response);
			}
		else if(upwd==null || upwd.equals("")) {
			request.setAttribute("status", "invalid Password");
			dispatcher=request.getRequestDispatcher("log.jsp");
			dispatcher.forward(request, response);
			}
		try {
			
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?useSSL=true","root","saranya@2001");
		
		PreparedStatement pst = conn.prepareStatement("select * from userss where uemail=? and upwd=?");
		pst.setString(1, uemail);
		pst.setString(2, upwd);

		ResultSet rs = pst.executeQuery();
		if (rs.next()) {
		    String userEmail = rs.getString("uemail");
		    session.setAttribute("name", rs.getString("uname"));
		    session.setAttribute("email", userEmail);
		    session.setAttribute("fname", rs.getString("first_name"));
		    session.setAttribute("lname", rs.getString("last_name"));
		    session.setAttribute("add", rs.getString("address"));
		    session.setAttribute("city", rs.getString("city"));
		    session.setAttribute("country", rs.getString("country"));
		    session.setAttribute("pcode", rs.getInt("postal_code"));
		    session.setAttribute("abt", rs.getString("about_me"));

		    if (userEmail.equals("admin@vedha.com")) {
		        dispatcher = request.getRequestDispatcher("admin.jsp");
		    } else {
		        dispatcher = request.getRequestDispatcher("NewUserHome.jsp");
		    }
		} else {
		    request.setAttribute("status", "failed");
		    dispatcher = request.getRequestDispatcher("log.jsp");
		}
		dispatcher.forward(request, response);

		}catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
		
		
	}

}