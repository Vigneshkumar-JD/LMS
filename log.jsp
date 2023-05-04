<!DOCTYPE html>
<!-- Coding by CodingLab | www.codinglabweb.com-->
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--<title> Responsive Login and Signup Form </title>-->

        <!-- CSS -->
        <link rel="stylesheet" href="css/style.css">
                
        <!-- Boxicons CSS -->
        <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
                        
    </head>
    <style>
    /* Google Fonts - Poppins */
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap');

*{
   
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
    
}
body{
background:#fff;
}
.container{
    height: 100vh;
    width: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: #fff;
    
 
}
.form{

margin-right:50%;
    position: absolute;
    max-width: 430px;
    width: 100%;
    padding: 30px;
    border-radius: 6px;
    background: #fff;
    box-shadow: -3px -1px 62px -1px rgba(0,0,0,0.53);
-webkit-box-shadow: -3px -1px 62px -1px rgba(0,0,0,0.53);
-moz-box-shadow: -3px -1px 62px -1px rgba(0,0,0,0.53);
}
.form.signup{
    opacity: 0;
    pointer-events: none;
}
.forms.show-signup .form.signup{
    opacity: 1;
    pointer-events: auto;
}
.forms.show-signup .form.login{
    opacity: 0;
    pointer-events: none;
}

form{
    margin-top: 30px;
}
.form .field{
    position: relative;
    height: 50px;
    width: 100%;
    margin-top: 20px;
    border-radius: 6px;
}
.field input,
.field button{
    height: 100%;
    width: 100%;
    border: none;
    font-size: 16px;
    font-weight: 400;
    border-radius: 6px;
}
.field input{
    outline: none;
    padding: 0 15px;
    border: 1px solid#CACACA;
}
.field input:focus{
    border-bottom-width: 2px;
}
.eye-icon{
    position: absolute;
    top: 50%;
    right: 10px;
    transform: translateY(-50%);
    font-size: 18px;
    color: #8b8b8b;
    cursor: pointer;
    padding: 5px;
}
.field button{
    color: #fff;
    background-color: #aba3bc;
    transition: all 0.3s ease;
    cursor: pointer;
}
.field button:hover{
    background-color: #362b5f;
}
.form-link{
    text-align: center;
    margin-top: 10px;
}
.form-link span,
.form-link a{
    font-size: 14px;
    font-weight: 400;
    color: #232836;
}
.form a{
    color: #0171d3;
    text-decoration: none;
}
.form-content a:hover{
    text-decoration: underline;
}
.line{
    position: relative;
    height: 1px;
    width: 100%;
    margin: 36px 0;
    background-color: #d4d4d4;
}
.line::before{
    content: 'Or';
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    background-color: #FFF;
    color: #8b8b8b;
    padding: 0 15px;
}
.media-options a{
    display: flex;
    align-items: center;
    justify-content: center;
}
a.facebook{
    color: #fff;
    background-color: #4267b2;
}
a.facebook .facebook-icon{
    height: 28px;
    width: 28px;
    color: #0171d3;
    font-size: 20px;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: #fff;
}
.facebook-icon,
img.google-img{
    position: absolute;
    top: 50%;
    left: 15px;
    transform: translateY(-50%);
}
img.google-img{
    height: 20px;
    width: 20px;
    object-fit: cover;
}
a.google{
    border: 1px solid #CACACA;
}
a.google span{
    font-weight: 500;
    opacity: 0.6;
    color: #232836;
}

