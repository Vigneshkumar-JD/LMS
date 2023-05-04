package com.vt.lms;


  import java.io.IOException; 
  import java.io.InputStream; 
  import java.io.PrintWriter; 
  import java.sql.Connection; 
  import java.sql.DriverManager; 
  import java.sql.PreparedStatement; 
  import java.sql.Statement;
  import javax.servlet.ServletException; 
  import javax.servlet.annotation.MultipartConfig; 
  import javax.servlet.annotation.WebServlet; 
  import javax.servlet.http.HttpServlet;
  import javax.servlet.http.HttpServletRequest; 
  import javax.servlet.http.HttpServletResponse; 
  import javax.servlet.http.Part;
  
  @WebServlet("/AddCourseServlet")
  @MultipartConfig(maxFileSize = 16177215) // 16MB max file size
  public class AddCourseServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
      response.setContentType("text/html");
      PrintWriter out = response.getWriter();
  
  String courseName = request.getParameter("course_name");
  String certificate = request.getParameter("certificate");
  String description =request.getParameter("description"); 
  String instructorName =request.getParameter("instructor_name");
  String uploadDate =request.getParameter("upload_date");
  String coursedescriptionName=request.getParameter("coursedesc_name");
  String coursePrice=request.getParameter("coursePrice");
  String courseDuration=request.getParameter("courseduration");
  String courseLessons=request.getParameter("courselessons");
  String coursecertificationName=request.getParameter("coursecertification_name");
  
  InputStream inputStream = null; // input stream of the upload file
  
  // obtains the upload file part in this multipart request
  Part filePart = request.getPart("course_image");
  if (filePart != null) {
    // obtains input stream of the upload file
    inputStream = filePart.getInputStream();
  }
  
  try { Class.forName("com.mysql.cj.jdbc.Driver"); 
  Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?","root","saranya@2001");
  
  String query ="INSERT INTO newlyaddedcourses (course_name, certificate, course_image, description, instructor_name, upload_date,coursedesc_name,coursePrice,courseduration,courselessons,coursecertification_name) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  
  PreparedStatement stmt = con.prepareStatement(query);
  stmt.setString(1,courseName); 
  stmt.setString(2, certificate); 
  stmt.setBlob(3, inputStream);
  stmt.setString(4, description);
  stmt.setString(5, instructorName);
  stmt.setString(6, uploadDate);
  stmt.setString(7, coursedescriptionName);
  stmt.setString(8, coursePrice);
  stmt.setString(9, courseDuration);
  stmt.setString(10, courseLessons);
  stmt.setString(11, coursecertificationName);
  stmt.executeUpdate();
  
  con.close();
  
  out.println("<html><head>"); 
  out.println("<script src='https://cdn.jsdelivr.net/npm/sweetalert2@11.1.0/dist/sweetalert2.min.js'></script>");
  out.println("<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@11.1.0/dist/sweetalert2.min.css'>");
  out.println("</head><body>");
  out.println("<script>");
  out.println("Swal.fire({"); 
  out.println("  icon: 'success',");
  out.println("  title: 'Course added successfully!',");
  out.println("  showConfirmButton: false,");
  out.println("  timer: 2000");
  out.println("})");
  out.println("</script>"); 
  out.println("</body></html>");
  
  response.setHeader("Refresh", "2; URL=admin.jsp");
  } 
 catch (Exception e) {
          e.printStackTrace();
      }
  }
}


