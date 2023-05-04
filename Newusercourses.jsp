<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/1ff71a7bde.js" crossorigin="anonymous"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"> 
<link rel="stylesheet" href="css/Home.css">
 <script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
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
 margin-top: -20%;
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
margin-right:10%;
margin-top: -5%;
}


.landing {
  display: flex;
  align-items: center;
  padding: 40px 0;
  margin-left: 11%;
  overflow-x: hidden;
}

@media (max-width: 992px) {
  .landing {
    flex-direction: column-reverse;
    margin-left: 0;
    padding-bottom: 80px;
    row-gap: 60px;
  }
}

@media (max-width: 280px) {
  .landing {
    padding-bottom: 40px;
  }
}

.landing .landing-text {
  flex: 1;
  min-width: 465px;
}

@media (max-width: 992px) {
  .landing .landing-text {
    max-width: 95%;
    min-width: 0;
    text-align: center;
  }
}

.landing .landing-text h1 {
  width: 100%;
  font-size: 3.9em;
  line-height: 1.15;
}

@media (max-width: 992px) {
  .landing .landing-text h1 {
    font-size: 3em;
  }
}

@media (max-width: 500px) {
  .landing .landing-text h1 {
    font-size: 2em;
  }
}

.landing .landing-text p {
  font-size: 18px;
  max-width: 500px;
  margin: 0 0 29.41176px;
}

@media (max-width: 992px) {
  .landing .landing-text p {
    font-size: 16px;
    margin: 10px auto 29.41176px;
  }
}

@media (max-width: 500px) {
  .landing .landing-text p {
    font-size: 15px;
  }
}

.landing .landing-image {
  position: relative;
  right: -70px;
}

@media (max-width: 992px) {
  .landing .landing-image {
    flex-basis: initial;
    right: -240px;
  }
}

@media (max-width: 767px) {
  .landing .landing-image {
    right: -170px;
  }
}

@media (max-width: 500px) {
  .landing .landing-image {
    right: -110px;
  }
}

@media (max-width: 375px) {
  .landing .landing-image {
    right: -120px;
  }
}

@media (max-width: 280px) {
  .landing .landing-image {
    right: -70px;
  }
}

@media (min-width: 1100px) {
  .landing .landing-image {
    right: -130px;
  }
}

