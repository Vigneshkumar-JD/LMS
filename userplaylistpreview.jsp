<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <!--FontAwesome Icons-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/gh/javan/details-element-polyfill@master/dist/details-element-polyfill.js"></script>
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



@media (max-width: 992px) {
  .main-navgation a {
    width: 100%;
    color: white;
    text-align: center;
    font-size: 16px;
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
.tabset > input[type="radio"] {
  position: absolute;
  left: -200vw;
}

.tabset .tab-panel {
  display: none;
}

.tabset > input:first-child:checked ~ .tab-panels > .tab-panel:first-child,
.tabset > input:nth-child(3):checked ~ .tab-panels > .tab-panel:nth-child(2),
.tabset > input:nth-child(5):checked ~ .tab-panels > .tab-panel:nth-child(3),
.tabset > input:nth-child(7):checked ~ .tab-panels > .tab-panel:nth-child(4),
.tabset > input:nth-child(9):checked ~ .tab-panels > .tab-panel:nth-child(5),
.tabset > input:nth-child(11):checked ~ .tab-panels > .tab-panel:nth-child(6) {
  display: block;
}

/*
 Styling
*/


.tabset > label {
  position: relative;
  display: inline-block;
  padding: 15px 45px 25px;
  /* border: 1px solid transparent; */
  border-bottom: 0;
  cursor: pointer;
  font-weight: 600;
  color:#0b0742;
 
}

.tabset > label::after {
  content: "";
  position: absolute;
  left: calc(50% - 50px);
  bottom: 10px;
  width: 100px;
  height: 4px;
  background: #fff;

}

.tabset > label:hover,
.tabset > input:focus + label {
  color: #83799c;
}

.tabset > label:hover::after,
.tabset > input:focus + label::after,
.tabset > input:checked + label::after {
  background: #83799c;
}

.tabset > input:checked + label {
  border-color: #ccc;
  border-bottom: 1px solid #fff;
  margin-bottom: -1px;
}

.tab-panel {
  padding: 30px 0;
  border-top: 1px solid #ccc;
}

/*
 Demo purposes only
*/
*,
*:before,
*:after {
  box-sizing: border-box;
}

body {
  padding: 30px;
}

.tabset {
width: 100%;
}
.tab-panels{
width:100%
}



ul.navbar-nav {
  list-style: none;
margin-top:5%;
  padding-inline-start: 0px;
}

li.nav-item {
  font-weight: 500;
}

#title {
  font-size: 3rem;
}

header#header {

  width: 100%;
 
  z-index: 10000;
}

.flex {
  display: flex;
}

.flex-row {
  flex-direction: row;
}

.flex-column {
  flex-direction: column;
}

.flex-center {
  align-items: center;
  align-content: center;
}

.flex-major {
  flex: 1;
}

.flex-end {
  justify-content: flex-end;
}

header nav {
  justify-content: space-between;
 
  height: 100%;
  padding: 10px 5%;
   margin-left:-2%;
   width:100%;
}

.navbar-brand {
 
  height: 100%;
  gap: 20px;
  align-items: flex-end;
}

.navbar-menu {
  flex-grow: 1;
}

ul.navbar-nav {
  list-style: none;

  padding-inline-start: 0px;
}

.nav-link {
  display: block;
  text-decoration: none;
  font-weight: inherit;
  cursor: pointer;
  
   justify-content:center;
}

.js-try-btn {
  background: #0b0742;
   border-radius:45px
}

a.js-try {
  color: #fff;
  text-transform: uppercase;
  font-size: 0.8rem;
  font-weight: 600;
  display: block;
  text-decoration: none;
  cursor: pointer;
  padding: 15px 25px;
 
}

a.js-try,.js-try-btn :hover{
color:#fff;
transform: scale(1);
}

.technical_sec {
  margin: 0 2px;
}

#navbar {
  max-width: 350px;
  width: 100%;
  background-color: white;
  z-index: 9999;
 

  top: 255px;
  left: 0;
  bottom: 0;
}

#navbar header {
  color: black;
  padding: 10px 15px;
  text-align: center;
  font-size: 1.2rem;
  margin-top: 12px;
  border-bottom: 1px solid #0b0742;
}

#navbar ul {
  height: 100%;
  padding: 0;
  overflow-y: auto;
  overflow-x: hidden;
}

li.topic {
  color: black;
  text-align: left;
  font-size: 1rem;
  font-weight: 500;
  border-left: 8px solid transparent;
  border-bottom: 1px solid ghostwhite;
}

li.topic:hover {
  background-color: whitesmoke;
}

li.topic:active {
  background-color: #a9a9a987;
  border-left-color: #010101;
}

li.topic a.nav-link,
li.topic a.nav-link:visited {
  color: black;
  justify-content:center;
}

main#main-doc {
  padding: 20px;
  margin-left: 5px;
  position: relative;
  top: 85px;
  
}

section.main-section {
  margin-bottom: 15px;
  padding: 15px 5px;
}

section.main-section:not(:last-child):target::before {
  margin-top: -115px;
  height: 250px;
  content: " ";
  display: block;
  visibility: hidden;
}

section.main-section header {
  font-weight: 600;
  font-size: 2rem;
  text-align: left;
  margin: 0;
}

section.main-section header:hover {
  color: #666;
}

section.main-section header:hover::after {
  content: "\f0C1";
  color: #666;
  font-family: "FontAwesome";
  font-weight: 100;
  font-size: 24px;
  margin-left: 10px;
}

section.main-section article,
section.main-section p {
  color: #4d4e53;
  margin: 15px;
  font-size: 1rem;
  line-height: 32px;
}

section.main-section li {
  margin: 15px 0px 0px 20px;
}

