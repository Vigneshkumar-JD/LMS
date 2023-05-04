<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/Home.css">


<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet">
 <link rel="stylesheet" href="assets/vendors/bootstrap/bootstrap.css">
  
</head>
<style>
@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;700&display=swap");
* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}

html {
  scroll-behavior: smooth;
  font-size: 16px;
}

body {
  font-family: "Poppins", sans-serif, "Segoe UI", Tahoma, Geneva, Verdana;
  font-weight: 500;
  outline: none;
}

h1,
h2,
h3,
h4 {
  color: #0b0742;
  font-weight: 700;
}

p {
  color: #9e9aa7;
  font-weight: 500;
  line-height: 1.7;
}

a {
  text-decoration: none;
  position:relative;
}

img {
  max-width: 100%;
}

.btn {
  display: inline-block;
  color: #fff;
  background-color: #0b0742;
  text-transform: capitalize;
  font-weight: 700;
  border: none;
  outline: none;
  cursor: pointer;
  border-radius: 100px;
 transition: all 0.3s ease;
  overflow: hidden;
}


  
.btn.btn-sm {
  padding: 7px 21px;
}

.btn.btn-lg {
  padding: 12px 36px;
}

.btn.btn-plus-icon {
  display: flex;
  align-items: center;
  justify-content: center;
  column-gap: 10px;
}

.btn.btn-plus-icon .icon {
  font-size: 22px;
}

.btn:hover {
  background-color: #0b0742;
  color:#fff;
}

.bn:hover{
 background-color: #0b0742;
  color:#fff;
}
.flex-between {
  display: flex;
  justify-content: space-between;
  align-items: center;
  gap: 40px;
}

.flex-ver-top {
  align-items: flex-start;
}

.scale-effect:active {
  transform: scale(0.88);
  transition: 0.2s;
}

.section-header {
  text-align: center;
}

.section-header h2 {
  font-size: 35px;
}

@media (max-width: 500px) {
  .section-header h2 {
    font-size: 26px;
  }
}

@media (max-width: 280px) {
  .section-header h2 {
    font-size: 22px;
  }
}

.section-header p {
  width: 50%;
  margin: 7px auto 0;
}

@media (max-width: 992px) {
  .section-header p {
    width: 70%;
  }
}

@media (max-width: 500px) {
  .section-header p {
    width: 100%;
  }
}

.container {
  position: relative;
  width: 78%;
  margin: 0 auto;
}

@media (max-width: 992px) {
  .container {
    width: 90%;
  }
}

.header {
  padding: 45px 0;
}

.header .logo {
  height: 30px;
 margin-top: -18%;
}

.header .main-navgation {
  flex: 1;
  gap: 0;
}

@media (max-width: 992px) {
  .header .main-navgation {
    position: absolute;
    top: 150%;
    left: 50%;
    transform: translateX(-50%);
    width: 70%;
    height: 0;
    z-index: 999;
    overflow: hidden;
    flex-direction: column;
    align-items: center;
    padding: 0 33.33333px;
    border-radius: 10px;
    background-color: #3b3054;
    transition: height 0.3s;
  }
}

@media (max-width: 767px) {
  .header .main-navgation {
    width: 90%;
  }
}

@media (max-width: 375px) {
  .header .main-navgation {
    width: 100%;
  }
}

@media (max-width: 280px) {
  .header .main-navgation {
    padding: 0 25px;
  }
}

.header .main-navgation > div {
  display: flex;
  align-items: center;
  gap: 30px;
}

@media (max-width: 992px) {
  .header .main-navgation > div {
    flex-direction: column;
    width: 100%;
    padding: 33.33333px 0;
  }
}

@media (max-width: 280px) {
  .header .main-navgation > div {
    padding: 25px 0;
  }
}

.header .main-navgation div:first-child {
  border-bottom: 1px solid white;
}

.header .nav-buttons .btn {
  color: #fff;
  width: 80%;
}

@media (max-width: 375px) {
  .header .nav-buttons .btn {
    width: 100%;
  }
}

.header .burger-menu {
  font-size: 22px;
  color: #9e9aa7;
  cursor: pointer;
  display: none;
}

@media (max-width: 992px) {
  .header .burger-menu {
    display: block;
  }
}

.main-navgation a {
  font-weight: 700;
  font-size: 14px;
  color: #9e9aa7;
  transition: 0.3s;
}

