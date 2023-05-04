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
      
              <script src="https://cdnjs.cloudflare.com/ajax/libs/fontawesome-iconpicker/3.0.0/js/fontawesome-iconpicker.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fontawesome-iconpicker/3.0.0/css/fontawesome-iconpicker.css">
<!--       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 -->   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">

   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <!---jquery--->
<!--    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
 -->    <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
   
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
 margin-top: -7%;
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
 
}

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
  background: #aba3bc;
  z-index: -1;
  transition: transform .3s ease;

} */


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

/* ----- Custom Labels ----- */


.form-control {
  display: block;
  width: 100%;
  padding: 0.75rem;
  font-size: 1rem;
  line-height: 1.5;
  color: #000000;
  background-color: #fff;
  background-clip: padding-box;
  border: 1px solid #ced4da;
  border-radius: 0.25rem;
  transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}

.form-control:focus {
  color: #000000;
  background-color: #fff;
  border-color: #80bdff;
  outline: 0;
  box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
}
.form-control::-webkit-input-placeholder {
  color: #9B9B9B;
  opacity: 1;
}

.form-control::-moz-placeholder {
  color: #9B9B9B;
  opacity: 1;
}

.form-control:-ms-input-placeholder {
  color: #9B9B9B;
  opacity: 1;
}

.form-control::-ms-input-placeholder {
  color: #9B9B9B;
  opacity: 1;
}

.form-control::placeholder {
  color: #9B9B9B;
  opacity: 1;
}

.custom-label,
.custom-control-label {
  font-weight: 600;
}
.custom-control-header {
  font-size: 1.15rem;
}

.custom-select {
  display: inline-block;
  width: 100%;
  height: calc(3rem + 2px);
  padding: 0.375rem 1.75rem 0.375rem 0.75rem;
  line-height: 1.5;
  color: #495057;
  vertical-align: middle;
  background: #fff url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 4 5'%3E%3Cpath fill='%23343a40' d='M2 0L0 2h4zm0 5L0 3h4z'/%3E%3C/svg%3E") no-repeat right 0.75rem center;
  background-size: 8px 10px;
  border: 1px solid #ced4da;
  border-radius: 0.25rem;
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
}

.custom-select:focus {
  border-color: #80bdff;
  outline: 0;
  box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.075), 0 0 5px rgba(128, 189, 255, 0.5);
}

.custom-select:focus::-ms-value {
  color: #495057;
  background-color: #fff;
}

/* .custom-control-label {
  font-weight: 500;
  font-size: 95%;
} */
.custom-control-spacer {
    padding: 0.75rem;
    margin-right: 0;
    margin-left: 0;
    border-width: .2rem;
}

.custom-radio .custom-control-input:checked~.custom-control-label::before {
    background-color: #48A9FD;
}

/* ----- Paya Recurring Switch ----- */