section.main-section code {
  display: block;
  text-align: left;
  white-space: pre-line;
  position: relative;
  word-break: normal;
  word-wrap: normal;
  line-height: 2;
  background-color: #f7f7f7;
  padding: 15px;
  margin: 10px;
  border-radius: 5px;
  border-left: 10px solid;
}

@media only screen and (max-width: 815px) {
  #header div.navbar-menu {
    display: none;
  }

  img#logo {
    width: 50px;
  }

  span#title {
    font-size: 2rem;
  }
  section.technical_sec {
    flex-direction: column;
  }

  #navbar ul {
    height: 200px;
  }

  #navbar {
    width: 100%;
 
    max-width: 100%;
    max-height: 256px;
    border-bottom: 1px solid gainsboro;
  }

  main#main-doc {
    position: relative;
    margin-left: 0px;
    margin-top: 115px;
    top: 200px;
  }

  section.main-section header {
    font-size: 1.5rem;
  }

  section.main-section article,
  section.main-section p {
    font-size: 0.8rem;
  }

  section.main-section:not(:last-child):target::before {
    height: 440px;
  }
}

.courseImage{
  max-width: 250px;
  max-height: 100px;
}

.flex-container{
  display:flex;
  flex-direction:row;
  align-items: baseline;
  flex-wrap:wrap;
}

.courseTitle{
  margin-left: 5px;
}

.jumbotron{
  background-image: url("https://images.unsplash.com/photo-1464618663641-bbdd760ae84a");
  background-size: cover;
  background-repeat: no-repeat;
  background-position: left 25%;
  color:white;
}

.course-details{
  margin-bottom: 20px;
}

.accordion button{
  margin-bottom: 10px;
  background-color: #0b0742;
}
.accordion button:hover{

  background-color: #f2f2f2;
}

.section-name::after{
  content: '\002B';
  color: #777;
  float:right;
  font-weight: bold;
}

.sectionheadingclicked::after{
  content: "\2212";
  color: #777;
  float: right;
  margin-left: 5px;
  font-weight: bold;
}


.faq-title {
    font-size: 2em;
    margin: 0.4em 0;
}

div.seperator {
    width: 7.5em;
    background-color: #5d507d;
    height: 0.17em;
    margin-left: -1.8em;
}

.faq-list > div {
    border-bottom: 0.07em solid #ededed;
    padding: 1.5em 0em;
} 

.faq-list > div:last-child {
    border: unset;
}

details > summary {
    list-style: none;
}
details > summary::-webkit-details-marker {
    display: none;
}

summary {
    font-size: 1.4em;
    font-weight: bold;
    cursor: pointer;
    -webkit-touch-callout: none;
    -webkit-user-select: none;
    -khtml-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none; 
    user-select: none;
    transition: all 0.3s ease;
}

summary:hover {
    color: #5d507d;
}

details[open] summary ~ * {
    animation: sweep .5s ease-in-out;
}

@keyframes sweep {
    0%    {opacity: 0; margin-left: -10px}
    100%  {opacity: 1; margin-left: 55px}
}

details[open] summary {
    color: #5d507d;
}

details[open] p {
    border-left: 2px solid #5d507d;
    margin-left: 55px;
    padding-left: 25px;
    opacity: 100;
    transition: all 3s ease;
    color:#0b0742;
}

details[open] summary:after {
    content: "-";
    font-size: 3.2em;
    margin: -33px 0.35em 0 0;
    font-weight: 200;
}

.faq-body {
    width: 70em;
    margin: 4em auto;
    box-shadow: 0px 0px 16px #5b5b5b;
    border-radius: 0.2em;
    padding: 5em;
    background-color: #fff;
}

.faq-list {
    width: 55em;
    margin: 1em auto;
    padding: 2em 0;
}

summary::-webkit-details-marker {
    display: none;
}