.main-navgation a:hover {
  color: #232127;
   text-decoration: none;
}

@media (max-width: 992px) {
  .main-navgation a {
    width: 100%;
    color: white;
    text-align: center;
    font-size: 16px;
  }
  .main-navgation a:hover {
    color: #2acfcf;
  }
}
.dropdown-menu {
  padding: 0.7rem 0rem;
  font-size: 0.875rem;
  line-height: 22px;
  color: #5c5776;
  border: none;
  box-shadow: 0 10px 30px 0 rgba(31, 45, 61, 0.1);
  border-radius: 0.5rem;
}

.dropdown-menu {
  display: block;
  visibility: hidden;
  opacity: 0;
  transform: translateY(20px);
  transition: all 0.3s ease-in;
}

.dropdown:hover > .dropdown-menu {
  transform: scaleY(1);
  opacity: 1;
  visibility: visible;
}

.dropdown-submenu:hover > .dropdown-menu {
  transform: scaleY(1);
  opacity: 1;
  visibility: visible;
}

@media (min-width: 990px) {
  .dropright-lg {
    position: relative;
  }
  .dropright-lg .dropdown-menu {
    top: 0;
    right: auto;
    left: 100%;
    margin-top: 0;
    margin-right: 0.125rem;
  }
}
.dropdown-toggle::after {
  display: inline-block;
  margin-left: 0.255em;
  vertical-align: 0.255em;
  content: ">";
  border-top: 0rem;
  border-right: 0rem;
  border-bottom: 0;
  border-left: 0rem;
  float: right;
}

.avatar-md {
  width: 56px;
  height: 56px;
}

.avatar img {
  width: 100%;
  height: 100%;
  -o-object-fit: cover;
  object-fit: cover;
}

.avatar {
  position: relative;
  display: inline-block;
  width: 3rem;
  height: 3rem;
  font-size: 1rem;
}

.avatar-online:before {
  background-color: green;
}

.avatar-indicators:before {
  content: "";
  position: absolute;
  bottom: 0px;
  right: 5%;
  width: 30%;
  height: 30%;
  border-radius: 50%;
  border: 2px solid #fff;
  display: table;
}
.containor{
margin-right:18%;
margin-top: -5%;
}
/* .nav-links a::before {  
  transform: scaleX(0);
  transform-origin: bottom right;
 
} */

.nav-links a:hover::before {
  transform: scaleX(1);
  transform-origin: bottom left;
   text-decoration: none;
}

.nav-links a::before {
  content: " ";
  display: block;
  position: absolute;
  top: 0; right: 0; bottom: 0; left: 0;
  inset: 0 0 0 0;
  
  z-index: -1;
  transition: transform .3s ease;

}


/* a {
     color: #48A9FD;
     text-decoration: none;
     background-color: transparent;
     -webkit-text-decoration-skip: objects;
 }

 a:hover {
   color: #258BE3;
   text-decoration: underline;
 }
 a, button, input, select, textarea {
   -webkit-tap-highlight-color: transparent;
 } */

 .btn-outline-primary {
     color: #48A9FD;
     background-color: transparent;
     background-image: none;
     border-color: #48A9FD;
 }

 .btn-outline-primary:not(:disabled):not(.disabled).active,
 .btn-outline-primary:not(:disabled):not(.disabled):active,
 .show > .btn-outline-primary.dropdown-toggle {
     color: #fff;
     background-color: #48A9FD;
     border-color: #48A9FD;
 }


 /* ----- Navbar ----- */

 .nav-pills .nav-link.active, .nav-pills .show >.nav-link {
     color: #fff;
     background-color: #48A9FD;
 }

 .nav-link {
     display: block;
     padding: .5rem .75rem .5rem .75rem;
     margin: 0 .75rem 0 0;
 }

 .app-navbar {
   font-weight: 400;
   -webkit-font-smoothing: antialiased;
 }
 .app-navbar .form-control {
   box-shadow: none;
 }
 .app-navbar .navbar-brand img {
   width: 85px;
 }
 .app-navbar .navbar-collapse {
   max-height: inherit;
 }
 .app-navbar .navbar-collapse:after {
   height: 100vh;
 }
 .app-navbar .form-control {
   border-color: #1C73A5;
 }
 .app-navbar .app-notifications {
   margin-left: 1rem;
   padding-bottom: 4px !important;
   padding-top: 4px !important;
 }
 .app-notifications .icon:before {
   font-size: 20px;
 }
 @media (min-width: 768px) {
   .app-navbar .navbar-collapse:after {
     height: auto;
   }
 }
 @media (max-width: 768px) {
   .app-search {
     margin-top: -1px;
   }
 }