.landing .landing-image img {
  width: 100%;
}
.menu-item__icon img {
	max-width: 48px;
	border-radius: 100px;
	height: auto;
	-webkit-box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
	display: block;
	margin: 0 auto 15px
}

  
  .head{
  
  width:100%;
  margin-top:-70px;
  align-items:center;
  justify-content:center;
  
  }
  
  .head h1{
  font-weight:600;
  align-items:center;
  justify-content:center;
  margin-left:140px;
  font-size:50px;
  color:#0B0742;
  margin-top:150px;
  margin-right:-10%;;
  font-family: 'Poppins', sans-serif;
  
  }
  
  .head p{
  margin-left:220px;
  line-height:80px;
  color:#0B0742;
  }
  
  .search-bar{
  width:100%;
  max-width:700px;
  background:linear-gradient(to right,#d5d0dd,#fff);
  display:flex;
  align-items:center;
  border-radius:60px;
  padding:5px 30px;
  margin-top:-15%;
  position:absolute;
  margin-left: 25%;
  }
  
  .search-bar input{
  background:transparent;
  flex:1;
  border:0;
  outline:none;
  padding:24px 20px;
  font-size:20px;
  color:#0B0742;
  }
  
  ::placeholder{
    color:#0B0742;
    }
  .search-bar button img{
  width:20px;
  }
  
  .search-bar button{
  border:0;
  border-radius:50%;
  width:60px;
  height:60px;
  background:#d5d0dd;
  }
  
    .cate-containerz{
  max-width: 80%;
  margin: 0 auto;
  text-align: center;
  padding:25px 20px;
}

.cate-containerz .headings{
  font-size: 40px;
  margin-bottom: 20px;
  color:#334;
}

.cate-containerz .box-containerz{
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
  gap:20px;
}

.cate-containerz .box-containerz .boxes{
  background-color: #fff;
  padding:20px;
  border-radius: 5px;
  box-shadow: 0 5px 10px rgba(0,0,0,.2);
  
}

.cate-containerz .box-containerz .boxes:nth-child(1),
.cate-containerz .box-containerz .boxes:nth-child(2),
.cate-containerz .box-containerz .boxes:nth-child(3){
  display: inline-block;
}

.cate-containerz .box-containerz .boxes .imagez{
  margin-bottom: 20px;
  overflow: hidden;
  height: 250px;

}

.cate-containerz .box-containerz .boxes .imagez img{
  height: 100%;
  width: 100%;
  object-fit: cover;
}

.cate-containerz .box-containerz .boxes:hover .imagez img{
  transform: scale(1.1);
}

.cate-containerz .box-containerz .boxes .contentz h3{
  font-size: 20px;
  color:#334;
}

.cate-containerz .box-containerz .boxes .contentz p{
  font-size: 15px;
  color:#777;
  line-height: 2;
  padding:15px 0;
}

.cate-containerz .box-containerz .boxes .contentz .btn{
  display: inline-block;
  padding:10px 30px;
  border:1px solid #334;
  color:#fff;
  font-size: 16px;
   border-radius:20px;
    background-color: #0B0742;
}

.cate-containerz .box-containerz .boxes .contentz .btn:hover{
  background-color: #83799c;
  border-color:#83799c;
  color:#0B0742;
  transform:scale(1.1);
}

.cate-containerz .box-containerz .boxes .contentz .icons{
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin-top: 20px;
  padding-top: 15px;
  border-top:1px solid #334;
}

.cate-containerz .box-containerz .boxes .contentz .icons span{
  font-size: 14px;
  color:#0B0742;
}

.cate-containerz .box-containerz .boxes .contentz .icons span i{
  color:#83799c;
  padding-right: 5px;
}

footer{
width: 100%;
position: relative;
min-height:50vh;
bottom: 0;
background: linear-gradient(to right,#83799c, #aba3bc,#d5d0dd,#fff);
color: 	#000000;
padding: 100px 0 30px;
border-top-left-radius: 125px;
font-size: 13px;
line-height: 20px;
margin-top:3%;

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
  
 .service-block-container {
   display: flex;
   justify-content: center;
   margin-top:20px;
}
.mb-sm{
	margin-top:25px;
}
.service-block {
   min-width: 180px;
   width: 180px;
   height: 200px;
   position: relative;
   transition: all 0.3s ease-in-out;
   overflow: hidden;
   display: flex;
   justify-content: center;
   text-align: center;
   background-color: #fff;
   color: #0B0742;
   border: 1px solid #ccc;
   margin-bottom: 30px;
   padding: 0 10px;
}

.service-underlay {
   position: absolute;
   height: 50px;
   bottom: 0;
   left: 0;
   right: 0;
   background-color: #d5d0dd;
   padding-top: 18px;
   transition: all 0.3s ease-in-out;
   font-size:0.8rem;
   justify-items:center;
   align-items:center;
   color:#0B0742;
   font-weight:600;
}

.service-icon {
   position: absolute;
   top: 30px;
   left:0; 
   right: 0;
   font-size: 30px;
   transition: all 0.3s ease-in-out;
   color: #83799c;
}

.service-name {
   margin: 0 auto;
   display: block;
   text-transform: Capitalize;
   margin-top:-5px;
}

.service-desc {
   display: block;
   font-size: 12px;
   margin-top: 75px;
}

.service-underlay .cta {
   margin-top: 115px;
   display: inline-block;
   color: #fff;
   font-size: 14px;
}

.service-block:hover {
   transform: scale(1.1);
   cursor: pointer;
   border: 1px solid #141b41;
}

.service-block:hover .service-underlay {
   height: 200px;
   background-color: #141b41;
}

.service-block:hover .service-icon {
   color: #fff;
   transform: scale(1.5);
   top: 80px;
}

.service-block:hover .service-name {
   color: #fff;
   font-weight: bold;
}

.service-block:hover .service-desc {
   display: none;
}

.service-block .service-underlay .cta:hover {
   text-decoration: none;
}

 #slipper{

  display: grid;
  height: 100%;
  place-items: center;
  text-align: center;
  background: #fff;
} 

.slip{
  max-width: 1100px;
  display: flex;
  margin-top: 5%;
}
.slip .contain{
  flex: 1;
  margin: 0 10px;
  background: #fff;
}

 .boxy{
  background-color: #fff;
  padding:20px;
  border-radius: 5px;
  box-shadow: 0 5px 10px rgba(0,0,0,.2);
  display: none;
}

.boxy:nth-child(1),
.boxy:nth-child(2),
.boxy:nth-child(3){
  display: inline-block;
}

.boxy .image{
  margin-bottom: 20px;
  overflow: hidden;
  height: 250px;

}

.boxy .image img{
  height: 100%;
  width: 100%;
  object-fit: cover;
}

.boxy:hover .image img{
  transform: scale(1.1);
}

.boxy .contenty h3{
  font-size: 20px;
  color:#334;
}

.boxy .contenty p{
  font-size: 15px;
  color:#777;
  line-height: 2;
  padding:15px 0;
}

.boxy .contenty .btn{
  display: inline-block;
  padding:10px 30px;
  border:1px solid #334;
  color:#fff;
  font-size: 16px;
   border-radius:20px;
    background-color: #0B0742;
}
 .boxy .contenty .btn:hover{
  background-color: #83799c;
  border-color:#83799c;
  color:#0B0742;
  transform:scale(1.1);
}
.boxy .contenty .icons{
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin-top: 20px;
  padding-top: 15px;
  border-top:1px solid #334;
}

.boxy .contenty .icons span{
  font-size: 14px;
  color:#0B0742;
}

.boxy .contenty .icons span i{
  color:#83799c;
  padding-right: 5px;
}
.logo{
width:15%;
margin-right:5%;
}
</style>
<body>
<main class="main">
  <!-- Header -->
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
           <div class="containor py-5 " style="margin-top:-5%">
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
  <!-- Landing -->
  <section class="landing" style="margin-top: -10%;">
    <div class="landing-text"">
      <h1 style="color: #0b0742;font-size: 4rem">Browse online courses in a variety of subjects</h1>
    <p style="font-size: 1.5rem">Vedha courses found below can be audited free or students can choose to receive a verified certificate for a small fee. Select a course to learn more.</p>

    </div>
    <div class="landing-image">
      <img src="https://sb.kaleidousercontent.com/67418/658x756/361846cee7/all-pages-2.png" alt="Working Illustration" style="width:50%;" />
    </div>
  </section>
  </main>
<div class="toph">

    
       <div class="sea-container" >

     <form class="search-bar" >
       <input type="text" placeholder="search Your Courses" id="filterInput" name="q" onkeyup="filterFunction()">
       <button type="submit" id="search"><img src="images/search.png"></button>
       </form>
    
   <!--  ------------------------- -->
   
   <div class="cate-containerz" style="margin-top: 20%;">


   <div class="box-containerz">
<ul id="courselist" style=" list-style-type: none;display: grid;grid-template-columns:repeat(3,1fr);grid-gap:20px;list-style:none;">
<%@ page import="java.util.Base64" %>
<%
		// connect to database
		Class.forName("com.mysql.cj.jdbc.Driver");
		 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?","root","saranya@2001");

		// execute query to get new courses
		 query = "SELECT * FROM newlyaddedcourses ORDER BY upload_date DESC LIMIT 10";
		 stmt = con.prepareStatement(query);
		 rs = stmt.executeQuery();

		// display new courses
		while (rs.next()) {
			String courseName = rs.getString("course_name");
			String courseId = rs.getString("course_id");
			String certificate = rs.getString("certificate");
			String description = rs.getString("description");
			String instructorName = rs.getString("instructor_name");
			String uploadDate = rs.getString("upload_date");
			Blob imageBlob = rs.getBlob("course_image");
			byte[] imageBytes = imageBlob.getBytes(1, (int) imageBlob.length());
			String imageBase64 = Base64.getEncoder().encodeToString(imageBytes);
	%>
      <li class="name-item">
      <div class="boxes">
         <div class="imagez">
             <img src="data:image/png;base64,<%= imageBase64 %>" alt="<%= courseName %>">    
         </div>
         <div class="contentz">
            <h3><%= courseName %></h3>
      <p><%= description %></p>
 <button name="courseName" value="<%= courseName %>" onclick="location.href='newlyuseraddedcoursedesc.jsp?courseName=<%= courseId %>&useremail=<%= session.getAttribute("email") %>&course=<%= courseName %>'" class="btn">See More</button>
      <div class="icons">
        <span> <i class="fas fa-calendar"></i> <%= uploadDate %> </span>
        <span> <i class="fas fa-user"></i> <%= instructorName %> </span>
            </div>
         </div>
      </div>
      </li>
            	<%
		}

		// close database connection
		rs.close();
		stmt.close();
		con.close();
	%>
  
       
</ul>
   </div>

</div>
</div>
  </div>  
<script>
function filterFunction() {
  // Get input value
  var input = document.getElementById("filterInput");
  var filter = input.value.toUpperCase();

  // Get course list
  var ul = document.getElementById("courselist");
  var li = ul.getElementsByTagName("li");

  // Loop through all list items, and hide those who don't match the search query
  for (var i = 0; i < li.length; i++) {
    var h3 = li[i].getElementsByTagName("h3")[0];
    var txtValue = h3.textContent || h3.innerText;
    if (txtValue.toUpperCase().indexOf(filter) > -1) {
      li[i].style.display = "";
    } else {
      li[i].style.display = "none";
    }
  }
}
</script>










<section class="added">
<h1 id="new-course-heading"><center>Newly added Courses</center></h1>

  
   <div class="cate-containerz" id="new-courses-container">

   <div class="box-containerz">
<ul id="courselist" style=" list-style-type: none;display: grid;grid-template-columns:repeat(3,1fr);grid-gap:20px;list-style:none;">
<%@ page import="java.util.Base64" %>
<%
		// connect to database
		Class.forName("com.mysql.cj.jdbc.Driver");
		 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?","root","saranya@2001");

		// execute query to get new courses
		 query = "SELECT * FROM newlyaddedcourses ORDER BY upload_date DESC LIMIT 3";
		 stmt = con.prepareStatement(query);
		 rs = stmt.executeQuery();

		// display new courses
		while (rs.next()) {
			String courseName = rs.getString("course_name");
			String courseId = rs.getString("course_id");
			String certificate = rs.getString("certificate");
			String description = rs.getString("description");
			String instructorName = rs.getString("instructor_name");
			String uploadDate = rs.getString("upload_date");
			Blob imageBlob = rs.getBlob("course_image");
			byte[] imageBytes = imageBlob.getBytes(1, (int) imageBlob.length());
			String imageBase64 = Base64.getEncoder().encodeToString(imageBytes);
	%>
      <li class="name-item"  data-name="python">
      <div class="boxes">
         <div class="imagez">
            <img src="data:image/png;base64,<%= imageBase64 %>" alt="<%= courseName %>">
         </div>
         <div class="contentz">
            <h3><%= courseName %></h3>
      <p><%= description %></p>
 <button name="courseName" value="<%= courseName %>" onclick="location.href='newlyuseraddedcoursedesc.jsp?courseName=<%= courseId %>&useremail=<%= session.getAttribute("email") %>&course=<%= courseName %>'" class="btn">See More</button>
      <div class="icons">
        <span> <i class="fas fa-calendar"></i> <%= uploadDate %> </span>
        <span> <i class="fas fa-user"></i> <%= instructorName %> </span>
                    </div>
         </div>
      </div>
      </li>
                    	<%
		}

		// close database connection
		rs.close();
		stmt.close();
		con.close();
	%>
      </ul>
      </div>
      </div>

</section>	
<script>
  const newCourseSection = document.querySelector('.added');
  const newCourseHeading = document.getElementById('new-course-heading');
  const boxes = newCourseSection.querySelectorAll('.box-containerz .boxes');

  if (boxes.length > 0) {
    newCourseHeading.style.display = "block";
  } else {
    newCourseHeading.style.display = "none";
  }
</script>

	
<section id="slipper" style="margin-top: 3%;">
  <h1 class="headings">Most Enrolled Course</h1>

    <div class="slip owl-carousel">
          <%@ page import="java.util.Base64" %>
<%
		// connect to database
		Class.forName("com.mysql.cj.jdbc.Driver");
		 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?","root","saranya@2001");

		// execute query to get new courses
		 query = "SELECT * FROM newlyaddedcourses ORDER BY upload_date DESC LIMIT 10";
		 stmt = con.prepareStatement(query);
		 rs = stmt.executeQuery();

		// display new courses
		while (rs.next()) {
			String courseName = rs.getString("course_name");
			String courseId = rs.getString("course_id");
			String certificate = rs.getString("certificate");
			String description = rs.getString("description");
			String instructorName = rs.getString("instructor_name");
			String uploadDate = rs.getString("upload_date");
			Blob imageBlob = rs.getBlob("course_image");
			byte[] imageBytes = imageBlob.getBytes(1, (int) imageBlob.length());
			String imageBase64 = Base64.getEncoder().encodeToString(imageBytes);
	%>
      <div class="contain">

        <div class="boxy">
         <div class="image">
 <img src="data:image/png;base64,<%= imageBase64 %>" alt="<%= courseName %>">         </div>
         <div class="contenty">
            <h3><%= courseName %></h3>
<p><%= description %></p>
 <button name="courseName" value="<%= courseName %>" onclick="location.href='newlyuseraddedcoursedesc.jsp?courseName=<%= courseId %>&useremail=<%= session.getAttribute("email") %>&course=<%= courseName %>'" class="btn">See More</button>
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

      
     <!--  <div class="contain">
         <div class="boxy">
      <div class="image">
         <img src="https://assets.ithillel.ua/images/blog/cover/_transform_blogSplashSimple_desktop_2x/1078/java-logo.jpg" alt="">
      </div>
      <div class="contenty">
         <h3>Java</h3>
         <p>Within 10 days you will be coveresd with Java basics</p>
         <button name="cert" value="java" href="#" class="btn">See More</button>
         <div class="icons">
            <span> <i class="fas fa-calendar"></i> 20th Dec, 2022 </span>
            <span> <i class="fas fa-user"></i>  By out Top Instructor </span>
         </div>
      </div>
   </div>
      </div>
      <div class="contain">
           <div class="boxy">
      <div class="image">
         <img src="https://codequotient.com/blog/wp-content/uploads/2021/05/Featured-Image-9.jpg" alt="">
      </div>
      <div class="contenty">
         <h3>Python</h3>
         <p>Python Beginners course at Low cost & done at flexible hours</p>
         <button name="cert" value="python" href="#" class="btn">See More</button>
         <div class="icons">
            <span> <i class="fas fa-calendar"></i> 21st Dec, 2022 </span>
            <span> <i class="fas fa-user"></i> By out Top Instructor </span>
         </div>
      </div>
   </div>
      </div>
       <div class="contain">
          <div class="boxy">
      <div class="image">
         <img src="images/devo4.jpg" alt="">
      </div>
      <div class="contenty">
         <h3>HTML & CSS</h3>
         <p>Within 10 days you will be coveresd with HTML & CSS basics</p>
         <button name="cert" value="html" href="#" class="btn">See More</button>
         <div class="icons">
            <span> <i class="fas fa-calendar"></i> 20th Dec, 2022 </span>
            <span> <i class="fas fa-user"></i>  By out Top Instructor </span>
         </div>
      </div>
   </div>
      </div>
       <div class="contain">
         <div class="boxy">
             <div class="image">
                <img src="https://vegibit.com/wp-content/uploads/2014/04/Javascript-JS.png" alt="">
             </div>
             <div class="contenty">
                <h3>JavaScript</h3>
                <p>Within 10 days you will be coveresd with Js basics</p>
                <button name="cert" value="js" href="#" class="btn">See More</button>
                <div class="icons">
                   <span> <i class="fas fa-calendar"></i> 20th Dec, 2022 </span>
                   <span> <i class="fas fa-user"></i>  By out Top Instructor </span>
                </div>
             </div>
          </div>
      </div> 
      <div class="contain">
         <div class="boxy">
             <div class="image">
                <img src="https://appsero.com/app/uploads/2022/01/What-are-the-end-to-end-testing-best-practices.png" alt="">
             </div>
             <div class="contenty">
                <h3>Testing</h3>
                <p>Within 10 days you will be coveresd with Software testing basics</p>
                <button name="cert" value="testing" href="#" class="btn">See More</button>
                <div class="icons">
                   <span> <i class="fas fa-calendar"></i> 20th Dec, 2022 </span>
                   <span> <i class="fas fa-user"></i>  By out Top Instructor </span>
                </div>
             </div>
          </div>
      </div> -->
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
 
        
   
   

 <section class="section section-default mt-none mb-none section-services">
   <div class="container">
      <h1 class="mb-sm"><center>
         Courses <strong>Which might be Helpful for your career</strong></center>
      </h1>
      <div class="row">
         <div class="col-xs-12 col-sm-4 col-lg-2">
            <div class="service-block-container">
               <div class="service-block">
                  <div class="service-underlay">
                     <span class="service-name">
Web Applications
</span>
                     <a class="cta" href="/services/web-applications">Learn More</a>
                  </div>
                  <span class="service-icon">
<em class="fa fa-code"></em>
</span>
                  <span class="service-desc">
web applications for Beginner to Advanced level course
</span>
               </div>
            </div>
         </div>
         <div class="col-xs-12 col-sm-4 col-lg-2">
            <div class="service-block-container">
               <div class="service-block">
                  <div class="service-underlay">
                     <span class="service-name">
Mobile applications
</span>
                     <a class="cta" href="/services/enterprise-resource-planning">Learn More</a>
                  </div>
                  <span class="service-icon">
<em class="fa fa-mobile"></em>
</span>
                  <span class="service-desc">
Mobile applications for Beginner to Advanced level course
</span>
               </div>
            </div>
         </div>
         <div class="col-xs-12 col-sm-4 col-lg-2">
            <div class="service-block-container">
               <div class="service-block">
                  <div class="service-underlay">
                     <span class="service-name">
Programming languages
</span>
                     <a class="cta" href="/services/accounting-solutions">Learn More</a>
                  </div>
                  <span class="service-icon">
<em class="fa fa-tasks"></em>
</span>
                  <span class="service-desc">
Programming languages for Beginner to Advanced level course
</span>
               </div>
            </div>
         </div>
         <div class="col-xs-12 col-sm-4 col-lg-2">
            <div class="service-block-container">
               <div class="service-block">
                  <div class="service-underlay">
                     <span class="service-name">
Data Clouding
</span>
                     <a class="cta" href="/services/support-solutions">Learn More</a>
                  </div>
                  <span class="service-icon">
<em class="fa fa-cloud-upload"></em>
</span>
                  <span class="service-desc">
Data Clouding for Beginner to Advanced level course
</span>
               </div>
            </div>
         </div>
         <div class="col-xs-12 col-sm-4 col-lg-2">
            <div class="service-block-container">
               <div class="service-block">
                  <div class="service-underlay">
                     <span class="service-name">
Software Testing
</span>
                     <a class="cta" href="/services/bespoke-solutions">Learn More</a>
                  </div>
                  <span class="service-icon">
<em class="fa fa-bug"></em>
</span>
                  <span class="service-desc">
Software Testing Related Courses
</span>
               </div>
            </div>
         </div>
         <div class="col-xs-12 col-sm-4 col-lg-2">
            <div class="service-block-container">
               <div class="service-block">
                  <div class="service-underlay">
                     <span class="service-name">
Communications and Networking
</span>
                     <a class="cta" href="/services/infrastructure-planning">Learn More</a>
                  </div>
                  <span class="service-icon">
<em class="fa fa-globe"></em>
</span>
                  <span class="service-desc">
Communications and networking related Courses
</span>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>




 <footer id="fo">
        <div class="row">
        <div class="col">
            <p style="color: #0b0742;">Vedha is one of the World’s largest and cost-effective Online Learning platform. It is one place where you can get access to a plethora of courses. The best part is that courses from various domains are available and also they are available in various languages.</p>
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