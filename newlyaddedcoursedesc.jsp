<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet">
 <link rel="stylesheet" href="assets/vendors/bootstrap/bootstrap.css">
   <!-- Main jQuery -->
   <link rel="stylesheet" href="css/democourse.css">
    <script src="assets/vendors/jquery/jquery.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/latest/TweenMax.min.js"></script>
<script type="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- Bootstrap 4.5 -->
    <script src="assets/vendors/bootstrap/bootstrap.js"></script>
    <script src="https://kit.fontawesome.com/1ff71a7bde.js" crossorigin="anonymous"></script>
    
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <!-- SweetAlert2 -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.all.min.js"></script>
    
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
</head>

<body>

<main class="main">
  <!-- Header -->
<%@ include file="homenav.jsp" %>
  </main>
 <!--  ---------------------------- -->
 <%@ page import="java.util.Base64" %>
  <%
            // Get course name from request parameter
            String courseNames = request.getParameter("courseName");
  
  String courseName = null;

            // Connect to database
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?","root","saranya@2001");

            // Execute query to get course details
            String query = "SELECT * FROM newlyaddedcourses WHERE course_id=?";
            PreparedStatement stmt = con.prepareStatement(query);
            stmt.setString(1, courseNames);
            
            ResultSet rs = stmt.executeQuery();

           
            
            // Display course details
            if (rs.next()) {
                String courseImage = "";
                Blob imageBlob = rs.getBlob("course_image");
                if (imageBlob != null) {
                    byte[] imageBytes = imageBlob.getBytes(1, (int) imageBlob.length());
                    courseImage = Base64.getEncoder().encodeToString(imageBytes);
                }
                courseName = rs.getString("course_name");
                String coursedescriptionName = rs.getString("coursedesc_name");
                double coursePrice = rs.getDouble("coursePrice");
                int courseDuration = rs.getInt("courseduration");
                int courseLessons = rs.getInt("courselessons");
                String coursecertificationName = rs.getString("coursecertification_name");
             

        %>
        
    <section class="page-wrapper edutim-course-single" style="margin-top: 5%">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">

                    <div class="course-single-header">
                       

                        <h3 class="single-course-title"><%= courseName %> Beginner's Course</h3>
            <p>Vedha's <%= courseName %> Certification is curated by industry professionals as per the industry requirements and demands. This Devops Training will help you prepare for the DevOps Certified Solutions Architect - Associate exam SAA-C03. With Vedha's live instructor-led sessions, you will be able to effectively architect, monitor, and deploy secure and robust applications using Full Stack Java Developer. </p>    
                  
                   <div class="rating">
                            <a href="#"><i class="fa fa-star"></i></a>
                            <a href="#"><i class="fa fa-star"></i></a>
                            <a href="#"><i class="fa fa-star"></i></a>
                            <a href="#"><i class="fa fa-star"></i></a>
                            <a href="#"><i class="fa fa-star"></i></a>
                            <span>(5.00)</span>
                        </div>
                    </div>


                    <div class="course-single-thumb mb-5">
                        <img src="data:image/png;base64,<%= courseImage %>" alt="<%= courseName %>" class="img-fluid w-100">

                    </div>

                    <nav class="course-single-tabs">
                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                            <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true" style="color: #0b0742">Overview</a>
                            <a class="nav-item nav-link" id="nav-topics-tab" data-toggle="tab" href="#nav-topics" role="tab" aria-controls="nav-profile" aria-selected="false" style="color: #0b0742">Topics</a>
                            <a class="nav-item nav-link" id="nav-instructor-tab" data-toggle="tab" href="#nav-instructor" role="tab" aria-controls="nav-contact" aria-selected="false" style="color: #0b0742">Instructor</a>
                            <a class="nav-item nav-link" id="nav-feedback-tab" data-toggle="tab" href="#nav-feedback" role="tab" aria-controls="nav-contact" aria-selected="false" style="color: #0b0742">Feedback</a>
                        </div>
                    </nav>
                    <div class="tab-content" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                            <div class="single-course-details ">
                                <h4 class="course-title" style="margin-top: 5%;">Description</h4>
                                <p><%= courseName %> is a dream for many aspiring coders. With an enviable list of skills, highly paid jobs, they are masters of web development. The full stack developers are in high demand, and if you are one of those who are looking for a career as a full stack developer then NOW is the time. <br><br>There are full stack developers, and there are those who seem to specialise in a set of tools based on programming languages.
           They are titled so as required for their jobs. One such specialist is the java full stack web developer. So take up a full stack developer online course today and get going towards a bright future!</p>
     </p>


                                <div class="course-widget course-info">
                                    <h4 class="course-title">What You will Learn?</h4>
                                    <ul>
                                        <li>
                                            <i class="fa fa-check" style="color: #39FF14"></i> 8X higher engagement in live online classes by industry experts
                                        </li>
                                        <li>
                                            <i class="fa fa-check" style="color: #39FF14"></i> Learn 30+ cutting edge tools like SQL, Java, etc.
                                        </li>
                                        <li>
                                            <i class="fa fa-check" style="color: #39FF14"></i> Sandboxed cloud labs for real-time application development
                                        </li>
                                        <li>
                                            <i class="fa fa-check" style="color: #39FF14"></i> Build real-world applications like Amazon, Walmart etc.
                                        </li>
                                        <li>
                                            <i class="fa fa-check" style="color: #39FF14"></i> Downloadable resources
                                        </li>
                                        <li>
                                            <i class="fa fa-check" style="color: #39FF14"></i> Learn 30+ cutting edge tools like SQL, Java, etc.
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="nav-topics" role="tabpanel" aria-labelledby="nav-topics-tab">
                            <!--  Course Topics -->
                            <div class="edutim-single-course-segment  edutim-course-topics-wrap">
                                <div class="edutim-course-topics-header d-lg-flex justify-content-between">
                                    <div class="edutim-course-topics-header-left">
                                        <h4 class="course-title">Topics for this course</h4>
                                    </div>
                                    <div class="edutim-course-topics-header-right">
                                        <span> Total learning: <strong>11 Lessons</strong></span>
                                        <span> Time: <strong>13h 20m 20s</strong> </span>
                                    </div>
                                </div>

                                <div class="edutim-course-topics-contents">
                                    <div class="edutim-course-topic ">
                                        <div class="accordion" id="accordionExample">
                                            <div class="card">
                                                <div class="card-header" id="headingOne">
                                                    <h2 class="mb-0">
                                                        <button class="btn-block text-left curriculmn-title-btn" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        <h4 class="curriculmn-title">Before Getting Started</h4>
                      </button>
                                                    </h2>
                                                </div>

                                                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                                                    <div class="course-lessons">
                                                        <div class="single-course-lesson">
                                                            <div class="course-topic-lesson">
                                                                <i class="fab fa-youtube"></i>
                                                                <span> Work with Smart Objects</span>
                                                            </div>
                                                            <div class="course-lesson-duration">
                                                                00:05:20
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="card">
                                                <div class="card-header" id="headingTwo">
                                                    <h2 class="mb-0">
                                                        <button class="btn-block text-left collapsed curriculmn-title-btn" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                       <h4 class="curriculmn-title">Introduction to Python</h4>
                      </button>
                                                    </h2>
                                                </div>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                                                    <div class="course-lessons">
                                                        <div class="single-course-lesson">
                                                            <div class="course-topic-lesson">
                                                                <i class="fab fa-youtube"></i>
                                                                <span>Use Photoshop’s Interface Efficiently</span>
                                                            </div>
                                                            <div class="course-lesson-duration">
                                                                00:05:20
                                                            </div>
                                                        </div>
                                                        <div class="single-course-lesson">
                                                            <div class="course-topic-lesson">
                                                                <i class="fab fa-youtube"></i>
                                                                <span>Use the Eye Dropper & Swatches</span>
                                                            </div>
                                                            <div class="course-lesson-duration">
                                                                00:05:20
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="card">
                                                <div class="card-header" id="headingThree">
                                                    <h2 class="mb-0">
                                                        <button class="btn-block text-left collapsed curriculmn-title-btn" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                       <h4 class="curriculmn-title">First Python application</h4>
                      </button>
                                                    </h2>
                                                </div>

                                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                                                    <div class="course-lessons">
                                                        <div class="single-course-lesson">
                                                            <div class="course-topic-lesson">
                                                                <i class="fab fa-youtube"></i>
                                                                <span>Smart Objects Explained</span>
                                                            </div>
                                                            <div class="course-lesson-duration">
                                                                00:05:20
                                                            </div>
                                                        </div>
                                                        <div class="single-course-lesson">
                                                            <div class="course-topic-lesson">
                                                                <i class="fab fa-youtube"></i>
                                                                <span>Filters with Smart Objects</span>
                                                            </div>
                                                            <div class="course-lesson-duration">
                                                                00:05:20
                                                            </div>
                                                        </div>

                                                        <div class="single-course-lesson">
                                                            <div class="course-topic-lesson">
                                                                <i class="fab fa-youtube"></i>
                                                                <span>Clean Up Face Imperfections</span>
                                                            </div>
                                                            <div class="course-lesson-duration">
                                                                00:05:20
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                
                                            </div>
                                            
                                               <div class="card">
                                                <div class="card-header" id="headingFour">
                                                    <h2 class="mb-0">
                                                        <button class="btn-block text-left collapsed curriculmn-title-btn" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                       <h4 class="curriculmn-title">Templates in Python</h4>
                      </button>
                                                    </h2>
                                                </div>

                                                <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
                                                    <div class="course-lessons">
                                                        <div class="single-course-lesson">
                                                            <div class="course-topic-lesson">
                                                                <i class="fab fa-youtube"></i>
                                                                <span>Smart Objects Explained</span>
                                                            </div>
                                                            <div class="course-lesson-duration">
                                                                00:05:20
                                                            </div>
                                                        </div>
                                                        <div class="single-course-lesson">
                                                            <div class="course-topic-lesson">
                                                                <i class="fab fa-youtube"></i>
                                                                <span>Filters with Smart Objects</span>
                                                            </div>
                                                            <div class="course-lesson-duration">
                                                                00:05:20
                                                            </div>
                                                        </div>

                                                        <div class="single-course-lesson">
                                                            <div class="course-topic-lesson">
                                                                <i class="fab fa-youtube"></i>
                                                                <span>Clean Up Face Imperfections</span>
                                                            </div>
                                                            <div class="course-lesson-duration">
                                                                00:05:20
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                
                                            </div>
                                            
                                                                    <div class="card">
                                                <div class="card-header" id="headingFive">
                                                    <h2 class="mb-0">
                                                        <button class="btn-block text-left collapsed curriculmn-title-btn" type="button" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                       <h4 class="curriculmn-title">Static Files in Python</h4>
                      </button>
                                                    </h2>
                                                </div>

                                                <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordionExample">
                                                    <div class="course-lessons">
                                                        <div class="single-course-lesson">
                                                            <div class="course-topic-lesson">
                                                                <i class="fab fa-youtube"></i>
                                                                <span>Smart Objects Explained</span>
                                                            </div>
                                                            <div class="course-lesson-duration">
                                                                00:05:20
                                                            </div>
                                                        </div>
                                                        <div class="single-course-lesson">
                                                            <div class="course-topic-lesson">
                                                                <i class="fab fa-youtube"></i>
                                                                <span>Filters with Smart Objects</span>
                                                            </div>
                                                            <div class="course-lesson-duration">
                                                                00:05:20
                                                            </div>
                                                        </div>

                                                        <div class="single-course-lesson">
                                                            <div class="course-topic-lesson">
                                                                <i class="fab fa-youtube"></i>
                                                                <span>Clean Up Face Imperfections</span>
                                                            </div>
                                                            <div class="course-lesson-duration">
                                                                00:05:20
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                
                                            </div>
                                            
                                                                    <div class="card">
                                                <div class="card-header" id="headingSix">
                                                    <h2 class="mb-0">
                                                        <button class="btn-block text-left collapsed curriculmn-title-btn" type="button" data-toggle="collapse" data-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                       <h4 class="curriculmn-title"> Mini-Project</h4>
                      </button>
                                                    </h2>
                                                </div>

                                                <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordionExample">
                                                    <div class="course-lessons">
                                                        <div class="single-course-lesson">
                                                            <div class="course-topic-lesson">
                                                                <i class="fab fa-youtube"></i>
                                                                <span>Smart Objects Explained</span>
                                                            </div>
                                                            <div class="course-lesson-duration">
                                                                00:05:20
                                                            </div>
                                                        </div>
                                                     
                                                    </div>
                                                </div>
                                                
                                                
                                            </div>
                                            
                                                                    <div class="card">
                                                <div class="card-header" id="headingSeven">
                                                    <h2 class="mb-0">
                                                        <button class="btn-block text-left collapsed curriculmn-title-btn" type="button" data-toggle="collapse" data-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
                       <h4 class="curriculmn-title">Project Solution</h4>
                      </button>
                                                    </h2>
                                                </div>

                                                <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordionExample">
                                                    <div class="course-lessons">
                                                        <div class="single-course-lesson">
                                                            <div class="course-topic-lesson">
                                                                <i class="fab fa-youtube"></i>
                                                                <span>Smart Objects Explained</span>
                                                            </div>
                                                            <div class="course-lesson-duration">
                                                                00:05:20
                                                            </div>
                                                        </div>
                                                        <div class="single-course-lesson">
                                                            <div class="course-topic-lesson">
                                                                <i class="fab fa-youtube"></i>
                                                                <span>Filters with Smart Objects</span>
                                                            </div>
                                                            <div class="course-lesson-duration">
                                                                00:05:20
                                                            </div>
                                                        </div>

                                                        <div class="single-course-lesson">
                                                            <div class="course-topic-lesson">
                                                                <i class="fab fa-youtube"></i>
                                                                <span>Clean Up Face Imperfections</span>
                                                            </div>
                                                            <div class="course-lesson-duration">
                                                                00:05:20
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                
                                            </div>
                                            
                                                                    <div class="card">
                                                <div class="card-header" id="headingEight">
                                                    <h2 class="mb-0">
                                                        <button class="btn-block text-left collapsed curriculmn-title-btn" type="button" data-toggle="collapse" data-target="#collapseEight" aria-expanded="false" aria-controls="collapseEight">
                       <h4 class="curriculmn-title">Python Models</h4>
                      </button>
                                                    </h2>
                                                </div>

                                                <div id="collapseEight" class="collapse" aria-labelledby="headingEigth" data-parent="#accordionExample">
                                                    <div class="course-lessons">
                                                        <div class="single-course-lesson">
                                                            <div class="course-topic-lesson">
                                                                <i class="fab fa-youtube"></i>
                                                                <span>Smart Objects Explained</span>
                                                            </div>
                                                            <div class="course-lesson-duration">
                                                                00:05:20
                                                            </div>
                                                        </div>
                                                        <div class="single-course-lesson">
                                                            <div class="course-topic-lesson">
                                                                <i class="fab fa-youtube"></i>
                                                                <span>Filters with Smart Objects</span>
                                                            </div>
                                                            <div class="course-lesson-duration">
                                                                00:05:20
                                                            </div>
                                                        </div>

                                                        <div class="single-course-lesson">
                                                            <div class="course-topic-lesson">
                                                                <i class="fab fa-youtube"></i>
                                                                <span>Clean Up Face Imperfections</span>
                                                            </div>
                                                            <div class="course-lesson-duration">
                                                                00:05:20
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                
                                            </div>
                                            
                                                                    <div class="card">
                                                <div class="card-header" id="headingNine">
                                                    <h2 class="mb-0">
                                                        <button class="btn-block text-left collapsed curriculmn-title-btn" type="button" data-toggle="collapse" data-target="#collapseNine" aria-expanded="false" aria-controls="collapseNine">
                       <h4 class="curriculmn-title">Python Forms</h4>
                      </button>
                                                    </h2>
                                                </div>

                                                <div id="collapseNine" class="collapse" aria-labelledby="headingNine" data-parent="#accordionExample">
                                                    <div class="course-lessons">
                                                        <div class="single-course-lesson">
                                                            <div class="course-topic-lesson">
                                                                <i class="fab fa-youtube"></i>
                                                                <span>Smart Objects Explained</span>
                                                            </div>
                                                            <div class="course-lesson-duration">
                                                                00:05:20
                                                            </div>
                                                        </div>
                                                        <div class="single-course-lesson">
                                                            <div class="course-topic-lesson">
                                                                <i class="fab fa-youtube"></i>
                                                                <span>Filters with Smart Objects</span>
                                                            </div>
                                                            <div class="course-lesson-duration">
                                                                00:05:20
                                                            </div>
                                                        </div>

                                                        <div class="single-course-lesson">
                                                            <div class="course-topic-lesson">
                                                                <i class="fab fa-youtube"></i>
                                                                <span>Clean Up Face Imperfections</span>
                                                            </div>
                                                            <div class="course-lesson-duration">
                                                                00:05:20
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                
                                            </div>
                                            
                                                                    <div class="card">
                                                <div class="card-header" id="headingTen">
                                                    <h2 class="mb-0">
                                                        <button class="btn-block text-left collapsed curriculmn-title-btn" type="button" data-toggle="collapse" data-target="#collapseTen" aria-expanded="false" aria-controls="collapseTen">
                       <h4 class="curriculmn-title">Operations on Models</h4>
                      </button>
                                                    </h2>
                                                </div>

                                                <div id="collapseTen" class="collapse" aria-labelledby="headingTen" data-parent="#accordionExample">
                                                    <div class="course-lessons">
                                                        <div class="single-course-lesson">
                                                            <div class="course-topic-lesson">
                                                                <i class="fab fa-youtube"></i>
                                                                <span>Smart Objects Explained</span>
                                                            </div>
                                                            <div class="course-lesson-duration">
                                                                00:05:20
                                                            </div>
                                                        </div>
                                                        <div class="single-course-lesson">
                                                            <div class="course-topic-lesson">
                                                                <i class="fab fa-youtube"></i>
                                                                <span>Filters with Smart Objects</span>
                                                            </div>
                                                            <div class="course-lesson-duration">
                                                                00:05:20
                                                            </div>
                                                        </div>

                                                        <div class="single-course-lesson">
                                                            <div class="course-topic-lesson">
                                                                <i class="fab fa-youtube"></i>
                                                                <span>Clean Up Face Imperfections</span>
                                                            </div>
                                                            <div class="course-lesson-duration">
                                                                00:05:20
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                
                                            </div>
                                            
                                                                    <div class="card">
                                                <div class="card-header" id="headingele">
                                                    <h2 class="mb-0">
                                                        <button class="btn-block text-left collapsed curriculmn-title-btn" type="button" data-toggle="collapse" data-target="#collapseele" aria-expanded="false" aria-controls="collapseele">
                       <h4 class="curriculmn-title">Conclusion</h4>
                      </button>
                                                    </h2>
                                                </div>

                                                <div id="collapseele" class="collapse" aria-labelledby="headingele" data-parent="#accordionExample">
                                                    <div class="course-lessons">
                                                        <div class="single-course-lesson">
                                                            <div class="course-topic-lesson">
                                                                <i class="fab fa-youtube"></i>
                                                                <span>Smart Objects Explained</span>
                                                            </div>
                                                            <div class="course-lesson-duration">
                                                                00:05:20
                                                            </div>
                                                        </div>
                                                        
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                      
                        
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--  COurse Topics End -->

                        </div>
                        <div class="tab-pane fade" id="nav-instructor" role="tabpanel" aria-labelledby="nav-instructor-tab">
                            <div class="course-widget course-info">
                                <h4 class="course-title" style="margin-top: 5%">About the instructors</h4>
                                <div class="instructor-profile">
                                    <div class="profile-img">
                                        <img src="images/viki.png" alt="" class="img-fluid" style="width: 5%">
                                    </div>
                                    <div class="profile-info">
                                        <h5>Vignesh Kumar</h5>
                                        <div class="rating">
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star"></i></a>
                                            <a href="#"><i class="fa fa-star-half"></i></a>
                                            <span>3.79 ratings (29 )</span>
                                        </div>
                                        <p>I'm a developer with a passion for teaching. I'm the lead instructor at the London App Brewery, London's leading Programming Bootcamp. I've helped hundreds of thousands of students learn to code and change their
                                            lives by becoming a developer </p>
                                        <div class="instructor-courses">
                                            <span><i class="bi bi-folder"></i>4 Courses</span>
                                            <span><i class="bi bi-group"></i>400 Students</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="nav-feedback" role="tabpanel" aria-labelledby="nav-feedback-tab">
                            <div class="course-widget course-info">
                                <h4 class="course-title" style="margin-top: 5%">Students Feedback</h4>

                                <div class="course-review-wrapper">
                                    <div class="course-review">
                                        <div class="profile-img">
                                            <img src="assets/images/blog/author.jpg" alt="" class="img-fluid">
                                        </div>
                                        <div class="review-text">
                                            <h5>Mehedi Rasedh <span>26th june 2020</span></h5>

                                            <div class="rating">
                                                <a href="#"><i class="fa fa-star"></i></a>
                                                <a href="#"><i class="fa fa-star"></i></a>
                                                <a href="#"><i class="fa fa-star"></i></a>
                                                <a href="#"><i class="fa fa-star"></i></a>
                                                <a href="#"><i class="fa fa-star-half"></i></a>
                                            </div>
                                            <p>Great course. Well structured, paced and I feel far more confident using this software now then I did back in school when I was learning. And the guy doing the voice over really is great at what he does</p>
                                        </div>
                                    </div>


                                    <div class="course-review">
                                        <div class="profile-img">
                                            <img src="assets/images/blog/author.jpg" alt="" class="img-fluid">
                                        </div>
                                        <div class="review-text">
                                            <h5>Rasedh raj <span>1 Year Ago</span></h5>
                                            <div class="rating">
                                                <a href="#"><i class="fa fa-star"></i></a>
                                                <a href="#"><i class="fa fa-star"></i></a>
                                                <a href="#"><i class="fa fa-star"></i></a>
                                                <a href="#"><i class="fa fa-star"></i></a>
                                                <a href="#"><i class="fa fa-star-half"></i></a>
                                            </div>
                                            <p>Very deep course for a beginner, enjoyed everything from the very start and every detail is vastly investigated and discussed. A nice choice for those, who are enrolling Python. </p>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="course-sidebar">

                        <div class="course-widget single-info">
                            <i class="bi bi-group"></i> Enrolled <span>101 Students</span>
                        </div>

                        <div class="course-single-thumb">
                            <div class="course-price-wrapper">
                                <div class="course-price ml-3">
                                    <h4>Price: <span>&#x20B9 <%= coursePrice %></span></h4>
                                </div>
                                <div class="buy-btn"><a href="log.jsp" class="btn btn-main btn-block">Enroll This Course</a></div>
                            </div>
                        </div>
                       

                        <div class="course-widget course-details-info">
                            <h4 class="course-title">This Course Includes</h4>
                            <ul style="list-style: none;align-item: center;">
                                <li >
                                    <div class="d-flex justify-content-between align-items-center">
                                        <span><i class="fa-solid fa-video" style="color: #83799c"></i>Duration : </span> <%= courseDuration %> hours Videos
                                    </div>
                                </li>
                                <li>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <span><i class="fa fa-user" aria-hidden="true" style="color: #83799c"></i>Instructor :</span>
                                        <a href="#" class="d-inline-block" >Vignesh Kumar</a>
                                    </div>
                                </li>

                                <li>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <span><i class="fa-solid fa-universal-access" style="color: #83799c"></i>Life-time Access :</span> Yes
                                    </div>
                                </li>
                                <li>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <span><i class="fa-solid fa-paperclip" style="color: #83799c"></i>Lessons :</span> <%= courseLessons %>
                                    </div>
                                </li>
                                <li>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <span><i class="fa-regular fa-mobile" style="color: #83799c"></i>Access on Mobile & Tv :</span> Yes
                                    </div>
                                </li>

                                <li>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <span><i class="fa-solid fa-certificate" style="color: #83799c"></i>Certificate :</span> yes
                                    </div>
                                </li>

                            </ul>
                        </div>


                        <div class="course-widget course-share d-flex justify-content-between align-items-center">
                            <span>Share</span>
                            <ul class="social-share list-inline">
                                <li class="list-inline-item"><a href="#"><i class="fab fa-facebook"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="fab fa-twitter"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="fab fa-linkedin"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="fab fa-pinterest"></i></a></li>
                            </ul>
                        </div>

                        <div class="course-widget course-metarials">
                            <h4 class="course-title">Requirements</h4>
                            <ul style="list-style: none">
                                <li>
                                    <i class="fa fa-check" style="color: #39FF14"></i> No previous knowledge of coding required.
                                </li>
                                <li>
                                    <i class="fa fa-check" style="color: #39FF14"></i> If you have IDE's installed, that's great.
                                </li>
                                <li>
                                    <i class="fa fa-check" style="color: #39FF14"></i> If not, I'll teach you how to get it on your computer.
                                </li>

                            </ul>
                        </div>

                        <div class="course-widget">
                            <h4 class="course-title">Tags</h4>
                            <div class="single-course-tags">
                                <a href="#">Web Deisgn</a>
                                <a href="#">Development</a>
                                <a href="#">Html</a>
                                <a href="#">css</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<!-- ------------------------------------------------ -->
   
   
<section id="slipper" style="margin-top: 10%;" >
  <h1 class="headings">Related Courses</h1>

    <div class="slip owl-carousel">
      <%@ page import="java.util.Base64" %>
<%
String course_Name = null;
		// connect to database
		Class.forName("com.mysql.cj.jdbc.Driver");
		 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?","root","saranya@2001");

		// execute query to get new courses
		 query = "SELECT * FROM newlyaddedcourses ORDER BY upload_date DESC LIMIT 10";
		 stmt = con.prepareStatement(query);
		 rs = stmt.executeQuery();

		// display new courses
		while (rs.next()) {
			 course_Name = rs.getString("course_name");
			 String courseId = rs.getString("course_id");
			String certificate = rs.getString("certificate");
			String description = rs.getString("description");
			String instructorName = rs.getString("instructor_name");
			String uploadDate = rs.getString("upload_date");
			 imageBlob = rs.getBlob("course_image");
			byte[] imageBytes = imageBlob.getBytes(1, (int) imageBlob.length());
			String imageBase64 = Base64.getEncoder().encodeToString(imageBytes);
	%>
      <div class="contain">
        <div class="boxy">
         <div class="image">
           <img src="data:image/png;base64,<%= imageBase64 %>" alt="<%= course_Name %>">         </div>
         <div class="contenty">
            <h3><%= course_Name %></h3>
<p><%= description %></p>
 <button name="courseName" value="<%= course_Name %>" onclick="location.href='newlyaddedcoursedesc.jsp?courseName=<%= courseId %>'" class="btn">See More</button>
            <div class="icons">
               <span> <i class="fas fa-calendar"></i> <%= uploadDate %> </span>
        <span> <i class="fas fa-user"></i> <%= instructorName %> </span>
            </div>
         </div>
      </div>
      </div>
     	<%
		}

		// close database connection
		rs.close();
		stmt.close();
		con.close();
	%>
     
          </div>

 </section>
   <script>
      $(".slip").owlCarousel({
        loop: true,
        autoplay: true,
        autoplayTimeout: 2000, //2000ms = 2s;
        autoplayHoverPause: true,
      });
   </script>
   
  <!--  --------------------- -->
    <section id="batch" class="appointment-section" style="width:80%;margin-left: 8%;">
      <div class="containerst">
          <div class="sec-title">
              <div class="title" style="color: #0b0742;">Do You Want to Fix a slot</div>
                <h2>Slot Booking</h2>
            </div>
            <div class="row clearfix">
            
              <!--Form Column-->
              <div class="form-column col-md-8 col-sm-12 col-xs-12">
                  <div class="inner-column">
                      
                        <!-- Default Form -->
                        <div class="default-form">
                                
                            <!--Contact Form-->
                            <form method="post" action="contact.html">
                                <div class="row clearfix">
                                
                                    <div class="column col-md-6 col-sm-6 col-xs-12">
                                        
                                        <div class="form-group">
                                            <input type="text" name="username" placeholder="Name" required>
                                        </div>
                                        
                                        <!--Form Group-->
                                        <div class="form-group">
                                            <select class="custom-select-box">
                                                <option>Preferred Classroom</option>
                                                <option>Online</option>
                                                <option>Offline</option>
                                               
                                            </select>
                                        </div>
                                        
                                        <div class="form-group">
                                            <input type="text" class="datepicker" name="text" placeholder="Schedule Date" required>
                                            <i class="far fa-calendar-alt"></i>
                                        </div>
                                        
                                    </div>
                                    
                                    <div class="column col-md-6 col-sm-6 col-xs-12">
                                        
                                        <div class="form-group">
                                            <input type="email" name="email" placeholder="Email" required>
                                        </div>
                                        
                                        <div class="form-group">
                                            <input type="text" name="phone" placeholder="Phone" required>
                                        </div>
                                        
                                        <div class="form-group">
                                            <input class="timepicker" type="text" name="schedule" placeholder="Schedule Time">
                                            <i class="far fa-clock"></i>
                                        </div>
                                        
                                    </div>
                                
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 form-group">
                                        <button class="theme-btn appointment-btn" type="submit" name="submit-form">Fix An Slot</button>
                                    </div>
                                    
                                </div>
                            </form>
                                
                        </div>
                        <!--End Default Form -->
                        
                    </div>
                </div>
                
                <!--Form Column-->
              <div class="schedule-column col-md-4 col-sm-12 col-xs-12">
                  <div class="inner-outer">
                        <div class="inner-column">
                            <h2>Business Hours:</h2>
                            <ul class="time-list">
                                <li>Monday - Friday 9.00 AM - 5.00 PM</li>
                                <li>Saturday 9.00 AM - 3.00 PM</li>
                                <li><strong>Sunday Closed</strong></li>
                                <li class="closed">* Every 2nd, 4th Staurday and all govt holidays are closed.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </section>
    <!-- ------------------------- -->
   <div id="pyt" class="train">
<h1><center><%=courseName%> Certification Training Benefits</center></h1>
<p><center>According to Statista, 48 percent of developers worldwide use Angular JS, making it one of the most popular programming languages worldwide. <br>Learning Python will give you access to a variety of web development, data science, and machine learning opportunities. This training program <br>offered by Edureka will enable you to master Python programming and help you to kickstart your career in this domain.</center></p>
</div>


<div class="ag-benefits-block">
    <div class="ag-format-container">
      <div class="ag-benefits_box benefits-inner-wrapper wrapper-padding">
        <div class="benefits-radio">
          <input id="gears" class="ag-benefits_radio ag-benefits_radio-gears" name="benefits-radio-buttons" type="radio" />
          <input id="clock" class="ag-benefits_radio ag-benefits_radio-clock" name="benefits-radio-buttons" type="radio" checked="" />
          <input id="cost" class="ag-benefits_radio ag-benefits_radio-cost" name="benefits-radio-buttons" type="radio" />
          <ul class="ag-benefits-tab_list">
            <li class="ag-benefits-tab_item">
              <label for="gears" class="ag-benefits-tab_label icon-label">
                <img src="https://www.meazurelearning.com/wp-content/uploads/2022/02/MZ-hero_Culture-Careers.png" class="ag-benefits_img ag-benefits_img__gears" alt="Экономия затрат" />
              </label>
              <h3 class="ag-benefits_title ag-benefits_title__gears" >
                High Paid Jobs
              </h3>
              <p class="ag-benefits_text ag-benefits_text__gears">
                Within a short span of time, we assure you you will reach all the heights by joining this courses.Vedha E-learning helps you to explore more job oppurtunities and instant growth of your career.
              </p>
            </li>
            <li class="ag-benefits-tab_item">
              <label for="clock" class="ag-benefits-tab_label icon-label">
                <img src="https://www.qbd.co.uk/wp-content/uploads/2020/09/Mask-Group-6.png" class="ag-benefits_img ag-benefits_img__clock" alt="Меньшее время до запуска" />
              </label>
              <h3 class="ag-benefits_title ag-benefits_title__clock">
                Boost Your Career
              </h3>
              <p class="ag-benefits_text ag-benefits_text__clock">
                 Within a short span of time, we assure you you will reach all the heights by joining this courses.Vedha E-learning helps you to explore more job oppurtunities and instant growth of your career.
              </p>
            </li>
            <li class="ag-benefits-tab_item">
              <label for="cost" class="ag-benefits-tab_label icon-label">
                <img src="https://images.careerfoundry.com/public/frontpages/homepage/Asena_hero_cut_out_744x588_v2.png" class="ag-benefits_img ag-benefits_img__cost" alt="Контроль и гибкость" />
              </label>
              <h3 class="ag-benefits_title ag-benefits_title__cost">
                Bunch of Oppurtunities
              </h3>
              <p class="ag-benefits_text ag-benefits_text__cost">
                 Within a short span of time, we assure you you will reach all the heights by joining this courses.Vedha E-learning helps you to explore more job oppurtunities and instant growth of your career.
              </p>
            </li>
          </ul>

          <div class="ag-benefits-control-block">
            <label for="gears">
              <i class="ag-benefits-control_btn ag-benefits-control_btn__gears"></i>
            </label>
            <label for="clock">
              <i class="ag-benefits-control_btn ag-benefits-control_btn__clock"></i>
            </label>
            <label for="cost">
              <i class="ag-benefits-control_btn ag-benefits-control_btn__cost"></i>
            </label>
            <div class="ag-benefits-control_btn-active"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script>
  (function ($) {
	  $(function () {

	    

	  });
	})(jQuery);
  </script>
 <!--  ------------------------ -->
 
  <div class="bodies" id="ourclients">
 <h1 style="margin-bottom: 8%;"><center>Our Happy Clients</center></h1>
<div class="logo-grid" style="margin-left: 15%;">
  <div class="column" >
    <div class="grid-logo-wrapper">
      <div class="grid-logo active">
      <img src="https://www.freepnglogos.com/uploads/microsoft-logo-4.png"/ style="width: 100%;margin-top: 15%;">
    </div>
      <div class="grid-logo">
      <img src="images/cts.png" / style="margin-top: 25%;">
    </div>
      <div class="grid-logo">
      <img src="https://www.freepnglogos.com/uploads/twitter-logo-png/twitter-bird-symbols-png-logo-0.png" / style="width: 70%;">
    </div>
    </div>
  </div>
  <div class="column">
    <div class="grid-logo-wrapper">
      <div class="grid-logo active">
      <img src="https://www.freepnglogos.com/uploads/ibm-logo-png/ibm-logo-ibm-vector-logo-download-logoepsm-19.png" />
    </div>
      <div class="grid-logo">
      <img src="images/Capgemini.png" / style="margin-top: 15%;">
    </div>
      <div class="grid-logo">
      <img src="images/Deloitte.png" /  style="margin-top: 25%;">
    </div>
    </div>
  </div>
  <div class="column">
    <div class="grid-logo-wrapper">
      <div class="grid-logo active">
        <img src="https://www.freepnglogos.com/uploads/red-netflix-logo-text-png-3.png" / style="margin-top: 25%;">
      </div>
      <div class="grid-logo">
        <img src="https://www.freepnglogos.com/uploads/tesla-logo-png-33.png" />
      </div>
      <div class="grid-logo">
        <img src="images/dell.png" style="width: 70%" />
      </div>
    </div>
  </div>
  <div class="column">
    <div class="grid-logo-wrapper">
      <div class="grid-logo active">
        <img src="images/wipro.png" />
      </div>
      <div class="grid-logo">
        <img src="images/zohoo.png" />
      </div>
      <div class="grid-logo">
        <img src="https://www.freepnglogos.com/uploads/internet-explorer-png-logo/internet-explorer-png-logo-2.png" style="width: 60%" />
      </div>
    </div>
  </div>
</div>
</div>  
<script>
var logotimeline = new TimelineMax({repeat:-1});
logotimeline.staggerTo(".logo-grid .column", 2, {onComplete:tweenComplete, onCompleteParams:["{self}"]}, 0.1);

function tweenComplete(tween) {
  var column = tween.target;
  var activeItem = $(column).find('.active');
  
  var nextActiveItem = activeItem.next();
  if (typeof nextActiveItem.html() === 'undefined'){
    nextActiveItem = $(column).find('.grid-logo:first');
  }

  activeItem.removeClass('active'); 
  nextActiveItem.addClass('active');
}
</script>


<footer id="fo"  style="margin-top: 10%">
<div class="row">
<div class="col">
    <p>Vedha is one of the World’s largest and cost-effective Online Learning platform. It is one place where you can get access to a plethora of courses. The best part is that courses from various domains are available and also they are available in various languages.</p>
</div>
<div class="col">
    <h3>Office <div class="underline"><span></span></div></h3>
    <p>Vedhanthi Technologies Private Limited</p>
    <p>47A Sasthiri street</p>
    <p>LIC Colony,Selvapuram,Coimbatore</p>
    <p class="email-id">vedhanthitechnologies@gmail.com</p>
    <h4>+91 - 8870750500</h4>
</div>
<div class="col">
    <h3>Browse popular topics  <div class="underline"><span></span></div></h3>
    <ul>
    <li>Free Courses</li>
    <li>Learn a Language</li>
    <li>Full Stack Web Development</li>
    <li> Data Science Free Courses</li>
    <li> Speaking English </li>
    <li>Artificial Intelligence</li>
    <li>See all courses</li>
</ul>
</div>
<div class="col">
    <h3>Newsletter <div class="underline"><span></span></div></h3>
    <form>
        <i class="far fa-envelope"></i>
        <input type="email" placeholder="Enter your email id" required>
        <button type="submit"><i class
        ="fas fa-arrow-right"></i></button>
    </form>
    <div class="social-icons">
        <i class="fab fa-facebook-f"></i>
        <i class="fab fa-twitter"></i>
        <i class="fab fa-whatsapp"></i>
        <i class="fab fa-pinterest"></i>
    </div>
</div>
</div>
<hr>
<p class="copyright" style="color: #0b0742">VEDHA E-Learning ⓒ 2022 - All Rights Reserved </p>
</footer>
    <%
            } else {
                // Course not found
        %>
        <p>Course not found.</p>
        <%
            }

            // Close database connection
            rs.close();
            stmt.close();
            con.close();
        %>

</body>
</html>