/* ----- Custom Forms ----- */

.paya label {
  display: inline-block;
  margin-bottom: 0.5rem;
  font-size: .75em;
  color: #666666;
  font-weight: 600;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}

.paya-label {
  display: block;
  margin-bottom: 0.5rem;
  font-size: .75em;
  color: #666666;
  font-weight: 600;
}

.paya .input {
  width: 100%;
  color: #000;
  background: transparent;
  padding: 5px 0 6px 0;
  border-bottom: 1px solid #ced4da;
  transition: border-color 0.3s cubic-bezier(0.165, 0.84, 0.44, 1);
}

.paya input,
.paya button,
.paya select {
    -webkit-animation: 1ms void-animation-out;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    outline: none;
    border-style: none;
    border-radius: 0;
  }

.paya .input::-webkit-input-placeholder {
  color: #9B9B9B;
}

.paya .input::-moz-placeholder {
  color: #9B9B9B;
}

.paya .input:-ms-input-placeholder {
  color: #9B9B9B;
}

.paya .input:focus {
  border-color: #000;
}
.paya .input-invalid {
  border-color: #ffc7ee;
}

.paya input:-webkit-autofill,
.paya select:-webkit-autofill {
  -webkit-text-fill-color: #fce883;
  transition: background-color 100000000s;
  -webkit-animation: 1ms void-animation-out;
}

#slipper {
 /*  display: grid;
  grid-template-columns: repeat(3, 1fr);
  grid-gap: 50px;
  text-align: center;
  background: #fff; */
  float:left;
  width:25%;
  padding:0 10px 30px;
  margin-left:5%;
}
.contain{
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  grid-gap: 50px;
  margin: 0 10px;
  background: #fff;
}

.boxy {
  background-color: #fff;
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}

.boxy .image {
  margin-bottom: 20px;
  overflow: hidden;
  height: 250px;
  width: 100%;
}

.boxy .image img {
  height: 100%;
  width: 100%;
  object-fit: cover;
}

.boxy:hover .image img {
  transform: scale(1.1);
}

.boxy .contenty h3 {
  font-size: 20px;
  font-weight:600;
  color: #334;
  text-align:center;
}

.boxy .contenty p {
  font-size: 15px;
  color: #777;
  line-height: 2;
  padding: 15px 0;
  text-align:center;
}

.boxy .contenty .btn {
  display: inline-block;
  padding: 10px 30px;
  border: 1px solid #334;
  color: #fff;
  font-size: 16px;
  border-radius: 20px;
  background-color: #0B0742;
margin-left:80px;
}

.boxy .contenty .btn:hover {
  background-color: #a8c66c;
  border-color: #a8c66c;
  color: #0B0742;
  transform: scale(1.1);
}

.boxy .contenty .icons {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin-top: 20px;
  padding-top: 15px;
  border-top: 1px solid #334;
}

.boxy .contenty .icons span {
  font-size: 14px;
  color: #0B0742;
}

.boxy .contenty .icons span i {
  color: #a8c66c;
  padding-right: 5px;
}

footer{
width: 100%;
position: relative;
height:60vh;
bottom: 0;
background: linear-gradient(to right,#83799c, #aba3bc,#d5d0dd,#fff);
color: 	#000000;
padding: 100px 0 30px;
border-top-left-radius: 125px;
font-size: 13px;
line-height: 20px;
margin-top:238%;

}
#fo .row{
width: 85%;
margin: auto;
display: flex;
flex-wrap: wrap;
align-items: flex-start;
justify-content: space-between;
margin-top:-4rem;
}

#fo .col{
flex-basis: 25%;
padding: 20px;
}

#fo .col h3{
width: fit-content;
margin-bottom: 40px;
position: relative;
font-size:1rem;
font-weight:600;
}

#fo .col p{
color: #0b0742;
}
#fo .email-id{
width: fit-content;
border-bottom: 1px solid#ccc;
margin: 20px 0;
}

