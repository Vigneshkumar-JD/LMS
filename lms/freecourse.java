package com.vt.lms;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class freecourse
 */
@WebServlet("/freecourse")
public class freecourse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public freecourse() {
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
		String uname=request.getParameter("name");
		String uemail=request.getParameter("email");
		String uphone=request.getParameter("phone");
		
		
		
		Connection conn=null;
		RequestDispatcher dispatcher=null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/freecourse?useSSL=true","root","saranya@2001");
			
			PreparedStatement pst=conn.prepareStatement("insert into Course(uname,uemail,uphone) values(?,?,?)");
			
			pst.setString(1, uname);
			pst.setString(2, uemail);
			pst.setString(3, uphone);
			
			
			int rowCount=pst.executeUpdate();
			dispatcher=request.getRequestDispatcher("LMS.jsp");
			
			if(rowCount>0) {
 				request.setAttribute("status", "success");
				
			}
			else {
				request.setAttribute("status", "failed"); 
			}
			
			dispatcher.forward(request, response);
			
	
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}finally {
			try {
				conn.close();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}
		
	}
	
		
	

}
