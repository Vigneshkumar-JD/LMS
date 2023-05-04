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
 margin-top: -5%;
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
        <div class="nav-links" style="margin-left: 7%">
           <a href="NewUserHome.jsp">Home</a>
          <a href="Newuserservices.jsp">Services</a>
          <a href="Newusercourses.jsp">Courses</a>
           <a href="Newusercertifications.jsp">Certifications</a>
            <a href="Newusercontactjsp.jsp">Contact us</a>
        </div>
           <div class="containor py-5 " style="margin-right:7%">
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
										<a class="dropdown-item" href="userenrolledcourse.jsp?name=<%=session.getAttribute("name") %>&email=<%=session.getAttribute("email") %>&Python Beginner's Course">													<span class="mr-1">
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
</body>
</html>