#fo ul li{
list-style: none;
margin-bottom: 12px;
}

#fo ul li a{
text-decoration: none;
color: 	#000000;
}

#fo form{
padding-bottom: 15px;
display: flex;
align-items: center;
justify-content: space-between;
border-bottom: 1px solid#ccc;
margin-bottom: 50px;
}


#fo form .far{
font-size: 18px;
margin-right: 10px;
}

#fo form input{
width: 100%;
background: transparent;
color: #ccc;
border: 0;
outline: none;
}

#fo form button{
 background: transparent;
 border: 0;
 outline: none;
 cursor: pointer;
}

#fo form button .fas{
font-size: 16px;
color: #ccc;
}

#fo .social-icons .fab{
width: 40px;
height: 40px;
border-radius: 50%;
text-align: center;
line-height: 40px;
font-size: 20px;
color: #000;
background: #fff;
margin-right: 15px;
cursor: pointer;
}

#fo hr{
width: 90%;
border: 0;
border-bottom: 1px solid#ccc;
margin: 20px auto;
}

#fo .copyright {
text-align: center;
margin-bottom:-1rem;
}

#fo .underline{
width: 100%;
height: 5px;
background:#767676;
border-radius: 3px;
position: absolute;
top: 25px;
left: 0;
overflow: hidden;
}

#fo .underline span{
width: 15px;
height: 100%;
background:#fff;
border-radius: 3px;
position: absolute;
top: 0;
left: 10px;
animation: moving 2s linear infinite;
}

@keyframes moving{
0%{
   left: -20px;  
}
100%{
    left: 100%;
}
}
.logo{
width:15%;
margin-right:5%;
}

</style>

<body>
<main class="main">
  
  <header class="header">
    <div class="container flex-between">
     <div class="logo">
 	<img src="images/log.png" alt="Working Illustration"  />
      </div>
      <div class="main-navgation flex-between flex-ver-top">
        <div class="nav-links" style="margin-left:7%">
           <a href="NewUserHome.jsp">Home</a>
          <a href="Newuserservices.jsp">Services</a>
          <a href="Newusercourses.jsp">Courses</a>
           <a href="Newusercertifications.jsp">Certifications</a>
            <a href="Newusercontactjsp.jsp">Contact us</a>
        </div>
           <div class="containor py-5 " style="margin-right:12%">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-12">
  <ul class="list-unstyled">
    <li class="dropdown ml-2">
						
								<a class="rounded-circle " href="#" role="button" id="dropdownUser"
									data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<%@ page import="java.util.Base64" %>
<%
String email = (String) session.getAttribute("email");

// connect to database
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?","root","saranya@2001");

// execute query to get user's photo
String query = "select photo from userss where uemail=?";
PreparedStatement stmt = con.prepareStatement(query);
stmt.setString(1, email);
ResultSet rs = stmt.executeQuery();

// display user's photo
if (rs.next()) {
    Blob imageBlob = rs.getBlob("photo");
    byte[] imageBytes = imageBlob.getBytes(1, (int) imageBlob.length());
    String imageBase64 = Base64.getEncoder().encodeToString(imageBytes);
    String photo = "data:image/png;base64," + imageBase64; // assuming image type is png, change accordingly
%>
<div class="avatar avatar-md avatar-indicators avatar-online">
    <img alt="avatar" src="<%=photo%>" class="rounded-circle">
</div>
<%
} else {
%>
<div class="avatar avatar-md avatar-indicators avatar-online">
    <img alt="avatar" src="images/user.png" class="rounded-circle">
</div>
<%
}

// close database connection
rs.close();
stmt.close();
con.close();
%>
								</a> 
				
								<div class="dropdown-menu pb-2" aria-labelledby="dropdownUser">
									<div class="dropdown-item">
										<div class="d-flex py-2">
																												<%@ page import="java.util.Base64" %>
<%
 email = (String) session.getAttribute("email");

// connect to database
Class.forName("com.mysql.cj.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?","root","saranya@2001");

// execute query to get user's photo
 query = "select photo from userss where uemail=?";
 stmt = con.prepareStatement(query);
stmt.setString(1, email);
 rs = stmt.executeQuery();