summary:after {
    background: transparent;
    border-radius: 0.3em;
    content: "+";
    color: #5d507d;
    float: left;
    font-size: 1.8em;
    font-weight: bold;
    margin: -0.3em 0.65em 0 0;
    padding: 0;
    text-align: center;
    width: 25px;
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
           <div class="containor py-5 " style="margin-right:12%;margin-top:-6%;" >
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
												<a class="dropdown-item" href="userenrolledcourse.jsp?name=<%=session.getAttribute("name") %>&email=<%=session.getAttribute("email") %>">
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
  
<%@page contentType="text/html; charset=ISO-8859-1"%>
    <%@page import="java.io.IOException"%>
     <%@page import="java.io.PrintWriter"%>
      <%@page import="java.sql.Connection"%>
       <%@page import="java.sql.DriverManager"%>
        <%@page import="java.sql.ResultSet"%>
         <%@page import="java.sql.Statement"%>
      		<%@page import="java.time.LocalDate"%>
         
         <%
         
         
          email=request.getParameter("useremail");
        String course=request.getParameter("course");
         
         
         try {
             Class.forName("com.mysql.cj.jdbc.Driver");
             Connection connt = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?serverTimezone=UTC","root", "saranya@2001");
             Statement stmtz=connt.createStatement();
             ResultSet rst = stmtz.executeQuery("select * from enrollment_courses  where useremail='" +email+ "' and id='" +course+ "'");
             while (rst.next()) {
            	 
                  course = rst.getString("course");
                
         %>

<div class="tabset" >
 
  <!-- Tab 1 -->
    <input type="radio" name="tabset" id="tab1" aria-controls="dunkles" checked>
  <label for="tab1" style="margin-left:2%">Course Overview</label>
 
  <!-- Tab 2 -->
  <input type="radio" name="tabset" id="tab2" aria-controls="rauchbier">
  <label for="tab2" style="margin-left:2%">Pre-Requisites</label>
  <!-- Tab 3 -->

   <input type="radio" name="tabset" id="tab3" aria-controls="marzen" >
  <label for="tab3" style="margin-left:2%">Video Lectures</label>
  
  <!-- <input type="radio" name="tabset" id="tab4" aria-controls="recorded">
  <label for="tab4">Recorded sessions</label> -->
  
  <input type="radio" name="tabset" id="tab5" aria-controls="lectures">
  <label for="tab5" style="margin-left:2%"><%=course%> Lectures</label>
  
  <input type="radio" name="tabset" id="tab6" aria-controls="interview">
  <label for="tab6" style="margin-left:2%">Interview Questions</label>

  <div class="tab-panels">
  <section id="dunkles" class="tab-panel">
 
  <section class="container">
      <article class="card course-details">
        <div class="card-body">
          <h4 class="card-title"><%=course%></h4>
          <p class="card-text">Beginner's Course Certification</p>
        </div>
      </article>
      <article class="card course-details">
        <div class="card-body">
          <h4 class="card-title">What Will I Learn?</h4>
          <ul class="list-group">
            <li class="list-group-item">8X higher engagement in live online classes by industry experts</li>
            <li class="list-group-item">Learn 30+ cutting edge tools like SQL, Java, etc.</li>
            <li class="list-group-item">Sandboxed cloud labs for real-time application development</li>
            <li class="list-group-item">Build real-world applications like Amazon, Walmart etc.</li>
            <li class="list-group-item">Downloadable resources</li>
            <li class="list-group-item">Learn 30+ cutting edge tools like SQL, Java, etc.</li>
          </ul>
        </div>
      </article>
      <article class="card course-details">
        <div class="card-body">
          <h4 class="card-title">Requirements</h4>
          <ul class="list-group">
            <li class="list-group-item">No programming experience needed - I'll teach you everything you need to know</li>
            <li class="list-group-item">A Mac or PC computer with access to the internet</li>
            <li class="list-group-item">No paid software required - I'll teach you how to use PyCharm, Jupyter Notebooks and Google Colab</li>
            <li class="list-group-item">I'll walk you through, step-by-step how to get all the software installed and set up</li>
          </ul>
        </div>
      </article>
      
      <article class="card course-details">
        <div class="card-body">
          <h4 class="card-title">Course Curriculum</h4>
          <div class="accordion" id="accordionCurriculum">
            <div id="sectionOne">
            <button class="btn btn-light btn-block text-left section-name" type="button" 
             data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
            Section 1</button>
            </div>
            <div id="collapseOne" class="collapse show" aria-labelledby="#sectionOne">
              <ul>
                <li class="list-group-item"><i class="far fa-play-circle"></i> Video Lecture</li>
                <li class="list-group-item"><i class="far fa-file"></i> Document</li>
                <li class="list-group-item"><i class="far fa-check-square"></i> Quiz</li>
                <li class="list-group-item"><i class="fas fa-dna"></i> Assignment</li>
                <li class="list-group-item"><i class="fas fa-check"></i> Assignment-Solution</li>
              </ul>
            </div>
            <div id="sectionTwo">
            <button class="btn btn-light btn-block text-left section-name" type="button" 
             data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo" style="margin-top:10px">
     
            Section 2</button>
            </div>
            <div id="collapseTwo" class="collapse show" aria-labelledby="#sectionTwo">
              <ul>
                <li class="list-group-item">Item 1</li>
                <li class="list-group-item">Item 2</li>
                <li class="list-group-item">Item 3</li>
              </ul>
            </div>
          </div>
        </div>
      </article>
    </section>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
 <script>
 var section = document.querySelectorAll('.section-name');

 for(let i=0;i<section.length;++i){
   section[i].addEventListener('click',toggleIconSectionHeader);
 }

 function toggleIconSectionHeader(){
   this.classList.toggle("section-name");
   this.classList.toggle("sectionheadingclicked");
 }</script>
  </section>
  
  
   <section id="rauchbier" class="tab-panel" >

<div class="banner"></div>
<header id="header" >
  <nav class="flex flex-row flex-center">
    <div class="navbar-brand flex flex-row">
     <%--  <img id="logo" width=100 src="https://www.twine.net/blog/wordpress/wp-content/uploads/2022/07/<%=course%>logo.png" /> --%>
      <span id="title" style="color:#0b0742"><%=course%></sneeky>
    </div>
    <div class="navbar-menu">
      <ul class="navbar-nav flex flex-row flex-end">
        <li class="nav-item js-try-btn">
          <a class="js-try" href="#marzen" target="_blank">Try <%=course%></a>
        </li>
      </ul>
    </div>
  </nav>
</header>
<section class="technical_sec flex flex-row">
  <nav id="navbar" class="nav-bar technical_topic">
    <header><%=course%> Documentation</header>
    <ul class="navbar-nav flex flex-column">
      <li class="topic">
        <a class="nav-link nav-menu" href="#Introduction">Introduction</a>
      </li>
      <li class="topic">
        <a class="nav-link nav-menu" href="#Pre-requisites">Pre-requisites</a>
      </li>
      <li class="topic">
        <a class="nav-link nav-menu" href="#JavaScript_and_Java">JavaScript and Java</a>
      </li>
      <li class="topic">
        <a class="nav-link nav-menu" href="#Hello_world">Hello world</a>
      </li>
      <li class="topic">
        <a class="nav-link nav-menu" href="#Variables">Variables</a>
      </li>
      <li class="topic">
        <a class="nav-link nav-menu" href="#Declaring_variables">Declaring variables</a>
      </li>
      <li class="topic">
        <a class="nav-link nav-menu" href="#Variable_scope">Variable scope</a>
      </li>
      <li class="topic">
        <a class="nav-link nav-menu" href="#Global_variables">Global variables</a>
      </li>
      <li class="topic">
        <a class="nav-link nav-menu" href="#Constants">Constants</a>
      </li>
      <li class="topic">
        <a class="nav-link nav-menu" href="#Data_types">Data types</a>
      </li>
      <li class="topic">
        <a class="nav-link nav-menu" href="#Reference">Reference</a>
      </li>
    </ul>
  </nav>
  <main id="main-doc" class="technical_content flex-major">
    <section class="main-section" id="Introduction">
      <header>Introduction</header>
      <article>
        <p>
          <%=course%> is a cross-platform, object-oriented scripting language. It
          is a small and lightweight language. Inside a host environment (for
          example, a web browser), <%=course%> can be connected to the objects of
          its environment to provide programmatic control over them.
        </p>

        <p>
          <%=course%> contains a standard library of objects, such as Array, Date,
          and Math, and a core set of language elements such as operators, control
          structures, and statements. Core <%=course%> can be extended for a
          variety of purposes by supplementing it with additional objects; for
          example:
        </p>
        <ul>
          <li>
            Client-side <%=course%> extends the core language by supplying objects
            to control a browser and its Document Object Model (DOM). For example,
            client-side extensions allow an application to place elements on an
            HTML form and respond to user events such as mouse clicks, form input,
            and page navigation.
          </li>
          <li>
            Server-side <%=course%> extends the core language by supplying objects
            relevant to running <%=course%> on a server. For example, server-side
            extensions allow an application to communicate with a database,
            provide continuity of information from one invocation to another of
            the application, or perform file manipulations on a server.
          </li>
        </ul>
      </article>
    </section>
    <section class="main-section" id="Pre-requisites">
      <header>Pre-requisites</header>
      <article>
        <p>This guide assumes you have the following basic background:</p>

        <ul>
          <li>
            A general understanding of the Internet and the World Wide Web (WWW).
          </li>
          <li>Good working knowledge of HyperText Markup Language (HTML).</li>
          <li>
            Some programming experience. If you are new to programming, try one of
            the tutorials linked on the main page about JavaScript.
          </li>
        </ul>
      </article>
    </section>
    <section class="main-section" id="JavaScript_and_Java">
      <header>JavaScript and Java</header>
      <article>
        <p>
          JavaScript and Java are similar in some ways but fundamentally different
          in some others. The JavaScript language resembles Java but does not have
          Java's static typing and strong type checking. JavaScript follows most
          Java expression syntax, naming conventions and basic control-flow
          constructs which was the reason why it was renamed from LiveScript to
          JavaScript.
        </p>

        <p>
          In contrast to Java's compile-time system of classes built by
          declarations, JavaScript supports a runtime system based on a small
          number of data types representing numeric, Boolean, and string values.
          JavaScript has a prototype-based object model instead of the more common
          class-based object model. The prototype-based model provides dynamic
          inheritance; that is, what is inherited can vary for individual objects.
          JavaScript also supports functions without any special declarative
          requirements. Functions can be properties of objects, executing as
          loosely typed methods.
        </p>
        <p>
          JavaScript is a very free-form language compared to Java. You do not
          have to declare all variables, classes, and methods. You do not have to
          be concerned with whether methods are public, private, or protected, and
          you do not have to implement interfaces. Variables, parameters, and
          function return types are not explicitly typed.
        </p>
      </article>
    </section>
    <section class="main-section" id="Hello_world">
      <header>Hello world</header>
      <article>
        To get started with writing JavaScript, open the Scratchpad and write your
        first "Hello world" JavaScript code:
        <code>function greetMe(yourName) { alert("Hello " + yourName); }
          greetMe("World");
        </code>

        Select the code in the pad and hit Ctrl+R to watch it unfold in your
        browser!
      </article>
    </section>
    <section class="main-section" id="Variables">
      <header>Variables</header>
      <p>
        You use variables as symbolic names for values in your application. The
        names of variables, called identifiers, conform to certain rules.
      </p>
      <p>
        A <%=course%> identifier must start with a letter, underscore (_), or
        dollar sign ($); subsequent characters can also be digits (0-9). Because
        <%=course%> is case sensitive, letters include the characters "A" through
        "Z" (uppercase) and the characters "a" through "z" (lowercase).
      </p>
      <p>
        You can use ISO 8859-1 or Unicode letters such as å and ü in identifiers.
        You can also use the Unicode escape sequences as characters in
        identifiers. Some examples of legal names are Number_hits, temp99, and
        _name.
      </p>
    </section>
    <section class="main-section" id="Declaring_variables">
      <header>Declaring variables</header>
      <article>
        You can declare a variable in three ways:
        <p>
          With the keyword var. For example, <code>var x = 42.</code> This syntax
          can be used to declare both local and global variables.
        </p>
        <p>
          By simply assigning it a value. For example, <code>x = 42.</code> This
          always declares a global variable. It generates a strict <%=course%>
          warning. You shouldn't use this variant.
        </p>
        <p>
          With the keyword let. For example,<code> let y = 13.</code> This syntax
          can be used to declare a block scope local variable. See Variable scope
          below.
        </p>
      </article>
    </section>
    <section class="main-section" id="Variable_scope">
      <header>Variable scope</header>
      <article>
        <p>
          When you declare a variable outside of any function, it is called a
          global variable, because it is available to any other code in the
          current document. When you declare a variable within a function, it is
          called a local variable, because it is available only within that
          function.
        </p>

        <p>
          <%=course%> before ECMAScript 2015 does not have block statement scope;
          rather, a variable declared within a block is local to the function (or
          global scope) that the block resides within. For example the following
          code will log 5, because the scope of x is the function (or global
          context) within which x is declared, not the block, which in this case
          is an if statement.
        </p>
        <code>if (true) { var x = 5; } console.log(x); // 5</code>
        <p>
          This behavior changes, when using the let declaration introduced in
          ECMAScript 2015.
        </p>

        <code>if (true) { let y = 5; } console.log(y); // ReferenceError: y is not
          defined</code>
      </article>
    </section>
    <section class="main-section" id="Global_variables">
      <header>Global variables</header>
      <article>
        <p>
          Global variables are in fact properties of the global object. In web
          pages the global object is window, so you can set and access global
          variables using the window.variable syntax.
        </p>

        <p>
          Consequently, you can access global variables declared in one window or
          frame from another window or frame by specifying the window or frame
          name. For example, if a variable called phoneNumber is declared in a
          document, you can refer to this variable from an iframe as
          parent.phoneNumber.
        </p>
      </article>
    </section>
    <section class="main-section" id="Constants">
      <header>Constants</header>
      <article>
        <p>
          You can create a read-only, named constant with the const keyword. The
          syntax of a constant identifier is the same as for a variable
          identifier: it must start with a letter, underscore or dollar sign and
          can contain alphabetic, numeric, or underscore characters.
        </p>

        <code>const PI = 3.14;</code>
        <p>
          A constant cannot change value through assignment or be re-declared
          while the script is running. It has to be initialized to a value.
        </p>

        <p>
          The scope rules for constants are the same as those for let block scope
          variables. If the const keyword is omitted, the identifier is assumed to
          represent a variable.
        </p>

        <p>
          You cannot declare a constant with the same name as a function or
          variable in the same scope. For example:
        </p>

        <code>// THIS WILL CAUSE AN ERROR function f() {}; const f = 5; // THIS WILL
          CAUSE AN ERROR ALSO function f() { const g = 5; var g; //statements
          }</code>
        However, object attributes are not protected, so the following statement
        is executed without problems.
        <code>const MY_OBJECT = {"key": "value"}; MY_OBJECT.key = "otherValue";</code>
      </article>
    </section>
    <section class="main-section" id="Data_types">
      <header>Data types</header>
      <article>
        <p>The latest ECMAScript standard defines seven data types:</p>
        <ul>
          <li>
            <p>Six data types that are primitives:</p>
            <ul>
              <li>Boolean. true and false.</li>
              <li>
                null. A special keyword denoting a null value. Because <%=course%>
                is case-sensitive, null is not the same as Null, NULL, or any
                other variant.
              </li>
              <li>undefined. A top-level property whose value is undefined.</li>
              <li>Number. 42 or 3.14159.</li>
              <li>String. "Howdy"</li>
              <li>
                Symbol (new in ECMAScript 2015). A data type whose instances are
                unique and immutable.
              </li>
            </ul>
          </li>

          <li>and Object</li>
        </ul>
        Although these data types are a relatively small amount, they enable you
        to perform useful functions with your applications. Objects and functions
        are the other fundamental elements in the language. You can think of
        objects as named containers for values, and functions as procedures that
        your application can perform.
      </article>
    </section>
    <section class="main-section" id="Reference">
      <header>Reference</header>
      <article>
        <ul>
          <li>
            All the documentation in this page is taken from
            <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide" target="_blank">MDN</a>
          </li>
        </ul>
      </article>
    </section>
  </main>
</section>
  </section>
    <section id="marzen" class="tab-panel">
 <jsp:include page="usercommonplaylist.jsp" />
  </section>
  
  
<%--     <section id="recorded" class="tab-panel">
<!-- Main Wrapper Start -->
<div style="width: 943px; margin:65px;width:90%">

  <h2>Recorded Sessions</h2>

<!-- Media Contact Start -->
<div style="font-weight: normal; color: #777; margin: 45px 0; padding: 20px 0; border-top: 1px solid #bdbdbd; border-bottom: 1px solid #bdbdbd; clear:both;">For any questions about this sessions, please contact Vignesh at vignesh@123.com. For all other questions, please contact admin@vedhaelearn.com.</div>
  <!-- Media Contact End -->

<!-- Row One Start -->
<div style="margin: 30px 0; clear: both;">

<!-- Column One Start -->
<div style="float: left; width: 31%;">
<div style="width: 100%;">
<div style="font-weight: bold; font-size: 24px; height: 40px;">Who is This course for?</div>
<div style="font-weight: normal; color: #777; padding: 10px 0 0; margin: 12px 0 20px; font-size: 16px;">Sunday, Mar 12 @ 10:00 AM CDT</div>
<div><iframe src="images/v1.mp4" width="80%; height:100%px;"></iframe></div>
</div>
</div>
<!-- Column One End -->

<!-- Column Two Start -->
<div style="float: left; width: 33%; margin: 0 20px;">
<div style="width: 100%;">
<div style="font-weight: bold; font-size: 24px; height: 40px;">What is <%=course%>?</div>
<div style="font-weight: normal; color: #777; padding: 10px 0 0; margin: 12px 0 20px; font-size: 16px;">Sunday, Mar 12 @ 10:00 AM CDT</div>
<div><iframe src="images/v2.mp4" width="80%; height:100%px;"></iframe></div>
</div>
</div>
<!-- Column Two End -->

<!-- Column Three Start -->
<div style="float: left; width: 31%;">
<div style="width: 100%;">
<div style="font-weight: bold; font-size: 24px; height: 40px;">Companies that use <%=course%>?</div>
<div style="font-weight: normal; color: #777; padding: 10px 0 0; margin: 12px 0 20px; font-size: 16px;">Sunday, Mar 12 @ 3:00 PM CDT</div>
<div><iframe src="images/v1.mp4" width="80%; height:100%px;"></iframe></div>
</div>
</div>
<!-- Column Three End -->
<div style="clear: both;"></div>
<!-- Clear -->

</div>
<!-- Row One End -->

<!-- Row Two Start -->
<div style="margin: 30px 0; clear: both;">

<!-- Column One Start -->
<div style="float: left; width: 31%;">
<div style="width: 100%;">
<div style="font-weight: bold; font-size: 24px; height: 40px;"><%=course%> Design pattern</div>
<div style="font-weight: normal; color: #777; padding: 10px 0 0; margin: 12px 0 20px; font-size: 16px;">Sunday, Mar 12 @ 4:00 PM CDT</div>
<div><iframe src="images/v2.mp4" width="80%; height:100%px;"></iframe></div>
</div>
</div>
<!-- Column One End -->

<!-- Column Two Start -->
<div style="float: left; width: 33%; margin: 0 20px;">
<div style="width: 100%;">
<div style="font-weight: bold; font-size: 24px; height: 40px;"><%=course%> Project</div>
<div style="font-weight: normal; color: #777; padding: 10px 0 0; margin: 12px 0 20px; font-size: 16px;">Monday, Mar 13 @ 3:00 PM CDT</div>
<div><iframe src="images/v1.mp4" width="80%; height:100%px;"></iframe></div>
</div>
</div>
<!-- Column Two End -->

<!-- Column Three Start -->
<div style="float: left; width: 31%;">
<div style="width: 100%;">
<div style="font-weight: bold; font-size: 24px; height: 40px;">Hello World Application</div>
<div style="font-weight: normal; color: #777; padding: 10px 0 0; margin: 12px 0 20px; font-size: 16px;">Monday, Mar 13 @ 4:00 PM CDT</div>
<div><iframe src="images/v2.mp4" width="80%; height:100%px;"></iframe></div>
</div>
</div>
<!-- Column Three End -->
<div style="clear: both;"></div>
<!-- Clear -->

</div>
<!-- Row Two End -->

<!-- Row Three Start -->
<div style="margin: 30px 0; clear: both;">

<!-- Column One Start -->
<div style="float: left; width: 31%;">
<div style="width: 100%;">
<div style="font-weight: bold; font-size: 24px; height: 40px;">Club 18 Panel (Live)</div>
<div style="font-weight: normal; color: #777; padding: 10px 0 0; margin: 12px 0 20px; font-size: 16px;">Tuesday, July 14 @ 3:00 PM CDT</div>
<div style="background-color: #e4e4e4; padding: 20px; height: 154px;">Unfortunately, our Club 18 Panel is not available as a recording and was only available to watch live.</div>
</div>
</div>
<!-- Column One End -->

<!-- Column Two Start -->
<div style="float: left; width: 33%; margin: 0 20px;">
<div style="width: 100%;">
<div style="font-weight: bold; font-size: 24px; height: 40px;">Model Form</div>
<div style="font-weight: normal; color: #777; padding: 10px 0 0; margin: 12px 0 20px; font-size: 16px;">Tuesday, Mar 14 @ 4:00 PM CDT</div>
<div><iframe src="images/v1.mp4" width="80%; height:100%px;"></iframe></div>
</div>
</div>

</div>

</div>

  </section> --%>
  
  
  <section id="lectures" class="tab-panel" >

<div class="banner"></div>
<header id="header" >
  <nav class="flex flex-row flex-center">
    <div class="navbar-brand flex flex-row">
      <%-- <img id="logo" width=100 src="https://www.twine.net/blog/wordpress/wp-content/uploads/2022/07/<%=course%>logo.png" /> --%>
      <span id="title" style="color:#0b0742"><%=course%></sneeky>
    </div>
 
  </nav>
</header>
<section class="technical_sec flex flex-row">
  <nav id="navbar" class="nav-bar technical_topic">
    <header><%=course%> Notes</header>
    <ul class="navbar-nav flex flex-column">
      <li class="topic">
        <a class="nav-link nav-menu" href="#Introduction">Introduction</a>
      </li>
      <li class="topic">
        <a class="nav-link nav-menu" href="#Pre-requisites">Requirements</a>
      </li>
      <li class="topic">
        <a class="nav-link nav-menu" href="#JavaScript_and_Java">JavaScript and Java</a>
      </li>
      <li class="topic">
        <a class="nav-link nav-menu" href="#Hello_world">Hello world</a>
      </li>
      <li class="topic">
        <a class="nav-link nav-menu" href="#Variables">Variables</a>
      </li>
      <li class="topic">
        <a class="nav-link nav-menu" href="#Declaring_variables">Declaring variables</a>
      </li>
      <li class="topic">
        <a class="nav-link nav-menu" href="#Variable_scope">Variable scope</a>
      </li>
      <li class="topic">
        <a class="nav-link nav-menu" href="#Global_variables">Global variables</a>
      </li>
      <li class="topic">
        <a class="nav-link nav-menu" href="#Constants">Constants</a>
      </li>
      <li class="topic">
        <a class="nav-link nav-menu" href="#Data_types">Data types</a>
      </li>
      <li class="topic">
        <a class="nav-link nav-menu" href="#Reference">Reference</a>
      </li>
    </ul>
  </nav>
  <main id="main-doc" class="technical_content flex-major">
    <section class="main-section" id="Introduction">
      <header>Introduction</header>
      <article>
        <p>
          <%=course%> is a cross-platform, object-oriented scripting language. It
          is a small and lightweight language. Inside a host environment (for
          example, a web browser), <%=course%> can be connected to the objects of
          its environment to provide programmatic control over them.
        </p>

        <p>
          <%=course%> contains a standard library of objects, such as Array, Date,
          and Math, and a core set of language elements such as operators, control
          structures, and statements. Core <%=course%> can be extended for a
          variety of purposes by supplementing it with additional objects; for
          example:
        </p>
        <ul>
          <li>
            Client-side <%=course%> extends the core language by supplying objects
            to control a browser and its Document Object Model (DOM). For example,
            client-side extensions allow an application to place elements on an
            HTML form and respond to user events such as mouse clicks, form input,
            and page navigation.
          </li>
          <li>
            Server-side <%=course%> extends the core language by supplying objects
            relevant to running <%=course%> on a server. For example, server-side
            extensions allow an application to communicate with a database,
            provide continuity of information from one invocation to another of
            the application, or perform file manipulations on a server.
          </li>
        </ul>
      </article>
    </section>
    <section class="main-section" id="Pre-requisites">
      <header>Pre-requisites</header>
      <article>
        <p>This guide assumes you have the following basic background:</p>

        <ul>
          <li>
            A general understanding of the Internet and the World Wide Web (WWW).
          </li>
          <li>Good working knowledge of HyperText Markup Language (HTML).</li>
          <li>
            Some programming experience. If you are new to programming, try one of
            the tutorials linked on the main page about JavaScript.
          </li>
        </ul>
      </article>
    </section>
    <section class="main-section" id="JavaScript_and_Java">
      <header>JavaScript and Java</header>
      <article>
        <p>
          JavaScript and Java are similar in some ways but fundamentally different
          in some others. The JavaScript language resembles Java but does not have
          Java's static typing and strong type checking. JavaScript follows most
          Java expression syntax, naming conventions and basic control-flow
          constructs which was the reason why it was renamed from LiveScript to
          JavaScript.
        </p>

        <p>
          In contrast to Java's compile-time system of classes built by
          declarations, JavaScript supports a runtime system based on a small
          number of data types representing numeric, Boolean, and string values.
          JavaScript has a prototype-based object model instead of the more common
          class-based object model. The prototype-based model provides dynamic
          inheritance; that is, what is inherited can vary for individual objects.
          JavaScript also supports functions without any special declarative
          requirements. Functions can be properties of objects, executing as
          loosely typed methods.
        </p>
        <p>
          JavaScript is a very free-form language compared to Java. You do not
          have to declare all variables, classes, and methods. You do not have to
          be concerned with whether methods are public, private, or protected, and
          you do not have to implement interfaces. Variables, parameters, and
          function return types are not explicitly typed.
        </p>
      </article>
    </section>
    <section class="main-section" id="Hello_world">
      <header>Hello world</header>
      <article>
        To get started with writing JavaScript, open the Scratchpad and write your
        first "Hello world" JavaScript code:
        <code>function greetMe(yourName) { alert("Hello " + yourName); }
          greetMe("World");
        </code>

        Select the code in the pad and hit Ctrl+R to watch it unfold in your
        browser!
      </article>
    </section>
    <section class="main-section" id="Variables">
      <header>Variables</header>
      <p>
        You use variables as symbolic names for values in your application. The
        names of variables, called identifiers, conform to certain rules.
      </p>
      <p>
        A <%=course%> identifier must start with a letter, underscore (_), or
        dollar sign ($); subsequent characters can also be digits (0-9). Because
        <%=course%> is case sensitive, letters include the characters "A" through
        "Z" (uppercase) and the characters "a" through "z" (lowercase).
      </p>
      <p>
        You can use ISO 8859-1 or Unicode letters such as å and ü in identifiers.
        You can also use the Unicode escape sequences as characters in
        identifiers. Some examples of legal names are Number_hits, temp99, and
        _name.
      </p>
    </section>
    <section class="main-section" id="Declaring_variables">
      <header>Declaring variables</header>
      <article>
        You can declare a variable in three ways:
        <p>
          With the keyword var. For example, <code>var x = 42.</code> This syntax
          can be used to declare both local and global variables.
        </p>
        <p>
          By simply assigning it a value. For example, <code>x = 42.</code> This
          always declares a global variable. It generates a strict <%=course%>
          warning. You shouldn't use this variant.
        </p>
        <p>
          With the keyword let. For example,<code> let y = 13.</code> This syntax
          can be used to declare a block scope local variable. See Variable scope
          below.
        </p>
      </article>
    </section>
    <section class="main-section" id="Variable_scope">
      <header>Variable scope</header>
      <article>
        <p>
          When you declare a variable outside of any function, it is called a
          global variable, because it is available to any other code in the
          current document. When you declare a variable within a function, it is
          called a local variable, because it is available only within that
          function.
        </p>

        <p>
          <%=course%> before ECMAScript 2015 does not have block statement scope;
          rather, a variable declared within a block is local to the function (or
          global scope) that the block resides within. For example the following
          code will log 5, because the scope of x is the function (or global
          context) within which x is declared, not the block, which in this case
          is an if statement.
        </p>
        <code>if (true) { var x = 5; } console.log(x); // 5</code>
        <p>
          This behavior changes, when using the let declaration introduced in
          ECMAScript 2015.
        </p>

        <code>if (true) { let y = 5; } console.log(y); // ReferenceError: y is not
          defined</code>
      </article>
    </section>
    <section class="main-section" id="Global_variables">
      <header>Global variables</header>
      <article>
        <p>
          Global variables are in fact properties of the global object. In web
          pages the global object is window, so you can set and access global
          variables using the window.variable syntax.
        </p>

        <p>
          Consequently, you can access global variables declared in one window or
          frame from another window or frame by specifying the window or frame
          name. For example, if a variable called phoneNumber is declared in a
          document, you can refer to this variable from an iframe as
          parent.phoneNumber.
        </p>
      </article>
    </section>
    <section class="main-section" id="Constants">
      <header>Constants</header>
      <article>
        <p>
          You can create a read-only, named constant with the const keyword. The
          syntax of a constant identifier is the same as for a variable
          identifier: it must start with a letter, underscore or dollar sign and
          can contain alphabetic, numeric, or underscore characters.
        </p>

        <code>const PI = 3.14;</code>
        <p>
          A constant cannot change value through assignment or be re-declared
          while the script is running. It has to be initialized to a value.
        </p>

        <p>
          The scope rules for constants are the same as those for let block scope
          variables. If the const keyword is omitted, the identifier is assumed to
          represent a variable.
        </p>

        <p>
          You cannot declare a constant with the same name as a function or
          variable in the same scope. For example:
        </p>

        <code>// THIS WILL CAUSE AN ERROR function f() {}; const f = 5; // THIS WILL
          CAUSE AN ERROR ALSO function f() { const g = 5; var g; //statements
          }</code>
        However, object attributes are not protected, so the following statement
        is executed without problems.
        <code>const MY_OBJECT = {"key": "value"}; MY_OBJECT.key = "otherValue";</code>
      </article>
    </section>
    <section class="main-section" id="Data_types">
      <header>Data types</header>
      <article>
        <p>The latest ECMAScript standard defines seven data types:</p>
        <ul>
          <li>
            <p>Six data types that are primitives:</p>
            <ul>
              <li>Boolean. true and false.</li>
              <li>
                null. A special keyword denoting a null value. Because <%=course%>
                is case-sensitive, null is not the same as Null, NULL, or any
                other variant.
              </li>
              <li>undefined. A top-level property whose value is undefined.</li>
              <li>Number. 42 or 3.14159.</li>
              <li>String. "Howdy"</li>
              <li>
                Symbol (new in ECMAScript 2015). A data type whose instances are
                unique and immutable.
              </li>
            </ul>
          </li>

          <li>and Object</li>
        </ul>
        Although these data types are a relatively small amount, they enable you
        to perform useful functions with your applications. Objects and functions
        are the other fundamental elements in the language. You can think of
        objects as named containers for values, and functions as procedures that
        your application can perform.
      </article>
    </section>
    <section class="main-section" id="Reference">
      <header>Reference</header>
      <article>
        <ul>
          <li>
            All the documentation in this page is taken from
            <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide" target="_blank">MDN</a>
          </li>
        </ul>
      </article>
    </section>
  </main>
</section>
  </section>
  
  
  
   <section id="interview" class="tab-panel">

    <div id="faq" class="faq-body">
      <div class="faq-header">
        <h3 class="faq-title">Important Interview related Questions</h3>
        <div class="seperator"></div>
      </div>
      <div class="faq-list">
          <div>
            <details open>
              <summary title="What is <%=course%>?">What is <%=course%>?</summary>
              <p class="faq-content"><%=course%> is an interpreted, high-level, general-purpose programming language. It is widely used for web development, scientific computing, data analysis, artificial intelligence, and more</p>
            </details>
            </div>
          <div>
            <details>
              <summary title="What is the difference between <%=course%> 2 and <%=course%> 3?">What is the difference between <%=course%> 2 and <%=course%> 3?</summary>
              <p class="faq-content"><%=course%> 2 and <%=course%> 3 have some significant differences in syntax and functionality. <%=course%> 3 is the latest version and is not backward compatible with <%=course%> 2. Some of the differences include print statements, division, and string handling.</p>
            </details>
            </div>
          <div>
            <details>
              <summary title="How do you install <%=course%>?">How do you install <%=course%>?</summary>
              <p class="faq-content">You can download and install <%=course%> from the official website. Choose the version you want and download the installer for your operating system. Follow the installation instructions to install <%=course%> on your machine.</p>
            </details>
            </div>
          <div>
            <details>
              <summary title="What are the data types in <%=course%>?">What are the data types in <%=course%>?</summary>
              <p class="faq-content"><%=course%> supports several data types, including integers, floating-point numbers, complex numbers, strings, Boolean, and more. You can also create your own custom data types using classes.</p>
            </details>
            </div>
          <div>
            <details>
              <summary title="How do you declare a variable in <%=course%>?">How do you declare a variable in <%=course%>?</summary>
              <p class="faq-content">In <%=course%>, you don't need to specify the data type when declaring a variable. You can simply assign a value to a variable using the "=" operator. <br>For example: x=5  </p>
            </details>
            </div>
          <div>
                <details>
                    <summary title="What is a tuple in <%=course%>?">What is a tuple in <%=course%>?</summary>
                    <p class="faq-content">A tuple is a collection of ordered, immutable objects. You can create a tuple using parentheses. <br>For example:t = (1, 2, 3).</p>
                </details>
            </div>
               <div>
                <details>
                    <summary title="What is a list in <%=course%>?">What is a list in <%=course%>?</summary>
                    <p class="faq-content">A list is a collection of ordered, mutable objects. You can create a list using square brackets.<br>For example:l = [1, 2, 3].</p>
                </details>
            </div>
               <div>
                <details>
                    <summary title="How do you loop through a list in <%=course%>?">How do you loop through a list in <%=course%>?</summary>
                    <p class="faq-content">You can loop through a list using a for loop. <br>For example:for item in my_list:
    print(item).</p>
                </details>
            </div>
               <div>
                <details>
                    <summary title="What is a dictionary in <%=course%>?">What is a dictionary in <%=course%>?</summary>
                    <p class="faq-content">A dictionary is a collection of unordered key-value pairs. You can create a dictionary using curly braces.  <br>For example:d = {'name': 'John', 'age': 30}.</p>
                </details>
            </div>
               <div>
                <details>
                    <summary title="How do you define a function in <%=course%>?">How do you define a function in <%=course%>?</summary>
                    <p class="faq-content">You can define a function using the "def" keyword followed by the function name and any parameters. <br>For example:def my_function(param1, param2)://Code goes here</p>
                </details>
            </div>
               <div>
                <details>
                    <summary title="What is a module in <%=course%>?">What is a module in <%=course%>?</summary>
                    <p class="faq-content">A module is a file containing <%=course%> definitions and statements. You can import a module using the "import" keyword. <br>For example:import math.</p>
                </details>
            </div>
      </div>
    </div>

  </section>
  
  
  
</div>
<!-- Main Wrapper End -->



  
  </div>
  
    <%
             }
             rst.close();
             stmtz.close();
             connt.close();
         } catch(Exception e) {
             e.printStackTrace();
         }
         %>


</body>
</html>