.switch {
  font-size: 1rem;
  position: relative;
}
.switch input {
  position: absolute;
  height: 1px;
  width: 1px;
  background: none;
  border: 0;
  clip: rect(0 0 0 0);
  clip-path: inset(50%);
  overflow: hidden;
  padding: 0;
}
.switch input + label {
  position: relative;
  min-width: calc(calc(2.375rem * .8) * 2);
  border-radius: calc(2.375rem * .8);
  height: calc(2.375rem * .8);
  line-height: calc(2.375rem * .8);
  display: inline-block;
  cursor: pointer;
  outline: none;
  user-select: none;
  vertical-align: middle;
  text-indent: calc(calc(calc(2.375rem * .8) * 2) + .5rem);
}
.switch input + label::before,
.switch input + label::after {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: calc(calc(2.375rem * .8) * 2);
  bottom: 0;
  display: block;
}
.switch input + label::before {
  right: 0;
  background-color: #dee2e6;
  border-radius: calc(2.375rem * .8);
  transition: 0.2s all;
}
.switch input + label::after {
  top: 2px;
  left: 2px;
  width: calc(calc(2.375rem * .8) - calc(2px * 2));
  height: calc(calc(2.375rem * .8) - calc(2px * 2));
  border-radius: 50%;
  background-color: white;
  transition: 0.2s all;
}
.switch input:checked + label::before {
  background-color: #FF9E03;
}
.switch input:checked + label::after {
  margin-left: calc(2.375rem * .8);
}
.switch input:focus + label::before {
  outline: none;
  box-shadow: 0 0 0 0.2rem rgba(0, 136, 221, 0.25);
}
.switch input:disabled + label {
  color: #868e96;
  cursor: not-allowed;
}
.switch input:disabled + label::before {
  background-color: #e9ecef;
}
/* .switch.switch-sm {
  font-size: 0.875rem;
} */
.switch.switch-sm input + label {
  min-width: calc(calc(1.9375rem * .8) * 2);
  height: calc(1.9375rem * .8);
  line-height: calc(1.9375rem * .8);
  text-indent: calc(calc(calc(1.9375rem * .8) * 2) + .5rem);
}
.switch.switch-sm input + label::before {
  width: calc(calc(1.9375rem * .8) * 2);
}
.switch.switch-sm input + label::after {
  width: calc(calc(1.9375rem * .8) - calc(2px * 2));
  height: calc(calc(1.9375rem * .8) - calc(2px * 2));
}
.switch.switch-sm input:checked + label::after {
  margin-left: calc(1.9375rem * .8);
}
.switch.switch-lg {
  font-size: 1.25rem;
}
.switch.switch-lg input + label {
  min-width: calc(calc(3rem * .8) * 2);
  height: calc(3rem * .8);
  line-height: calc(3rem * .8);
  text-indent: calc(calc(calc(3rem * .8) * 2) + .5rem);
}
.switch.switch-lg input + label::before {
  width: calc(calc(3rem * .8) * 2);
}
.switch.switch-lg input + label::after {
  width: calc(calc(3rem * .8) - calc(2px * 2));
  height: calc(calc(3rem * .8) - calc(2px * 2));
}
.switch.switch-lg input:checked + label::after {
  margin-left: calc(3rem * .8);
}
.switch + .switch {
  margin-left: 1rem;
}


/* Docs overrides */

.highlight {
  background-color: #fff;
  border-color: #d3e0e9;
}


/* General Overrides */
.list-group-item .glyphicon {
  line-height: 1.4;
}
.modal-header .close {
  margin-top: 4px;
}
strong {
  font-weight: bold;
}

/* ----- Alerts ----- */

.alert-light-paya {
  color: #818182;
  background-color: #ffffff;
  border-color: #f8f8f8;
}

/* ----- Misc ----- */

.app-login-form {
  max-width: 280px;
  margin-top: -60px;
}
.app-new-msg {
  margin-right: 10px;
}
.app-brand {
  width: 40%;
  display: inline-block;
}
.app-brand img {
  width: 100%;
}

#card-brand {
  height:30px;
  position:relative;
}
#card-brand-icon {
  height:15px;
  position:absolute;
  right:0;
  top:5px;
}
#inputCardNumber {
  width:100%
}

.tab-pane .fade .show{
   opacity: 1;
   -webkit-transition: opacity 5.25s linear;
      -moz-transition: opacity 5.25s linear;
       -ms-transition: opacity 5.25s linear;
        -o-transition: opacity 5.25s linear;
           transition: opacity 5.25s linear;
 }

 .modal-content{
    width: 180%;
    margin-left: -40%;
 }