@media screen and (max-width: 400px) {
    .form{
        padding: 20px 10px;
    }  
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
  gap: 50%;
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
  margin-top: 2%;
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
.logo{
width:15%;

}

    
    </style>
    <body>
    <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
  
<main class="main">
  <!-- Header -->
  <header class="header" style="margin-left:12%;">
    <div class="containers flex-between">
      <div class="logo">
 	<img src="images/log.png" alt="Working Illustration"  />
      </div>
      <nav class="main-navgation flex-between flex-ver-top">
      
        <div class="nav-buttons">
         
          <a href="NewHome.jsp" class="sign-up btn btn-sm" style="color:#fff;width:150px;margin-right:5%;">Back to Home</a>
        </div>
      </nav>
      <div class="burger-menu">
        <i class="fa-regular fa-bars icon"></i>
      </div>
    </div>
  </header>
  </main>
        <section class="container forms">
            <div class="form login">
                <div class="form-content">
                    <header>Login</header>
                    <form action="login" method="post">
                        <div class="field input-field">
                           <input type="text" name="username" placeholder="Enter your email" required>
                        </div>

                        <div class="field input-field">
                            <input type="password" name="password" class="password" placeholder="Enter your password" required>
                            <i class='bx bx-hide eye-icon'></i>
                        </div>

                        <div class="form-link">
                            <a href="forgotPassword.jsp" class="forgot-pass" style="color:#362b5f;">Forgot password?</a>
                        </div>

                        <div class="field button-field">
                          <input type="submit" value="Login" style="background-color:#d5d0dd;color:#0b0742;">
                        </div>
                    </form>

                    <div class="form-link">
                        <span>Don't have an account? <a href="#" class="link signup-link" style="color:#362b5f;">Signup</a></span>
                    </div>
                </div>

              <!--   <div class="line"></div>

                <div class="media-options">
                    <a href="#" class="field facebook">
                        <i class='bx bxl-facebook facebook-icon'></i>
                        <span>Login with Facebook</span>
                    </a>
                </div>

                <div class="media-options">
                    <a href="#" class="field google">
                        <img src="https://cdn-icons-png.flaticon.com/512/2991/2991148.png" alt="" class="google-img">
                        <span>Login with Google</span>
                    </a>
                </div> -->

            </div>

            <!-- Signup Form -->

            <div class="form signup">
                <div class="form-content">
                    <header>Signup</header>
                    <form action="register" method="post" enctype="multipart/form-data">
                    <div class="field input-field">
           <input type="text" name="name" placeholder="Enter your name" required>
				  </div>
                        <div class="field input-field">
                            
                            <input type="email" id="inputEmail" name="email" placeholder="example@yourdomain.com" required>
                            
                        </div>
                        <script>
const emailInput = document.getElementById('inputEmail');

emailInput.addEventListener('input', function(e) {
  const inputText = e.target.value.trim().toLowerCase();
  const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
  const isValidEmail = emailRegex.test(inputText);
  e.target.setCustomValidity(isValidEmail ? '' : 'Please enter a valid professional email address.');
});
</script>

                        <div class="field input-field">
                            <input type="password" name="pass" class="password" placeholder="Create a password" required>
                        </div>

                        <div class="field input-field">
                           <input type="password" name="cnfrmpass" class="password" placeholder="Confirm a password" required>
                            <i class='bx bx-hide eye-icon'></i>
                        </div>
                         <div class="field input-field" >
            <input style="padding-top:10px" type="file" name="photo" accept="image/*" placeholder="Confirm a Profile photo" required>      
    				    </div>

                        <div class="field button-field">
                            <input type="submit" value="Signup" style="background-color:#d5d0dd;color:#0b0742;">
                        </div>
                    </form>

                    <div class="form-link">
                        <span>Already have an account? <a href="#" class="link login-link" style="color:#362b5f;">Login</a></span>
                    </div>
                </div>

               <!--  <div class="line"></div>

                <div class="media-options">
                    <a href="#" class="field facebook">
                        <i class='bx bxl-facebook facebook-icon'></i>
                        <span>Login with Facebook</span>
                    </a>
                </div>

                <div class="media-options">
                    <a href="#" class="field google">
                        <img src="https://cdn-icons-png.flaticon.com/512/2991/2991148.png" alt="" class="google-img">
                        <span>Login with Google</span>
                    </a>
                </div> -->

            </div>
            <div class="landing-image" style="margin-right:-70%;">
      <img src="https://res.cloudinary.com/jerrick/image/upload/v1649318817/624e9ba16dff27001dfe543e.png" alt="Working Illustration" style="width:70%;" />
    </div>
        </section>
        
     <script src="vendor/jquery/jquery.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
        <!-- JavaScript -->
        <!--<script src="js/script.js"></script>-->
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
else if(status=="fail"){
	swal("sorry","Email has been already registered","error");
	}
	</script>
	
	
<script type="text/javascript">
var status=document.getElementById("status").value;
if(status=="success"){
	swal("Hurrayyy...","Account created successfully","success");
	}
	</script>
    </body>
  
    
    <script>
    const forms = document.querySelector(".forms"),
    pwShowHide = document.querySelectorAll(".eye-icon"),
    links = document.querySelectorAll(".link");

pwShowHide.forEach(eyeIcon => {
  eyeIcon.addEventListener("click", () => {
      let pwFields = eyeIcon.parentElement.parentElement.querySelectorAll(".password");
      
      pwFields.forEach(password => {
          if(password.type === "password"){
              password.type = "text";
              eyeIcon.classList.replace("bx-hide", "bx-show");
              return;
          }
          password.type = "password";
          eyeIcon.classList.replace("bx-show", "bx-hide");
      })
      
  })
})      

links.forEach(link => {
  link.addEventListener("click", e => {
     e.preventDefault(); //preventing form submit
     forms.classList.toggle("show-signup");
  })
})

</script>
</html>
