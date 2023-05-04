package com.vt.lms;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 * Servlet implementation class enrollmentpage
 */
@WebServlet("/enrollmentpage")
@MultipartConfig(maxFileSize = 16177215)
public class enrollmentpage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public enrollmentpage() {
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
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String dob=request.getParameter("dob");
		String gender=request.getParameter("gender");
		String uemail=request.getParameter("uemail");
		String uphne=request.getParameter("uphne");
		String uaddress=request.getParameter("uaddress");
		String ucity=request.getParameter("ucity");
		String ustate=request.getParameter("ustate");
		String xboard=request.getParameter("xboard");
		String xper=request.getParameter("xper");
		String xyr=request.getParameter("xyr");
		String xxboard=request.getParameter("xxboard");
		String xxper=request.getParameter("xxper");
		String xxyr=request.getParameter("xxyr");
		String gboard=request.getParameter("gboard");
		String gper=request.getParameter("gper");
		String gyr=request.getParameter("gyr");
		String mboard=request.getParameter("mboard");
		String mper=request.getParameter("mper");
		String myr=request.getParameter("myr");
		String ucourse=request.getParameter("ucourse");
		String reasons=request.getParameter("reasons");
		String udate=request.getParameter("udate");
		String utime=request.getParameter("utime");
		String ucardname=request.getParameter("ucardname");
		String ending=request.getParameter("ending");
		
		
		InputStream inputStream = null; // input stream of the upload file
        
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("resumes");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
         
		
		
		Connection conn=null;
		RequestDispatcher dispatcher=null;
		HttpSession session = request.getSession();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?useSSL=true","root","saranya@2001");
			
			PreparedStatement pst=conn.prepareStatement("insert into enrollmentpages(fname,lname,dob,gender,uemail,uphne,uaddress,ucity,ustate,xboard,xper,xyr,xxboard,xxper,xxyr,gboard,gper,gyr,mboard,mper,myr,ucourse,reasons,udate,utime,ucardname,ending,resumes) "
					+ "										values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
			pst.setString(1, fname);
			pst.setString(2, lname);
			pst.setString(3, dob);
			pst.setString(4, gender);
			pst.setString(5, uemail);
			pst.setString(6, uphne);	
			pst.setString(7, uaddress);
			pst.setString(8, ucity);
			pst.setString(9, ustate);
			pst.setString(10, xboard);
			pst.setString(11, xper);
			pst.setString(12, xyr);
			pst.setString(13, xxboard);
			pst.setString(14, xxper);
			pst.setString(15, xxyr);
			pst.setString(16, gboard);
			pst.setString(17, gper);
			pst.setString(18, gyr);
			pst.setString(19, mboard);
			pst.setString(20, mper);
			pst.setString(21, myr);
			pst.setString(22, ucourse);
			pst.setString(23, reasons);
			pst.setString(24, udate);
			pst.setString(25, utime);
			pst.setString(26, ucardname);
			pst.setString(27, ending);
			 if (inputStream != null) {
	                // fetches input stream of the upload file for the blob column
				 pst.setBlob(28, inputStream);
	            }
			
			int rowCount=pst.executeUpdate();
			
			
			if(rowCount>0) {
 				
 				dispatcher=request.getRequestDispatcher("preview.jsp");
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
