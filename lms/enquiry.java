package com.vt.lms;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class enquiry
 */
@WebServlet("/enquiry")
public class enquiry extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public enquiry() {
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
		
		 PrintWriter out = response.getWriter();
		 
		 
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String uemail=request.getParameter("uemail");
		String uphne=request.getParameter("uphne");
		String enquiry=request.getParameter("enquiry");
		
		
		Connection conn=null;
		RequestDispatcher dispatcher=null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?useSSL=true","root","saranya@2001");
			
			PreparedStatement pst=conn.prepareStatement("insert into enquiry(fname,lname,uemail,uphne,enquiry) values(?,?,?,?,?)");
			
			pst.setString(1, fname);
			pst.setString(2, lname);
			pst.setString(3, uemail);
			pst.setString(4, uphne);
			pst.setString(5, enquiry);
			
			int rowCount=pst.executeUpdate();
			
			conn.close();
			
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
	            
	            response.setHeader("Refresh", "2; URL=Newuserservices.jsp");
			
	
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