package com.vt.lms;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.UUID;

/**
 * Servlet implementation class courseenrollment
 */
@WebServlet("/courseenrollment")
public class courseenrollment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public courseenrollment() {
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
		String username=request.getParameter("username");
		String useremail=request.getParameter("useremail");
		String addr=request.getParameter("addr");
		String city=request.getParameter("city");
		String state=request.getParameter("state");
		String course=request.getParameter("course");
		String amount=request.getParameter("amount");
		String coursesimg=request.getParameter("coursesimg");
		UUID uuid = UUID.randomUUID();
		String uniqueID = uuid.toString();
		
		
		Connection conn=null;
	
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?useSSL=true","root","saranya@2001");
			
			PreparedStatement pst=conn.prepareStatement("insert into enrollment_courses(id,username,useremail,addr,city,state,course,amount,coursesimg) values(?,?,?,?,?,?,?,?,?)");
			
			pst.setString(1, uniqueID);
			pst.setString(2, username);
			pst.setString(3, useremail);
			pst.setString(4, addr);
			pst.setString(5, city);
			pst.setString(6, state);
			pst.setString(7, course);
			pst.setString(8, amount);
			pst.setString(9, coursesimg);
			
			int rowCount=pst.executeUpdate();

		
			 if (rowCount > 0) {
				 PrintWriter out = response.getWriter();
				 out.println("<!DOCTYPE html>");
				    out.println("<html>");
				    out.println("<head>");
				    out.println("<title>My Servlet</title>");
				    out.println("<script src=\"https://cdn.jsdelivr.net/npm/sweetalert2@10\"></script>");
				    out.println("<link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Roboto|Varela+Round\">");
				    out.println("</head>");
				    out.println("<style>");
				    out.println(".swal2-title, .swal2-content {");
				    out.println("    font-family: 'Varela Round', sans-serif;");
				    out.println("}");
				    out.println("</style>");
				    out.println("<body>");
				    out.println("<script>");
				    out.println("Swal.fire({");
				    out.println("    title: 'Registered!',");
				    out.println("    text: 'Course Enrolled Successfully',");
				    out.println("    icon: 'success',");
				    out.println("    confirmButtonText: 'OK'");
				    out.println("}).then(() => {");
				    out.println("window.location.href = 'userenrolledcourse.jsp?username=" + username + "&email=" + useremail + "'");
				    out.println("});");
				    out.println("</script>");
				    out.println("</body>");
				    out.println("</html>");
		        } else {
		        	PrintWriter out = response.getWriter();
		        	out.println("<!DOCTYPE html>");
		        	   out.println("<html>");
		        	   out.println("<head>");
		        	   out.println("<title>My Servlet</title>");
		        	   out.println("<script src=\"https://cdn.jsdelivr.net/npm/sweetalert2@10\"></script>");
		        	   out.println("<link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Roboto|Varela+Round\">");
		        	   out.println("</head>");
		        	   out.println("<style>");
		        	   out.println(".swal2-title, .swal2-content {");
		        	   out.println("    font-family: 'Varela Round', sans-serif;");
		        	   out.println("}");
		        	   out.println("</style>");
		        	   out.println("<body>");
		        	   out.println("<script>");
		        	   out.println("Swal.fire({");
		        	   out.println("    title: 'Registered!',");
		        	   out.println("    text: 'Course Registered Successfully',");
		        	   out.println("    icon: 'success',");
		        	   out.println("    confirmButtonText: 'OK'");
		        	   out.println("}).then(() => {");
		        	   out.println("window.location.href = 'NewUserHome.jsp'");

		        	   out.println("});");
		        	   out.println("</script>");
		        	   out.println("</body>");
		        	   out.println("</html>");
		        }
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