.paya input:-webkit-autofill, .paya select:-webkit-autofill {
    -webkit-text-fill-color: #0b0742;
    transition: background-color 100000000s;
    -webkit-animation: 1ms void-animation-out;
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
           <div class="containor py-5 " style="margin-right:14%">
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
												<a class="dropdown-item" href="userenrolledcourse.jsp?name=<%=session.getAttribute("name") %>&email=<%=session.getAttribute("email") %>&Angular JS Beginner's Course">
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
 <!--  ---------------------------- -->
 <%@ page import="java.util.Base64" %>
  <%
            // Get course name from request parameter
           String courseNames = request.getParameter("courseName");
  
  String courseName = null;

            // Connect to database
            Class.forName("com.mysql.cj.jdbc.Driver");
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?","root","saranya@2001");

            // Execute query to get course details
             query = "SELECT * FROM newlyaddedcourses WHERE course_id=?";
             stmt = con.prepareStatement(query);
            stmt.setString(1, courseNames);
            
             rs = stmt.executeQuery();

           
            
            // Display course details
            if (rs.next()) {
                String courseImage = "";
                Blob imageBlob = rs.getBlob("course_image");
                if (imageBlob != null) {
                    byte[] imageBytes = imageBlob.getBytes(1, (int) imageBlob.length());
                    courseImage = Base64.getEncoder().encodeToString(imageBytes);
                }
                courseName = rs.getString(2);
                String coursedescriptionName = rs.getString("coursedesc_name");
                double coursePrice = rs.getDouble("coursePrice");
                int courseDuration = rs.getInt("courseduration");
                int courseLessons = rs.getInt("courselessons");
                String coursecertificationName = rs.getString("coursecertification_name");
             

        %>
        
    <section class="page-wrapper edutim-course-single" >
        <div class="container">
            <div class="row">
                <div class="col-lg-8">

                    <div class="course-single-header">
                       

                        <h3 class="single-course-title"><%= courseName %></h3>
            <p>Vedha's <%= courseName %> Certification is curated by industry professionals as per the industry requirements and demands. This <%= courseName %> Training will help you prepare for the <%= courseName %> Certified Solutions Architect - Associate exam SAA-C03. With Vedha's live instructor-led sessions, you will be able to effectively architect, monitor, and deploy secure and robust applications using Full Stack Java Developer. </p>    
                  
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
                  
                        <img id="courseImg" src="data:image/png;base64,<%= courseImage %>" alt="<%= courseName %>" class="img-fluid w-100">

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
                       <h4 class="curriculmn-title">Introduction to Angular JS</h4>
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
                       <h4 class="curriculmn-title">First Angular JS application</h4>
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
                       <h4 class="curriculmn-title">Templates in Angular JS</h4>
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
                       <h4 class="curriculmn-title">Static Files in Angular JS</h4>
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
                       <h4 class="curriculmn-title">Angular JS Models</h4>
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
                       <h4 class="curriculmn-title">Angular JS Forms</h4>
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
                                            <p>Very deep course for a beginner, enjoyed everything from the very start and every detail is vastly investigated and discussed. A nice choice for those, who are enrolling Angular JS. </p>
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
                                    <h4>Price: <span>&#x20B9  <%= coursePrice %></span></h4>
                                </div>
                                  <div class="buy-btn"><%

// Get the email and course name from the request parameters
 email = request.getParameter("useremail");
String course = request.getParameter("course");

// Connect to the database
Class.forName("com.mysql.cj.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?","root","saranya@2001");

// Check if the email and course name are already present in the enrollment_courses table
 query = "SELECT * FROM enrollment_courses WHERE useremail=? AND course=?";
 stmt = con.prepareStatement(query);
stmt.setString(1, email);
stmt.setString(2, course);
 rs = stmt.executeQuery();

// Disable the button if the user is already enrolled
if (rs.next()) {
	
    %>
    <button type="button" id="myButton" class="btn btn-main btn-block" disabled>You have already Enrolled</button>
    <%
} else {
    %>
    <button type="button" id="myButton" class="btn btn-main btn-block">Enroll This Course</button>
    <%
}

// Close the database connection and result set
rs.close();
stmt.close();
con.close();

%>
</div>
                                                                
    <div class="m-4">
    
      <div class="modal fade" id="myModal" data-bs-backdrop="static" tabindex="-1">
      
        <div class="modal-dialog" >
        
          <div class="modal-content">
  



 <form action="courseenrollment" method="post">
<div  class="containert">

  <div  class="row justify-content-center my-4 my-lg-5">

  <div class="paya-cards col-md-6 col-lg-6 mb-3">
  
      <!-- Billing Information -->
     
      <div class="card payment-card border-bottom-2">
      
        <div class="card-header pt-4 pb-0">
          <h4 class="card-title">Billing Information</h4>
        </div>
        
        <div class="card-body">
          <div class="paya form-row">
            <div class="form-group col-12">
                <label for="inputFn">Full name</label>
                <input type="text" class="form-control input" id="inputFn" placeholder="Name" name="username" value="<%=session.getAttribute("name") %>" readonly>
               <input type="hidden" name="coursesimg" id="uploadImg" >               
                <div class="invalid-feedback" style="width: 100%;">
                  Required
                </div>
            </div>
            <script>
            
            let Img = document.getElementById("courseImg").src;
            
            document.getElementById("uploadImg").value = Img;

</script>
            <div class="form-group col-12">
              <label for="inputAddr">Billing address</label>
              <input type="text" class="form-control input" id="inputAddr1" name="addr" placeholder="123 Anystreet" required>
              <div class="invalid-feedback" style="width: 100%;">
                Required
              </div>
            </div>
          </div>
          <div class="paya form-row">
            <div class="form-group col-md-6">
              <label for="inputCity">City</label>
              <input type="text" class="form-control input" id="inputCity" name="city" placeholder="Anytown" required>
              <div class="invalid-feedback" style="width: 100%;">
                Required
              </div>
            </div>
            <div class="form-group col-6 col-md-2">
              <label for="inputState">State</label>
              <input type="text" class="form-control input text-uppercase" id="inputState" name="state" maxlength="2" placeholder="VA" required>
              <div class="invalid-feedback" style="width: 100%;">
                Required
              </div>
            </div>
            <div class="form-group col-6 col-md-4">
              <label for="inputZip">Zip Code</label>
              <input type="number" class="form-control input" id="inputZip" name="zip" maxlength="5" placeholder="123456" required>

              <div class="invalid-feedback" style="width: 100%;">
                Required
              </div>
            </div>
             <div class="form-group col-12">
              <label for="inputcourse">Enrolled Course</label>
              <input type="text" class="form-control input" id="inputcourse" maxlength="50" name="course" placeholder="course name" required>
              <div class="invalid-feedback" style="width: 100%;">
                Required
              </div>
            </div>
          </div>
        </div>
      </div>
     
      <script>
  // Get the <h3> element with the class "single-course-title"
  const courseTitle = document.querySelector('.single-course-title');

  // Get the input field with the id "inputcourse"
  const inputCourse = document.querySelector('#inputcourse');

  // Set the value of the input field to the text content of the <h3> element
  inputCourse.value = courseTitle.textContent;
</script>

      <!-- Payment Options -->
      <div class="card payment-card border-bottom-2" style="margin-top:5%">
        <div class="card-header pt-4 pb-2">
          <h4 class="card-title">Payment Options</h4>
            <div class="paya-payment-options mt-4 mb-1 px-0 pb-1">
              <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" id="cardPayment" name="paymentOptions" class="custom-control-input" checked onChange="changePaymentMethod('card')" data-toggle="collapse" data-target=".multi-collapse" aria-expanded="false" aria-controls="achUI">
                <label class="custom-control-label custom-control-header" for="cardPayment" style="padding-left:20px">Credit or Debit Card</label>
              </div>
              <!-- <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" id="bankAccountPayment" name="paymentOptions" class="custom-control-input" onChange="changePaymentMethod('check')" data-toggle="collapse" data-target="#achUI" aria-expanded="false" aria-controls="achUI">
                <label class="custom-control-label custom-control-header" for="bankAccountPayment">Bank Account</label>
              </div> -->
            </div>
        </div>
        <div class="card-body pb-0">
          <!-- Credit or Debit Card option -->
          <div class="tab-content">
            <div class="tab-pane fade show active" id="card-payment" role="tabpanel" aria-labelledby="pills-home-tab">
              <div class="paya form-row">
                <div class="form-group col-12 col-lg-6">
                  <label for="inputCardNumber">Card</label>
                  <div class="paya-card-brand">
                   
                   
<input type="text" id="inputCardNumber" name="cc-number" placeholder="Credit Card Number" pattern="(?:\d{4}\s?){4,5}" maxlength="19" class="form-control input" required>
                    
                    <div class="invalid-feedback" style="width: 100%;">
                      Required
                    </div>
                  </div>
                </div>
<script>
const ccNumberInput = document.getElementById('inputCardNumber');

ccNumberInput.addEventListener('input', function(e) {
  const inputText = e.target.value.replace(/\s/g, '');
  const formattedText = inputText.replace(/(\d{4})/g, '$1 ').trim();
  e.target.value = formattedText;
});
</script>

                
                <div class="form-group col-6 col-lg-2">
                  <label for="inputCardNumber">Expiration</label>
<input type="text" class="form-control input text-uppercase" id="inputExpiration" name="cc-expiration" maxlength="5" placeholder="MM/YY" pattern="(0[1-9]|1[0-2])\/[0-9]{2}" required>
                  <div class="invalid-feedback" style="width: 100%;">
                    Required
                  </div>
                </div>
                <script>
                const expirationInput = document.getElementById('inputExpiration');

                expirationInput.addEventListener('input', function(e) {
                  const inputText = e.target.value.replace(/\s/g, '');
                  const formattedText = inputText.replace(/^(\d{2})(\d{0,2})/, '$1/$2').replace(/\/{2,}/, '/').substring(0, 5);
                  e.target.value = formattedText;
                });


                </script>
                <div class="form-group col-6 col-lg-4">
                  <label for="inputSecurity">Security Code (CVV)</label>
                  <div class="paya-card-brand">
                   
                   <input type="text" id="inputCVV" name="cvv" placeholder="CVV" maxlength="3" class="form-control input" required>
                    <div class="invalid-feedback" style="width: 100%;">
                      Required
                    </div>
                  </div>

                </div>
                <script>
const cvvInput = document.getElementById('inputCVV');

cvvInput.addEventListener('input', function(e) {
  const inputText = e.target.value.replace(/\s/g, '');
  const formattedText = inputText.substring(0, 3);
  e.target.value = formattedText;
});
</script>
              </div>
            </div>

          </div>
        </div>

      
      </div><!-- /payment options -->

      <!-- Customer Information -->
      <div class="card payment-card border-bottom-2" style="margin-top:5%">
        <div class="card-header pt-4 pb-0">
          <h4 class="card-title">Customer Information</h4>
        </div>
          <div class="card-body">
          <div class="paya form-row">
            <div class="form-group col-12 col-lg-6">
                <label for="inputEmail">Email address</label>
                <input type="email" name="useremail" class="form-control input" id="inputEmail" placeholder="Email" value="<%=session.getAttribute("email") %>" readonly>
                <div class="invalid-feedback" style="width: 100%;">
                  Please enter a valid email address.
                </div>
              
            </div>
            <div class="form-group col-12 col-lg-6">
                <label for="inputNumber">Contact number</label>
                
                <input type="tel" id="inputNumber" name="phone" placeholder="(XXX) XXX-XXXX" maxlength="14" class="form-control input" required>
                
                <div class="invalid-feedback" style="width: 100%;">
                  Please enter a valid contact number.
                </div>
            </div>
            <script>
const phoneInput = document.getElementById('inputNumber');

phoneInput.addEventListener('input', function(e) {
  const inputText = e.target.value.replace(/\D/g, '');
  const formattedText = inputText.replace(/^(\d{3})(\d{0,3})(\d{0,4})/, '($1) $2-$3').substring(0, 14);
  e.target.value = formattedText;
});
</script>
</div>
        </div>
      </div>

   
    </div> <!-- /col -->

    <!-- Transaction Summary -->
    <div class="col-md-6 col-lg-4">
      <div class="transactions transactions-card sticky-top">
        <div class="card-header pt-4 pb-0">
          <h4 class="card-title mb-2">Transaction Summary</h4>
          <p class="card-text text-gray">Customer Service No: <a id="phoneNumber">xxxx xxxx</a></p>
          <hr>
        </div>
        <div class="card-body pt-0 my-0">
          <p class="card-text text-gray font-weight-medium mb-0">Merchant</p>
          <ul class="list-group text-gray">
            <li class="list-group-item align-items-center">Vedha E-Learning</li>
            <li class="list-group-item align-items-center">Online Learning platform</li>
            <li class="list-group-item align-items-center "><%= courseName %> Beginner's course</li>
          </ul>
          <hr class="black-rule-2">
          <p class="card-text font-weight-bold mb-0">Buyer</p>
          <ul class="list-group">
            <li id="listItem" class="list-group-item d-flex justify-content-between align-items-center">
                <span id="nameDisplay"><%=session.getAttribute("name") %></span>
                
              </li>
            

            
            <li class="list-group-item d-flex justify-content-between align-items-center">
                <span id="cityDisplay">City</span>
               
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-center">
                <span id="emailDisplay"><%=session.getAttribute("email") %></span>
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-center">
                <span id="numberDisplay">555-1234</span>
            </li>
          </ul>
          <hr class="black-rule-1">
          <ul class="list-group">
            <li class="list-group-item d-flex justify-content-between align-items-center font-weight-medium">
              Method of payment
              <span>Online</span>
            </li>
          </ul>
          <hr class="black-rule-1">
     <ul class="list-group">
  <li class="list-group-item d-flex justify-content-between align-items-center font-weight-bold">
    Total
    <input name="amount" id="amount" value=" <%= coursePrice %> INR" readonly style="outline:none;border:none;text-align:right;font-weight:600;margin-left:-250px;width:40%;">
  </li>
</ul>



          


          
          <hr class="black-rule-2">
          <ul class="paya list-group my-3">
            <li class="list-group-item d-flex justify-content-between align-items-center text-muted">
              <a role="button" class="btn btn-outline-secondary" data-bs-dismiss="modal" style="background:none;color:#0b0742;">Cancel</a>
              <input type="submit" id="submit" class="btn btn-success" style="border-radius:25px;" value="Process Payment"	>
            </li>
          </ul>
        </div>
      </div><!-- /transactions -->
    </div><!-- /col -->
  </div><!-- /row -->
</div><!-- /container -->
 </form>

<script>
    // Get the input fields and the name and email display spans
    var inputNameField = document.getElementById("inputFn");
    var inputEmailField = document.getElementById("inputEmail");
    var nameDisplay = document.getElementById("nameDisplay");
    var emailDisplay = document.getElementById("emailDisplay");
    var inputNumberField = document.getElementById("inputNumber");
    var numberDisplay = document.getElementById("numberDisplay");
var inputCityField = document.getElementById("inputCity");
var cityDisplay = document.getElementById("cityDisplay");
var dateDisplay = document.getElementById("dateDisplay");
var timeDisplay = document.getElementById("timeDisplay");


    // Add event listeners to the input fields to detect when the value changes
    inputNameField.addEventListener("input", function() {
      // Set the text content of the name display span to the value of the input field
      nameDisplay.textContent = inputNameField.value;
    });
    
    inputEmailField.addEventListener("input", function() {
      // Set the text content of the email display span to the value of the input field
      emailDisplay.textContent = inputEmailField.value;
    });

    inputNumberField.addEventListener("input", function() {

  numberDisplay.textContent = inputNumberField.value;
});

inputCityField.addEventListener("input", function() {

cityDisplay.textContent = inputCityField.value;
});

function formatDateTime(date) {
  var day = date.getDate().toString().padStart(2, "0");
  var month = (date.getMonth() + 1).toString().padStart(2, "0");
  var year = date.getFullYear();
  var hours = date.getHours().toString().padStart(2, "0");
  var minutes = date.getMinutes().toString().padStart(2, "0");
  var meridiem = (hours < 12) ? "AM" : "PM";
  if (hours > 12) {
    hours -= 12;
  }
  var formattedDateTime = `${day}-${month}-${year}`;
  var formattedTime = `${hours}:${minutes} ${meridiem}`;
  return {date: formattedDateTime, time: formattedTime};
}

// Set the initial date and time displays
var initialDateTime = formatDateTime(new Date());
dateDisplay.textContent = initialDateTime.date;
timeDisplay.textContent = initialDateTime.time;

// Update the date and time displays every second
setInterval(function() {
  var currentDateTime = formatDateTime(new Date());
  dateDisplay.textContent = currentDateTime.date;
  timeDisplay.textContent = currentDateTime.time;
}, 1000);
    
               
               
</script>

<script>
    // Generate a random 8-digit number
var randomNumber = Math.floor(Math.random() * 100000000);

// Pad the number with leading zeros if necessary
var paddedNumber = randomNumber.toString().padStart(8, "0");

// Display the number in the HTML element
document.getElementById("phoneNumber").innerHTML = paddedNumber;
</script>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
<!--     <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  -->         
</div>
</div>
</div>



<script>
    $(document).ready(function(){
 $('#myModal').modal("hide"); 
  $('#myButton').on('click', function(){
    $('#myModal').modal('show');
  });
});
</script>

<script>
    /*!
 * Some custom features we can eventually bake into a different .js file
 *
 *
 */


function changePaymentMethod(method) {
  if (method == "card") {
    $("#bank-account").removeClass('show');
    $("#bank-account").removeClass('active');
    $("#card-payment").addClass('show');
    $("#card-payment").addClass('active');
  }
else {
    $("#card-payment").removeClass('show');
    $("#card-payment").removeClass('active');
    $("#bank-account").addClass('show');
    $("#bank-account").addClass('active');
  }
}

$(function () {
  $('[data-toggle="tooltip"]').tooltip()
});

$(function () {
    $('#datetimepicker7').datetimepicker({
      useCurrent: true,
      format: 'L',
      sideBySide: true,
      debug: false,
      locale: 'en-gb',
      ignoreReadonly: true,
      allowInputToggle: true
    });

    $('#datetimepicker8').datetimepicker({
        useCurrent: false,
        sideBySide: false,
        locale: 'en-gb',
        ignoreReadonly: true,
        allowInputToggle: true,
        debug: false
    });
    $("#datetimepicker7").on("change.datetimepicker", function (e) {
        $('#datetimepicker8').datetimepicker('minDate', e.date);
    });
    $("#datetimepicker8").on("change.datetimepicker", function (e) {
        $('#datetimepicker7').datetimepicker('maxDate', e.date);
    });
});

// Example starter JavaScript for disabling form submissions if there are invalid fields
(function() {
  'use strict';

  window.addEventListener('load', function() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation');

    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();

// Dot navigation

[].slice.call( document.querySelectorAll( '.dotstyle > ul' ) ).forEach( function( nav ) {
  new DotNav( nav, {
    callback : function( idx ) {
      //console.log( idx )
    }
  } );
} );

$('input').on('blur keyup', function() {
    if ($("#processPayment").valid()) {
        $('#submit').prop('disabled', false);
    } else {
        $('#submit').prop('disabled', 'disabled');
    }
});

</script>
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
                                    <i class="fa fa-check" style="color: #39FF14"></i> No previous knowledge of Photoshop required.
                                </li>
                                <li>
                                    <i class="fa fa-check" style="color: #39FF14"></i> If you have Photoshop installed, that's great.
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
		// connect to database
		Class.forName("com.mysql.cj.jdbc.Driver");
		 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?","root","saranya@2001");

		// execute query to get new courses
		 query = "SELECT * FROM newlyaddedcourses ORDER BY upload_date DESC LIMIT 10";
		 stmt = con.prepareStatement(query);
		 rs = stmt.executeQuery();

		// display new courses
		while (rs.next()) {
			 courseName = rs.getString("course_name");
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
           <img src="data:image/png;base64,<%= imageBase64 %>" alt="<%= courseName %>">         </div>
         <div class="contenty">
            <h3><%= courseName %></h3>
<p><%= description %></p>
 <button name="courseName" value="<%= courseName %>" onclick="location.href='newlyuseraddedcoursedesc.jsp?courseName=<%= courseId %>'" class="btn">See More</button>
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
<h1><center><%= courseName %> Certification Training Benefits</center></h1>
<p><center>According to Statista, 48 percent of developers worldwide use Angular JS, making it one of the most popular programming languages worldwide. <br>Learning <%= courseName %> will give you access to a variety of web development, data science, and machine learning opportunities. This training program <br>offered by Edureka will enable you to master Angular JS programming and help you to kickstart your career in this domain.</center></p>
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