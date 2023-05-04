<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
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




.right_conatct_social_icon{
     background: linear-gradient(to top right, #83799c -5%, #0b0742 100%);
}
.contact_us{
  
    padding: 100px 0px;
  /*   margin-left:10%;	  */

}

.contact_inner{
    background-color: #fff;
    position: relative;
    box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
    border-radius: 25px;
}
.contact_field{
    padding: 60px 340px 90px 100px;
}
.right_conatct_social_icon{
    height: 100%;
}

.contact_field h3{
   color: #000;
    font-size: 40px;
    letter-spacing: 1px;
    font-weight: 600;
    margin-bottom: 10px
}
.contact_field p{
    color: #000;
    font-size: 13px;
    font-weight: 400;
    letter-spacing: 1px;
    margin-bottom: 35px;
}
.contact_field .form-control{
    border-radius: 0px;
    border: none;
    border-bottom: 1px solid #ccc;
}
.contact_field .form-control:focus{
    box-shadow: none;
    outline: none;
    border-bottom: 2px solid #1325e8;
}
.contact_field .form-control::placeholder{
    font-size: 13px;
    letter-spacing: 1px;
}

.contact_info_sec {
    position: absolute;
    background-color: #f6f6f6;
    right: 1px;
    top: 18%;
    height: 340px;
    width: 340px;
    padding: 40px;
    border-radius: 25px 0 0 25px;
}
.contact_info_sec h4{
    letter-spacing: 1px;
    padding-bottom: 15px;
}

.info_single{
    margin: 30px 0px;
}
.info_single i{
    margin-right: 15px;
}
.info_single span{
    font-size: 14px;
    letter-spacing: 1px;
}

button.contact_form_submit {
    background: linear-gradient(to top right, #83799c -5%, #0b0742 100%);
    border: none;
    color: #fff;
    padding: 10px 15px;
    width: 100%;
    margin-top: 25px;
    border-radius: 35px;
    cursor: pointer;
    font-size: 14px;
    letter-spacing: 2px;
}
.socil_item_inner li{
    list-style: none;
}
.socil_item_inner li a{
    color: #fff;
    margin: 0px 15px;
    font-size: 14px;
}
.socil_item_inner{
    padding-bottom: 10px;
}

.map_sec{
    padding: 50px 0px;
}
.map_inner h4, .map_inner p{
    color: #000;
    text-align: center
}
.map_inner p{
    font-size: 13px;
}
.map_bind{
   margin-top: 50px;
    border-radius: 30px;
    overflow: hidden;
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
margin-top:18%;

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

</style>
<body>
<main class="main">
  <!-- Header -->
<%@ include file="navbar.jsp" %>
  </main>
  
   <section class="contact_us">
        <div class="container">
            <div class="row">
                <div class="col-md-10 offset-md-1">
                    <div class="contact_inner">
                        <div class="row">
                            <div class="col-md-10">
                                <div class="contact_form_inner">
                                    <div class="contact_field">
                                        <h3>Contact Us</h3>
                                        <p>Feel Free to contact us any time. We will get back to you as soon as we can!.</p>
                                        <form action="ContactServlet" method="post">
                                        <input type="text" class="form-control form-group" placeholder="Name" name="unames"/>
                                        <input type="email" class="form-control form-group" placeholder="Email" name="uemails"  />
                                        <textarea class="form-control form-group" placeholder="Message" name="umessage"></textarea>
                                        <button type="submit" class="contact_form_submit">Send</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="right_conatct_social_icon d-flex align-items-end">
                                   <div class="socil_item_inner d-flex">
                                      <li><a href="#"><i class="fab fa-facebook-square"></i></a></li>
                                      <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                                      <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                   </div>
                                </div>
                            </div>
                        </div>
                        <div class="contact_info_sec">
                            <h4>Contact Info</h4>
                            <div class="d-flex info_single align-items-center">
                                <i class="fas fa-headset"></i>
                                <span>+91 88707 50500</span>
                            </div>
                            <div class="d-flex info_single align-items-center">
                                <i class="fas fa-envelope-open-text"></i>
                                <span>info@vedhaelearning.com</span>
                            </div>
                            <div class="d-flex info_single align-items-center">
                                <i class="fas fa-map-marked-alt"></i>
                                <span>47A Anandha Bhavanam Sasthri Street, LIC Colony Rd, Selvapuram, 26</span>
                            </div>
            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <section class="map_sec">
        <div class="container">
            <div class="row">
                <div class="col-md-10 offset-md-1">
                    <div class="map_inner">
                        <h4>Find Us on Google Map</h4>
<p>Just send us your questions or concerns by starting a new case and we will give you the help you need.</p>
                        <div class="map_bind">
<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15666.770989509501!2d76.9355006!3d10.9865482!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xd76c58fecde7ea02!2sVEDHANTHI%20Technologies!5e0!3m2!1sen!2sin!4v1675658356525!5m2!1sen!2sin" width="1000" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>                    </div>
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