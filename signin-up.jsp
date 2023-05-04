 

<!DOCTYPE html>
<!-- === Coding by CodingLab | www.codinglabweb.com === -->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- ===== Iconscout CSS ===== -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

    <!-- ===== CSS ===== -->
    <link rel="stylesheet" href="css/signin.css">
         
    <!--<title>Login & Registration Form</title>-->
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
  background: #fff;
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
  gap: 80%;
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

.containers {
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

.header .logo img {
  height: 30px;
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
.container{
    position: relative;
    max-width: 500px;
    height:100vh;
    width: 100%;
    background: #f6f6f6;
    border-radius: 10px;
    box-shadow: 0 5px 10px rgba(0, 0, 0, 0.5);
    overflow: hidden;
    margin: 0 20px;
}

</style>
<body>

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
<main class="main">
  <!-- Header -->
  <header class="header" >
    <div class="containers flex-between">
      <div class="logo">
        <a href="#">
          <h2 style="font-size: 2rem;">VEDHA</h2>
        </a>
      </div>
      <nav class="main-navgation flex-between flex-ver-top">
      
        <div class="nav-buttons">
         
          <a href="NewHome.jsp" class="sign-up btn btn-sm" style="color:#fff;width:150px;">Back to Home</a>
        </div>
      </nav>
      <div class="burger-menu">
        <i class="fa-regular fa-bars icon"></i>
      </div>
    </div>
  </header>
  </main>
  <!-- Landing -->
  <section class="landing" >	
    <div class="landing-text" >
    <div class="container" style="margin-top: 10%;">
     <div class="forms">
            <div class="form login">
                <span class="title">Login</span>

                <form action="login" method="post">
                    <div class="input-field">
                        <input type="text" name="username" placeholder="Enter your email" required>
                        <i class="uil uil-envelope icon"></i>
                    </div>
                    <div class="input-field">
                        <input type="password" name="password" class="password" placeholder="Enter your password" required>
                        <i class="uil uil-lock icon"></i>
                        <i class="uil uil-eye-slash showHidePw"></i>
                    </div>

                    <div class="checkbox-text">
                        <div class="checkbox-content">
                            <input type="checkbox" id="logCheck">
                            <label for="logCheck" class="text">Remember me</label>
                        </div>
                        
                        <a href="#" class="text">Forgot password?</a>
                    </div>

                    <div class="input-field button">
                        <input type="submit" value="Login">
                    </div>
                </form>

                <div class="login-signup">
                    <span class="text">Not a member?
                        <a href="#" class="text signup-link">Signup Now</a>
                    </span>
                </div>
            </div>

            <!-- Registration Form -->
      <div class="form signup" id="section-id" style="height:80vh">
    <span class="title" style="margin-top:10%;">Registration</span>

    <form action="register" method="post" enctype="multipart/form-data">
        <div class="input-field">
            <input type="text" name="name" placeholder="Enter your name" required>
            <i class="uil uil-user"></i>
        </div>
        <div class="input-field">
            <input type="text" name="email" placeholder="Enter your email" required>
            <i class="uil uil-envelope icon"></i>
        </div>
        <div class="input-field">
            <input type="password" name="pass" class="password" placeholder="Create a password" required>
            <i class="uil uil-lock icon"></i>
        </div>
        <div class="input-field">
            <input type="password" name="cnfrmpass" class="password" placeholder="Confirm a password" required>
            <i class="uil uil-lock icon"></i>
            <i class="uil uil-eye-slash showHidePw"></i>
        </div>
        <div class="input-field" >
            <input  type="file" name="photo" accept="image/*" placeholder="Confirm a Profile photo" required>
            <i class="uil-grin-tongue-wink-alt"></i>
        </div>
        <div class="checkbox-text">
            <div class="checkbox-content">
                <input type="checkbox" id="termCon" required>
                <label for="termCon" class="text">I accept all terms and conditions</label>
            </div>
        </div>
        <div class="input-field button">
            <input type="submit" value="Signup">
        </div>
    </form>

    <div class="login-signup" >
        <span class="text">Already a member?
            <a href="#" class="text login-link">Login Now</a>
        </span>
    </div>
</div>

        </div>
    </div>    
    </div>
    <div class="landing-image">
      <img src="https://res.cloudinary.com/jerrick/image/upload/v1649318817/624e9ba16dff27001dfe543e.png" alt="Working Illustration" style="width:70%;" />
    </div>
  </section>


    <script src="js/signin.js"></script>
    
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">




	

<script type="text/javascript">
var status=document.getElementById("status").value;
if(status=="failed"){
	swal("sorry","Username or password is incorrect","error");
	}
else if(status=="invalid email"){
	swal("sorry","Please enter your email","error");
	}
else if(status=="invalid Password"){
	swal("sorry","Please enter your password","error");
	}
	</script>
	
	
<script type="text/javascript">
var status=document.getElementById("status").value;
if(status=="success"){
	swal("Hurrayyy...","Account created successfully","success");
	}
	</script>
    
</body>
</html>

