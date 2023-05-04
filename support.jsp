<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
</body>
</html>