// display user's photo
if (rs.next()) {
    Blob imageBlob = rs.getBlob("photo");
    byte[] imageBytes = imageBlob.getBytes(1, (int) imageBlob.length());
    String imageBase64 = Base64.getEncoder().encodeToString(imageBytes);
    String photo = "data:image/png;base64," + imageBase64; // assuming image type is png, change accordingly
%>
<div class="avatar avatar-md avatar-indicators avatar-online">
    <img alt="avatar" src="<%=photo%>" class="rounded-circle">
</div>
<%
} else {
%>
<div class="avatar avatar-md avatar-indicators avatar-online">
    <img alt="avatar" src="images/user.png" class="rounded-circle">
</div>
<%
}

// close database connection
rs.close();
stmt.close();
con.close();
%>
											<div class="ml-3 lh-1">
												<h4 class="mb-0"><%=session.getAttribute("name") %></h4>
											
												<p class="mb-0"><%=session.getAttribute("email") %></p>
											</div>
				
										</div>
										
									</div>
									<div class="dropdown-divider"></div>
									<div class="">
										<ul class="list-unstyled">
											<li >
												<a class="dropdown-item" href="userenrolledcourse.jsp?name=<%=session.getAttribute("name") %>&email=<%=session.getAttribute("email") %>&Python Beginner's Course">
													<span class="mr-1">
<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-circle"><circle cx="12" cy="12" r="10" ></circle></svg></span><span> My Courses
												</a>
											
											</li>
											
										
						
											<li>
												<a class="dropdown-item" href="userprofile.jsp">
                          <span class="mr-1">
                            
<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>
                          </span>Profile
												</a>
											</li>
											
											
										
										</ul>
									</div>
									<div class="dropdown-divider"></div>
									<ul class="list-unstyled">
									<li>
										<a class="dropdown-item" href="NewHome.jsp">
                      <span class="mr-2">
<svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-power"><path d="M18.36 6.64a9 9 0 1 1-12.73 0"></path><line x1="12" y1="2" x2="12" y2="12"></line></svg></span>Sign Out
										</a>
									</li>
								
								</ul>
									
								</div>
						</li>
  </ul>
  
</div>
            
    </div>
     </div> 
        </div>
     
      <div class="burger-menu">
        <i class="fa-regular fa-bars icon"></i>
      </div>
    </div>
  </header>

  </main>
<div class="top">
<!-- <button onclick="history.back()">Back</button> -->
<h2 style="margin-top:-10%;margin-left:8%;">Your Courses</h2>
<hr style="width:80%;margin-left:7%;background:#0b0742;margin-bottom:5%">
</div>
<%@page contentType="text/html; charset=ISO-8859-1"%>
    <%@page import="java.io.IOException"%>
     <%@page import="java.io.PrintWriter"%>
      <%@page import="java.sql.Connection"%>
       <%@page import="java.sql.DriverManager"%>
        <%@page import="java.sql.ResultSet"%>
         <%@page import="java.sql.Statement"%>
      		<%@page import="java.time.LocalDate"%>
         
         <%
         
         
          email=request.getParameter("email");
         String image = null;
         String id = null;
         
         
         try {
             Class.forName("com.mysql.cj.jdbc.Driver");
             Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?serverTimezone=UTC",
             "root", "saranya@2001");
             Statement stmts=conn.createStatement();
             ResultSet rss = stmts.executeQuery("select * from enrollment_courses  where useremail='" +email+ "'");
             while (rss.next()) {
                 String course = rss.getString("course");
                 image=rss.getString("coursesimg");
                 id = rss.getString(1);
         %>

         <section id="slipper">
             <div class="contain">
                 <div class="boxy">
                     <div class="image">
                         <img src="<%= image %>" alt="">
                     </div>
                     <div class="contenty">
                         <h3><%=course%></h3>
                         <p><%=course%> Beginners course at Low cost & done at flexible hours</p>
                         <a href="userplaylistpreview.jsp?useremail=<%=email %>&course=<%=id%>" class="btn">View more</a>
                         <div class="icons">
                            
                             <span><i class="fas fa-user"></i> By out Top Instructor </span>
                         </div>
                     </div>
                 </div>
             </div>
         </section>

         <%
             }
             rss.close();
             stmts.close();
             conn.close();
         } catch(Exception e) {
             e.printStackTrace();
         }
         %>

  
        <footer id="fo">
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
                <button type="submit"><i class="fas fa-arrow-right"></i></button>
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
  
</body>
</html>