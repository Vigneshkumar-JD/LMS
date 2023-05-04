<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Online Course</title>

    <link rel="stylesheet" href="video/css/themify-icons.css">
    <link rel="stylesheet" href="video/css/feather.css">
    <!-- Favicon icon -->
    
    <!-- Custom Stylesheet -->
    <link rel="stylesheet" href="video/css/style.css">
<script src="https://kit.fontawesome.com/1ff71a7bde.js" crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
    <link rel="stylesheet" href="video/css/video-player.css">
<link href="assets/css/feather.css" rel="stylesheet" type="text/css">

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

.play-container{
   width:150%;
  margin:5px;
   display: flex;
   flex-wrap: wrap;
   align-items: flex-start;
   gap:20px;
}

.play-container .main-video-container{
   flex:1 1 700px;
   border-radius: 3px;
   box-shadow: 0 5px 15px rgba(0,0,0,.1);
   background-color: #fff;
   padding:15px;
   
   
}

.play-container .main-video-container .main-video{
   margin-bottom: 7px;
   border-radius: 5px;
   width: 100%;
}

.play-container .main-video-container .main-vid-title{
   font-size: 20px;
   color:#444;
}

.play-container .video-list-container{
   flex:1 1 200px;
   height: 595px;
   overflow-y: scroll;
   border-radius: 5px;
   box-shadow: 0 5px 15px rgba(0,0,0,.1);
   background-color: #fff;
   padding:15px;
  
}

.play-container .video-list-container::-webkit-scrollbar{
   width: 5px;
   background-color: #f6f6f6;
}

.play-container .video-list-container::-webkit-scrollbar-track{
   background-color: #fff;
   border-radius: 5px;
}

.play-container .video-list-container::-webkit-scrollbar-thumb{
   background-color: #0b0742;
   border-radius: 5px;
}

.play-container .video-list-container .list{
   display: flex;
   align-items: center;
   gap:15px;
   padding:10px;
   background-color: #f6f6f6;
   cursor: pointer;
   border-radius: 5px;
   margin-bottom: 10px;

}

.play-container .video-list-container .list:last-child{
   margin-bottom: 0;
}

.play-container .video-list-container .list.active{
   background-color: #d5d0dd;
}

.play-container .video-list-container .list.active .list-title{
   color:#0B0742;
}

.play-container .video-list-container .list .list-video{
   width: 100px;
   border-radius: 5px;
}

.play-container .video-list-container .list .list-title{
   font-size: 17px;
   color:#444;
}


</style>

<body class="color-theme-blue mont-font">

<%

         String email=request.getParameter("useremail");
        String id=request.getParameter("course");
        String course = null;
        %>

<%

		// connect to database
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?","root","saranya@2001");

		// execute query to get new courses
		String query = ("select * from enrollment_courses  where useremail='" +email+ "' and id='" +id+ "'");
		PreparedStatement stmt = con.prepareStatement(query);
		ResultSet rs = stmt.executeQuery();

		// display new courses
		while (rs.next()) {
		    course = rs.getString(7);
		 id = rs.getString(1);
	%>

    <div class="main-wrapper">

     
        <!-- navigation -->
        <!-- main content -->
        <div class="main-content">
   
            <div class="middle-sidebar-bottom">
                
                    <div class="row">
                        <div class="col-xl-8 col-xxl-9" style="width: 100%;">
                      <!--       <div class="card border-0 mb-0 rounded-lg overflow-hidden" >
                                <div class="player shadow-none">
                                    <video id='video' src="images/v1.mp4" loop controls></video>

                                    <div class='play-btn-big'></div>
                                    <div class='controls'>
                                        <div class="time"><span class="time-current"></span><span class="time-total"></span></div>
                                        <div class='progress'>
                                            <div class='progress-filled'></div>
                                        </div>
                                        <div class='controls-main'>
                                            <div class='controls-left'>
                                                <div class='volume'>
                                                    <div class='volume-btn loud mt-1'>
                                                       <i class="fa-regular fa-volume"></i>
                                                    </div>
                                                    <div class='volume-slider'>
                                                        <div class='volume-filled'></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class='play-btn paused'></div>
                                            <div class="controls-right">
                                                <div class='speed'>
                                                    <ul class='speed-list'>
                                                        <li class='speed-item' data-speed='0.5'>0.5x</li>
                                                        <li class='speed-item' data-speed='0.75'>0.75x</li>
                                                        <li class='speed-item active' data-speed='1'>1x</li>
                                                        <li class='speed-item' data-speed='1.5'>1.5x</li>
                                                        <li class='speed-item' data-speed='2'>2x</li>
                                                    </ul>
                                                </div>
                                                <div class='fullscreen'>
                                                    <svg width="30" height="22" viewBox="0 0 30 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                            <path d="M0 0V-1.5H-1.5V0H0ZM0 18H-1.5V19.5H0V18ZM26 18V19.5H27.5V18H26ZM26 0H27.5V-1.5H26V0ZM1.5 6.54545V0H-1.5V6.54545H1.5ZM0 1.5H10.1111V-1.5H0V1.5ZM-1.5 11.4545V18H1.5V11.4545H-1.5ZM0 19.5H10.1111V16.5H0V19.5ZM24.5 11.4545V18H27.5V11.4545H24.5ZM26 16.5H15.8889V19.5H26V16.5ZM27.5 6.54545V0H24.5V6.54545H27.5ZM26 -1.5H15.8889V1.5H26V-1.5Z" transform="translate(2 2)" fill="white"/>
                                                        </svg>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                </div>
                            </div> -->
                            
                                      <div class="play-container"  >

<div class="main-video-container" >
  <video src="images/v1.mp4"  class="main-video" controls="false" ></video>
  <h3 class="main-vid-title">Who is This course for?</h3>
 
</div>

   <div class="video-list-container" id="playlist-container">

      <div class="list active video-container "  >
         <video src="images/v1.mp4" class="list-video" ></video>
         <h3 class="list-title">Who is This course for?</h3>
      </div>

      <div class="list video-container " >
      <i class="fa-solid fa-lock"></i>
        <video src="images/v2.mp4" class="list-video" ></video>
         <h3 class="list-title">What is <%= course %>?</h3>
      </div>

      <div class="list video-container ">
      <i class="fa-solid fa-lock"></i>
         <video src="images/v2.mp4" class="list-video" ></video>
         <h3 class="list-title">Companies that use <%= course %>?</h3>
      </div>

      <div class="list video-container " >
      <i class="fa-solid fa-lock"></i>
         <video src="images/v1.mp4" class="list-video" ></video>
         <h3 class="list-title"><%= course %> Design pattern</h3>
      </div>

      <div class="list video-container ">
      <i class="fa-solid fa-lock"></i>
         <video src="images/v2.mp4" class="list-video" ></video>
         <h3 class="list-title"><%= course %> Project</h3>
      </div>

      <div class="list video-container ">
      <i class="fa-solid fa-lock"></i>
         <video src="images/v1.mp4" class="list-video" ></video>
         <h3 class="list-title">Hello World Application</h3>
      </div>

      <div class="list video-container ">
      <i class="fa-solid fa-lock"></i>
         <video src="images/v2.mp4" class="list-video"></video>
         <h3 class="list-title">Static and Dynamic Routing</h3>
      </div>

      <div class="list video-container ">
     <i class="fa-solid fa-lock"></i>
          <video src="images/v2.mp4" class="list-video"></video>
         <h3 class="list-title">Dynamic Routing with path converterts</h3>
     </div> 
         <div class="list video-container ">
     <i class="fa-solid fa-lock"></i>
       <video src="images/v2.mp4" class="list-video"></video>
         <h3 class="list-title">URL Mappings</h3>
         </div>
         
         <div class="list video-container ">
     <i class="fa-solid fa-lock"></i>
       <video src="images/v2.mp4" class="list-video"></video>
         <h3 class="list-title">Variables</h3>
         </div>
         
         <div class="list video-container " >
     <i class="fa-solid fa-lock"></i>
       <video src="images/v2.mp4" class="list-video"></video>
         <h3 class="list-title">Tags and loops</h3>
         </div>
         
         <div class="list video-container " >
     <i class="fa-solid fa-lock"></i>
       <video src="images/v2.mp4" class="list-video"></video>
         <h3 class="list-title">Conditionals</h3>
         </div>
         
         <div class="list video-container ">
     <i class="fa-solid fa-lock"></i>
       <video src="images/v2.mp4" class="list-video"></video>
         <h3 class="list-title">Filters and Comments</h3>
         </div>
         
         <div class="list video-container ">
     <i class="fa-solid fa-lock"></i>
       <video src="images/v2.mp4" class="list-video"></video>
         <h3 class="list-title">Code Templates in Angular</h3>
         </div>
         
         <div class="list video-container " >
     <i class="fa-solid fa-lock"></i>
       <video src="images/v2.mp4" class="list-video"></video>
         <h3 class="list-title">Relative URL's</h3>
         </div>
         
         <div class="list video-container ">
     <i class="fa-solid fa-lock"></i>
       <video src="images/v2.mp4" class="list-video"></video>
         <h3 class="list-title">Using Static files in <%= course %></h3>
         </div>
         
         <div class="list video-container " >
     <i class="fa-solid fa-lock"></i>
       <video src="images/v2.mp4" class="list-video"></video>
         <h3 class="list-title">Models in <%= course %></h3>
         </div>
         
         <div class="list video-container " >
     <i class="fa-solid fa-lock"></i>
       <video src="images/v2.mp4" class="list-video"></video>
         <h3 class="list-title">Models in Code</h3>
         </div>
         
         <div class="list video-container ">
     <i class="fa-solid fa-lock"></i>
       <video src="images/v2.mp4" class="list-video"></video>
         <h3 class="list-title">Implementing examples on model</h3>
         </div>
         
         <div class="list video-container ">
     <i class="fa-solid fa-lock"></i>
       <video src="images/v2.mp4" class="list-video"></video>
         <h3 class="list-title">Exploring Models in Admin Interface</h3>
         </div>
         
         <div class="list video-container ">
     <i class="fa-solid fa-lock"></i>
       <video src="images/v2.mp4" class="list-video"></video>
         <h3 class="list-title">Build in Field Validation</h3>
         </div>
         
         <div class="list video-container ">
     <i class="fa-solid fa-lock"></i>
       <video src="images/v2.mp4" class="list-video"></video>
         <h3 class="list-title">Many To One Relationship</h3>
         </div>
         
         <div class="list video-container " >
     <i class="fa-solid fa-lock"></i>
       <video src="images/v2.mp4" class="list-video"></video>
         <h3 class="list-title">Many To MAny Relationship</h3>
         </div>
         
         <div class="list video-container " >
     <i class="fa-solid fa-lock"></i>
       <video src="images/v2.mp4" class="list-video"></video>
         <h3 class="list-title">One To One Relationship</h3>
         </div>
         
         
         <div class="list video-container ">
     <i class="fa-solid fa-lock"></i>
       <video src="images/v2.mp4" class="list-video"></video>
         <h3 class="list-title">Our First <%= course %> form</h3>
         </div>
         
         <div class="list video-container ">
     <i class="fa-solid fa-lock"></i>
       <video src="images/v2.mp4" class="list-video"></video>
         <h3 class="list-title">Render the form</h3>
         </div>
         
         <div class="list video-container ">
     <i class="fa-solid fa-lock"></i>
       <video src="images/v2.mp4" class="list-video"></video>
         <h3 class="list-title">Form Fields</h3>
         </div>
         
         <div class="list video-container ">
     <i class="fa-solid fa-lock"></i>
       <video src="images/v2.mp4" class="list-video"></video>
         <h3 class="list-title">Collecting Data via <%= course %> form</h3>
         </div>
         
         <div class="list video-container ">
     <i class="fa-solid fa-lock"></i>
       <video src="images/v2.mp4" class="list-video"></video>
         <h3 class="list-title">Basic form Validation</h3>
         </div>
         
         <div class="list video-container ">
     <i class="fa-solid fa-lock"></i>
       <video src="images/v2.mp4" class="list-video"></video>
         <h3 class="list-title">Initial form data</h3>
         </div>
         
         <div class="list video-container " >
     <i class="fa-solid fa-lock"></i>
       <video src="images/v2.mp4" class="list-video"></video>
         <h3 class="list-title">Form Field Widgets and Labels</h3>
         </div>
         
         <div class="list video-container ">
     <i class="fa-solid fa-lock"></i>
       <video src="images/v2.mp4" class="list-video"></video>
         <h3 class="list-title">Model Form</h3>
         </div>
         
         <div class="list video-container">
     <i class="fa-solid fa-lock"></i>
       <video src="images/v2.mp4" class="list-video"></video>
         <h3 class="list-title">Create a User Model</h3>
         </div>
         
         <div class="list video-container">
     <i class="fa-solid fa-lock"></i>
       <video src="images/v2.mp4" class="list-video"></video>
         <h3 class="list-title">Retrieve and Update the user</h3>
         </div>
         
         <div class="list video-container">
     <i class="fa-solid fa-lock"></i>
       <video src="images/v2.mp4" class="list-video"></video>
         <h3 class="list-title">Wrap Up!!!!</h3>
         </div>
         
         
     

   </div>
        
    </div>   


<!-- 
 <script>
  let videoList = document.querySelectorAll('.video-list-container .list');
  let mainVideo = document.querySelector('.main-video-container .main-video');
  let mainVideoTitle = document.querySelector('.main-video-container .main-vid-title');
  let mainVideoProgress = document.querySelector('.main-video-container .main-video-progress');
  
  let currentIndex = 0;
  let unlockedIndices = [];

  // Function to play a video
  function playVideo(index) {
    videoList.forEach(remove => { remove.classList.remove('active') });
    videoList[index].classList.add('active');
    let src = videoList[index].querySelector('.list-video').src;
    let title = videoList[index].querySelector('.list-title').innerHTML;
   
    mainVideo.src = src;
    mainVideo.load();
    mainVideoTitle.innerHTML = title;
    mainVideoProgress.value = 0;
   
    // Hide the icon for unlocked video
    if (!unlockedIndices.includes(index)) {
      let icon = videoList[index].querySelector('.fa-lock');
      if (icon) {
        icon.style.display = 'none';
      }
    }
  }

  // Play the first video when the page loads
  playVideo(currentIndex);

  // Handle video completion
  mainVideo.onended = function() {
    unlockedIndices.push(currentIndex);
    currentIndex++;
    if (currentIndex < videoList.length) {
      playVideo(currentIndex);
    } else {
      // Show/hide the lock icon for all videos
      videoList.forEach((vid, index) => {
        let icon = vid.querySelector('.fa-lock');
        if (icon) {
          icon.style.display = unlockedIndices.includes(index) ? 'none' : 'inline-block';
        }
      });
    }
  };

  // Handle clicks on the video list
  videoList.forEach((vid, index) => {
    vid.onclick = () => {
      if (unlockedIndices.includes(index) || index === currentIndex ) {
        playVideo(index);
      }
    };
  });

  </script> -->
  <script>
  let videoList = document.querySelectorAll('.video-list-container .list');
  let mainVideo = document.querySelector('.main-video-container .main-video');
  let mainVideoTitle = document.querySelector('.main-video-container .main-vid-title');
  let id = '<%=id %>';

  let unlockedVideos = JSON.parse(localStorage.getItem(id)) || {};
  let currentIndex = unlockedVideos.currentVideoIndex || 0;

  // Function to play a video
  function playVideo(index) {
    videoList.forEach(remove => { remove.classList.remove('active') });
    videoList[index].classList.add('active');
    let src = videoList[index].querySelector('.list-video').src;
    let title = videoList[index].querySelector('.list-title').innerHTML;

    mainVideo.src = src;
    mainVideoTitle.innerHTML = title;
    mainVideo.currentTime = unlockedVideos[index] || 0;

    // Hide the icon for unlocked video
    if (!unlockedVideos[index]) {
      let icon = videoList[index].querySelector('.fa-lock');
      if (icon) {
        icon.style.display = 'none';
      }
    }
  }

  // Play the first unlocked video or the first video when the page loads
  let found = false;
  for (let i = 0; i < videoList.length; i++) {
    if (unlockedVideos[i]) {
      playVideo(i);
      currentIndex = i;
      found = true;
      break;
    }
  }
  if (!found) {
    playVideo(currentIndex);
  }

  // Handle video completion
  mainVideo.onended = function() {
    unlockedVideos[currentIndex] = true;
    currentIndex++;
    if (currentIndex < videoList.length) {
      playVideo(currentIndex);
    } else {
      // Show/hide the lock icon for all videos
      videoList.forEach((vid, index) => {
        let icon = vid.querySelector('.fa-lock');
        if (icon) {
          icon.style.display = unlockedVideos[index] ? 'none' : 'inline-block';
        }
      });
    }
    localStorage.setItem(id, JSON.stringify({
      currentVideoIndex: currentIndex,
      ...unlockedVideos
    }));
  };

  // Handle clicks on the video list
  videoList.forEach((vid, index) => {
    vid.onclick = () => {
      if (unlockedVideos[index] || index === currentIndex) {
        unlockedVideos[index] = true;
        localStorage.setItem(id, JSON.stringify({
          currentVideoIndex: index,
          ...unlockedVideos
        }));
        playVideo(index);
      }
    };
  });

  // Save the unlocked videos in local storage
  window.addEventListener('beforeunload', function() {
    localStorage.setItem(id, JSON.stringify({
      currentVideoIndex: currentIndex,
      ...unlockedVideos
    }));
  });

  // Update the lock icons for all unlocked videos
  videoList.forEach((vid, index) => {
    let icon = vid.querySelector('.fa-lock');
    if (icon && unlockedVideos[index]) {
      icon.style.display = 'none';
    }
  });

  </script>
<!--   <script>
  const videos = document.querySelectorAll('video');
videos.forEach((video) => {
  video.addEventListener('click', () => {
    video.play();
    video.classList.add('active');
  });
  video.addEventListener('timeupdate', () => {
    if (video.currentTime >= 5 && video.currentTime < video.duration) {
      video.pause();
      video.currentTime = 0;
      video.classList.remove('active');
      localStorage.setItem('lastPlaybackTime', video.currentTime);
    }
  });
});

window.addEventListener('load', () => {
  const lastPlaybackTime = localStorage.getItem('lastPlaybackTime');
  if (lastPlaybackTime !== null) {
    videos.forEach((video) => {
      video.currentTime = lastPlaybackTime;
    });
  }
});
  </script> -->
<!-- <script>
//Get all videos and video list items
const videos = document.querySelectorAll('video');
const videoList = document.querySelectorAll('.video-list-container .list');

// Get main video elements
const mainVideo = document.querySelector('.main-video-container .main-video');
const mainVideoTitle = document.querySelector('.main-video-container .main-vid-title');
const mainVideoProgress = document.querySelector('.main-video-container .main-video-progress');

// Set initial index and unlocked videos
let currentIndex = 0;
let unlockedIndices = [];

// Function to play a video
function playVideo(index) {
  // Remove active class from all list items
  videoList.forEach(item => { item.classList.remove('active') });
  // Add active class to selected list item
  videoList[index].classList.add('active');

  // Get video source and title
  let src = videoList[index].querySelector('.list-video').src;
  let title = videoList[index].querySelector('.list-title').innerHTML;

  // Set video source and title
  mainVideo.src = src;
  mainVideo.load();
  mainVideoTitle.innerHTML = title;

  // Check if video is unlocked
  if (unlockedIndices.includes(index)) {
    // Set video progress to where user left off
    mainVideo.currentTime = localStorage.getItem(`video-${index}`) || 0;
  } else {
    // Set video progress to beginning
    mainVideo.currentTime = 0;
  }

  // Play video
  mainVideo.play();

  // Set progress bar max value
  mainVideoProgress.max = mainVideo.duration;

  // Show/hide lock icons for all videos
  videoList.forEach((item, i) => {
    let icon = item.querySelector('.fa-lock');
    if (icon) {
      icon.style.display = unlockedIndices.includes(i) ? 'none' : 'inline-block';
    }
  });

  // Set current index to selected index
  currentIndex = index;
}

// Play the first video when the page loads
playVideo(currentIndex);

// Add click event listener to all videos
videos.forEach((video) => {
  video.addEventListener('click', () => {
    if (video.paused) {
      video.play();
    } else {
      video.pause();
    }
  });
});

// Add timeupdate event listener to main video
mainVideo.addEventListener('timeupdate', () => {
  // Save current time to local storage
  if (unlockedIndices.includes(currentIndex)) {
    localStorage.setItem(`video-${currentIndex}`, mainVideo.currentTime);
  }

  // Update progress bar value
  mainVideoProgress.value = mainVideo.currentTime;

  // Check if video has played for more than 5 seconds
  if (mainVideo.currentTime >= 5 && mainVideo.currentTime < mainVideo.duration) {
    // Pause video and save current time to local storage
    mainVideo.pause();
    localStorage.setItem(`video-${currentIndex}`, mainVideo.currentTime);
  }

  // Check if video has finished playing
  if (mainVideo.currentTime === mainVideo.duration) {
    // Check if there is another unlocked video
    let nextIndex = unlockedIndices.indexOf(currentIndex) + 1;
    if (nextIndex < unlockedIndices.length) {
      // Play the next unlocked video
      playVideo(unlockedIndices[nextIndex]);
    }
  }
});

// Check local storage for unlocked videos
    	for (let i = 0; i < localStorage.length; i++) {
    		  let key = localStorage.key(i);
    		  if (key.startsWith('video-')) {
    		    let index = parseInt(key.split('-')[1]);
    		    unlockedIndices.push(index);
    		  }
    		}
    	// Handle clicks on the video list
    	videoList.forEach((item, index) => {
    	  item.addEventListener('click', () => {
    	    // Check if video is unlocked
    	    if (unlockedIndices.includes(index)) {
    	      // Play selected video
    	      playVideo(index);
    	    } else {
    	      // Show lock icon if video is locked
    	      let icon = item.querySelector('.fa-lock');
    	      if (icon) {
    	        icon.style.display = 'inline-block';
    	      }
    	    }
    	  });
    	});

    	// Handle main video ended event
    	mainVideo.addEventListener('ended', () => {
    	  // Unlock next video and play it
    	  let nextIndex = currentIndex + 1;
    	  if (nextIndex < videos.length) {
    	    unlockedIndices.push(nextIndex);
    	    localStorage.removeItem(`video-${nextIndex}`);
    	    playVideo(nextIndex);
    	  }
    	});

    	// Handle window unload event
    	window.addEventListener('unload', () => {
    	  // Save current video progress to local storage
    	  if (unlockedIndices.includes(currentIndex)) {
    	    localStorage.setItem(`video-${currentIndex}`, mainVideo.currentTime);
    	  }
    	});


</script>
 -->


    
                            <div class="card d-block border-0 rounded-lg overflow-hidden dark-bg-transparent bg-transparent mt-4 pb-3">
                                <div class="row">
                                    <div class="col-10">
                                        <h2 class="fw-700 font-md d-block lh-4 mb-2"><%= course %> Beginners Course</h2>
                                    </div>
                                    <div class="col-2">
                                        <a href="#" class="btn-round-md ml-3 d-inline-block float-right rounded-lg bg-danger"><i class="fa-sharp fa-solid fa-bookmark" style="color: #fff"></i></a>
                                        <a href="#" class="btn-round-md ml-0 d-inline-block float-right rounded-lg bg-greylight" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                           <i class="fa-solid fa-share" style="color: #0b0742"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right p-3 border-0 shadow-xss" aria-labelledby="dropdownMenu2" >
                                            <ul class="d-flex align-items-center mt-0 float-left" style="z-index: 999;">
                                                <li class="mr-2">
                                                    <h4 class="fw-600 font-xss text-grey-900  mt-2 mr-3">Share: </h4>
                                                </li>
                                                <li class="mr-2"><a href="#" class="btn-round-md bg-facebook"><i class="fa-brands fa-facebook"  style="color: #fff;" ></i></a></li>
                                                <li class="mr-2"><a href="#" class="btn-round-md bg-twiiter"><i class="fa-brands fa-twitter" style="color: #fff;"></i></a></li>
                                                <li class="mr-2"><a href="#" class="btn-round-md bg-linkedin"><i class="fa-brands fa-linkedin" style="color: #fff;"></i></a></li>
                                                <li class="mr-2"><a href="#" class="btn-round-md bg-instagram"><i class="fa-brands fa-instagram" style="color: #fff;"></i></a></li>
                                                <li class="mr-2"><a href="#" class="btn-round-md bg-pinterest"><i class="fa-brands fa-pinterest" style="color: #fff;"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                                <span class="font-xssss fw-700 text-grey-900 d-inline-block ml-0 text-dark"><%= course %></span>
                                <span class="dot ml-2 mr-2 d-inline-block btn-round-xss bg-grey"></span>
                                <span class="font-xssss fw-600  d-inline-block ml-1">Java</span>
                                <span class="font-xssss fw-600  d-inline-block ml-1">JS</span>
                                <span class="font-xssss fw-600  d-inline-block ml-1">Angular</span>
                                <span class="font-xssss fw-600  d-inline-block ml-1">PHP</span>
                                <span class="font-xssss fw-600  d-inline-block ml-1">Jquery</span>
                                <span class="dot ml-2 mr-2 d-inline-block btn-round-xss bg-grey"></span>
                                <span class="font-xssss fw-700 text-primary d-inline-block ml-0 ">Follow Author</span>
                            </div>

                            <div class="card d-block border-0 rounded-lg overflow-hidden mt-2">
                                <div id="accordion" class="accordion mb-0">
                                    <div class="card shadow-xss mb-0">
                                        <div class="card-header bg-greylight theme-dark-bg" id="headingOne">
                                            <h5 class="mb-0"><button class="btn font-xsss fw-600 btn-link " data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">Before Getting Started </button></h5>
                                        </div>
                                        <div id="collapseOne" class="collapse p-3" aria-labelledby="headingOne" data-parent="#accordion">
                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">1</span>
                                                <span class="font-xssss fw-500  ml-2">Who is This course for?</span>
                                                <span class="ml-auto font-xssss fw-500 ">12:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">2</span>
                                                <span class="font-xssss fw-500  ml-2">Learning Outcomes</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="card shadow-xss mb-0">
                                        <div class="card-header bg-greylight theme-dark-bg" id="headingTwo">
                                            <h5 class="mb-0"><button class="btn font-xsss fw-600 btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">Introduction to Angular</button></h5>
                                        </div>
                                        <div id="collapseTwo" class="collapse p-3" aria-labelledby="headingTwo" data-parent="#accordion">
                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">1</span>
                                                <span class="font-xssss fw-500  ml-2">What is <%= course %>?</span>
                                                <span class="ml-auto font-xssss fw-500 ">12:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">2</span>
                                                <span class="font-xssss fw-500  ml-2">Companies that use <%= course %>?</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">3</span>
                                                <span class="font-xssss fw-500  ml-2"><%= course %> Design pattern</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">4</span>
                                                <span class="font-xssss fw-500  ml-2">Quiz on <%= course %> Basics</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="card shadow-xss mb-0">
                                        <div class="card-header bg-greylight theme-dark-bg" id="headingThree">
                                            <h5 class="mb-0"><button class="btn font-xsss fw-600 btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree"> First Angular application </button></h5>
                                        </div>
                                        <div id="collapseThree" class="collapse p-3" aria-labelledby="headingThree" data-parent="#accordion">
                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">1</span>
                                                <span class="font-xssss fw-500  ml-2"><%= course %> Project</span>
                                                <span class="ml-auto font-xssss fw-500 ">12:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">2</span>
                                                <span class="font-xssss fw-500  ml-2">Hello World Application</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">3</span>
                                                <span class="font-xssss fw-500  ml-2">Static and Dynamic Routing</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">4</span>
                                                <span class="font-xssss fw-500  ml-2">Dynamic Routing with path converterts</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>
                                            
                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">5</span>
                                                <span class="font-xssss fw-500  ml-2">URL Mappings</span>
                                                <span class="ml-auto font-xssss fw-500 ">13:34</span>
                                            </div>
                                            
                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">6</span>
                                                <span class="font-xssss fw-500  ml-2">Quiz on <%= course %> applications</span>
                                                <span class="ml-auto font-xssss fw-500 ">12:34</span>
                                            </div>
                                        </div>
                                    </div>
                                    
                                              <div class="card shadow-xss mb-0">
                                        <div class="card-header bg-greylight theme-dark-bg" id="headingFour">
                                            <h5 class="mb-0"><button class="btn font-xsss fw-600 btn-link collapsed" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour"> Templates in Angular </button></h5>
                                        </div>
                                        <div id="collapseFour" class="collapse p-3" aria-labelledby="headingFOur" data-parent="#accordion">
                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">1</span>
                                                <span class="font-xssss fw-500  ml-2"><%= course %> Template Engine</span>
                                                <span class="ml-auto font-xssss fw-500 ">12:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">2</span>
                                                <span class="font-xssss fw-500  ml-2">Variables</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">3</span>
                                                <span class="font-xssss fw-500  ml-2">Tags and loops</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">4</span>
                                                <span class="font-xssss fw-500  ml-2">Conditionals</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>
                                            
                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">5</span>
                                                <span class="font-xssss fw-500  ml-2">Filters and Comments</span>
                                                <span class="ml-auto font-xssss fw-500 ">13:34</span>
                                            </div>
                                            
                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">6</span>
                                                <span class="font-xssss fw-500  ml-2">Quiz on Templates</span>
                                                <span class="ml-auto font-xssss fw-500 ">12:34</span>
                                            </div>
                                        </div>
                                    </div>
                                    
                                       <div class="card shadow-xss mb-0">
                                        <div class="card-header bg-greylight theme-dark-bg" id="headingFive">
                                            <h5 class="mb-0"><button class="btn font-xsss fw-600 btn-link " data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">Static Files in Angular </button></h5>
                                        </div>
                                        <div id="collapseFive" class="collapse p-3" aria-labelledby="headingFive" data-parent="#accordion">
                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">1</span>
                                                <span class="font-xssss fw-500  ml-2">Using Static files in <%= course %></span>
                                                <span class="ml-auto font-xssss fw-500 ">12:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">2</span>
                                                <span class="font-xssss fw-500  ml-2">Quiz on Static Files</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>

                                        </div>
                                    </div>
                                    
                                        <div class="card shadow-xss mb-0">
                                        <div class="card-header bg-greylight theme-dark-bg" id="headingSix">
                                            <h5 class="mb-0"><button class="btn font-xsss fw-600 btn-link " data-toggle="collapse" data-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">Mini-Project </button></h5>
                                        </div>
                                        <div id="collapseSix" class="collapse p-3" aria-labelledby="headingSix" data-parent="#accordion">
                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">1</span>
                                                <span class="font-xssss fw-500  ml-2">Laying Grounds for Song Playing Application</span>
                                                <span class="ml-auto font-xssss fw-500 ">12:34</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="card shadow-xss mb-0">
                                        <div class="card-header bg-greylight theme-dark-bg" id="headingSeven">
                                            <h5 class="mb-0"><button class="btn font-xsss fw-600 btn-link collapsed" data-toggle="collapse" data-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven"> Project Solution</button></h5>
                                        </div>
                                        <div id="collapseSeven" class="collapse p-3" aria-labelledby="headingSeven" data-parent="#accordion">
                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">1</span>
                                                <span class="font-xssss fw-500  ml-2">Project Solution : Create a Playlist Template</span>
                                                <span class="ml-auto font-xssss fw-500 ">12:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">2</span>
                                                <span class="font-xssss fw-500  ml-2">Project Solution : Create a Song Template</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">3</span>
                                                <span class="font-xssss fw-500  ml-2">Project Solution : Template Inheritance</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">4</span>
                                                <span class="font-xssss fw-500  ml-2">Project Solution : Serve Static Image</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    
                                               <div class="card shadow-xss mb-0">
                                        <div class="card-header bg-greylight theme-dark-bg" id="headingEight">
                                            <h5 class="mb-0"><button class="btn font-xsss fw-600 btn-link collapsed" data-toggle="collapse" data-target="#collapseEight" aria-expanded="false" aria-controls="collapseEight"> Angular Models</button></h5>
                                        </div>
                                        <div id="collapseEight" class="collapse p-3" aria-labelledby="headingEight" data-parent="#accordion">
                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">1</span>
                                                <span class="font-xssss fw-500  ml-2">Models in <%= course %></span>
                                                <span class="ml-auto font-xssss fw-500 ">12:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">2</span>
                                                <span class="font-xssss fw-500  ml-2">Models in Code</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">3</span>
                                                <span class="font-xssss fw-500  ml-2">Implementing examples on model</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">4</span>
                                                <span class="font-xssss fw-500  ml-2">Exploring Models in Admin Interface</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>
                                            
                                               <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">5</span>
                                                <span class="font-xssss fw-500  ml-2">Build in Field Validation</span>
                                                <span class="ml-auto font-xssss fw-500 ">12:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">6</span>
                                                <span class="font-xssss fw-500  ml-2">Many To One Relationship</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">7</span>
                                                <span class="font-xssss fw-500  ml-2">Many To MAny Relationship</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">8</span>
                                                <span class="font-xssss fw-500  ml-2">One To One Relationship</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>
                                            
                                             <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">9</span>
                                                <span class="font-xssss fw-500  ml-2">Quiz on Models</span>
                                                <span class="ml-auto font-xssss fw-500 ">12:34</span>
                                            </div>
                                        </div>
                                    </div>
                                    
                                     <div class="card shadow-xss mb-0">
                                        <div class="card-header bg-greylight theme-dark-bg" id="headingNine">
                                            <h5 class="mb-0"><button class="btn font-xsss fw-600 btn-link collapsed" data-toggle="collapse" data-target="#collapseNine" aria-expanded="false" aria-controls="collapseNine">Angular Forms</button></h5>
                                        </div>
                                        <div id="collapseNine" class="collapse p-3" aria-labelledby="headingNine" data-parent="#accordion">
                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">1</span>
                                                <span class="font-xssss fw-500  ml-2">Our First <%= course %> form</span>
                                                <span class="ml-auto font-xssss fw-500 ">12:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">2</span>
                                                <span class="font-xssss fw-500  ml-2">Render the form</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">3</span>
                                                <span class="font-xssss fw-500  ml-2">Form Fields</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">4</span>
                                                <span class="font-xssss fw-500  ml-2">Collecting Data via <%= course %> form</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>
                                            
                                               <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">5</span>
                                                <span class="font-xssss fw-500  ml-2">Basic form Validation</span>
                                                <span class="ml-auto font-xssss fw-500 ">12:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">6</span>
                                                <span class="font-xssss fw-500  ml-2">Initial form data</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">7</span>
                                                <span class="font-xssss fw-500  ml-2">Form Field Widgets and Labels</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">8</span>
                                                <span class="font-xssss fw-500  ml-2">Model Form</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>
                                        
                                        </div>
                                    </div>
                                    
                                    
                                                       <div class="card shadow-xss mb-0">
                                        <div class="card-header bg-greylight theme-dark-bg" id="headingTen">
                                            <h5 class="mb-0"><button class="btn font-xsss fw-600 btn-link collapsed" data-toggle="collapse" data-target="#collapseTen" aria-expanded="false" aria-controls="collapseTen">Operations on Models</button></h5>
                                        </div>
                                        <div id="collapseTen" class="collapse p-3" aria-labelledby="headingTen" data-parent="#accordion">
                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">1</span>
                                                <span class="font-xssss fw-500  ml-2">Create a User Model</span>
                                                <span class="ml-auto font-xssss fw-500 ">12:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">2</span>
                                                <span class="font-xssss fw-500  ml-2">Retrieve and Update the user</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>
                                    </div>
                                    
                                </div>
                                
                                                 <div class="card shadow-xss mb-0">
                                        <div class="card-header bg-greylight theme-dark-bg" id="headingeleven">
                                            <h5 class="mb-0"><button class="btn font-xsss fw-600 btn-link collapsed" data-toggle="collapse" data-target="#collapseeleven" aria-expanded="false" aria-controls="collapseeleven">Mini Project</button></h5>
                                        </div>
                                        <div id="collapseeleven" class="collapse p-3" aria-labelledby="headingeleven" data-parent="#accordion">
                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">1</span>
                                                <span class="font-xssss fw-500  ml-2">Take your Playlist to Next level</span>
                                                <span class="ml-auto font-xssss fw-500 ">12:34</span>
                                            </div>

                                            
                                    </div>
                                    
                                </div>
                                
                                
                                
                                     <div class="card shadow-xss mb-0">
                                        <div class="card-header bg-greylight theme-dark-bg" id="headingTwelve">
                                            <h5 class="mb-0"><button class="btn font-xsss fw-600 btn-link collapsed" data-toggle="collapse" data-target="#collapseTwelve" aria-expanded="false" aria-controls="collapseTwelve">Project Solution</button></h5>
                                        </div>
                                        <div id="collapseTwelve" class="collapse p-3" aria-labelledby="headingTwelve" data-parent="#accordion">
                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">1</span>
                                                <span class="font-xssss fw-500  ml-2">Project Solution: Create Models</span>
                                                <span class="ml-auto font-xssss fw-500 ">12:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">2</span>
                                                <span class="font-xssss fw-500  ml-2">Project Solution: Define Relationship</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">3</span>
                                                <span class="font-xssss fw-500  ml-2">Project Solution: Make a Signup Form</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">4</span>
                                                <span class="font-xssss fw-500  ml-2">Project Solution: Make a Login Form</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>
                                            
                                               <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">5</span>
                                                <span class="font-xssss fw-500  ml-2">Project Solution: Inserting users at signup</span>
                                                <span class="ml-auto font-xssss fw-500 ">12:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">6</span>
                                                <span class="font-xssss fw-500  ml-2">Project Solution: Authenticate the user at Login</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">7</span>
                                                <span class="font-xssss fw-500  ml-2">Project Solution: Retreving asongs and playlist</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>

                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">8</span>
                                                <span class="font-xssss fw-500  ml-2">Project Solution: Updating Songs</span>
                                                <span class="ml-auto font-xssss fw-500 ">10:34</span>
                                            </div>
                                        
                                        </div>
                                    </div>
                                    
                                    
                                      <div class="card shadow-xss mb-0">
                                        <div class="card-header bg-greylight theme-dark-bg" id="headingThirteen">
                                            <h5 class="mb-0"><button class="btn font-xsss fw-600 btn-link collapsed" data-toggle="collapse" data-target="#collapseThirteen" aria-expanded="false" aria-controls="collapseThirteen">Wrap up</button></h5>
                                        </div>
                                        <div id="collapseThirteen" class="collapse p-3" aria-labelledby="headingThirteen" data-parent="#accordion">
                                            <div class="card-body d-flex p-2">
                                                <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">1</span>
                                                <span class="font-xssss fw-500  ml-2">Conclusion</span>
                                                <span class="ml-auto font-xssss fw-500 ">12:34</span>
                                            </div>

                                            
                                    </div>
                                    
                                </div>
                                
                                
                            </div>

                            <div class="card d-block border-0 rounded-lg overflow-hidden p-4 shadow-xss mt-4 alert-success">
                                <h2 class="fw-700 font-sm mb-3 mt-1 pl-1 text-success mb-4">What you'll learn from this lesson</h2>
                                <ul class="list-style-disc pl-4 mt-3">
                               <li>
                                <h4 class=" fw-500  mb-3 pl-30 position-relative lh-24" style="font-size: 1rem;color: #0b0742;font-weight: 500;">Create awesome projects using Angular such as animation with password access to a work book, loading
                                    animation.</h4></li>
                                <li><h4 class=" fw-500  mb-3 pl-30 position-relative lh-24" style="font-size: 1rem;color: #0b0742;font-weight: 500;">After completing this course you'll be confident to create any subtle to complex animation that will turn any project
                                    a professional work and surely you'll become an awesome developer and designer</h4></li>
                               <li> <h4 class=" fw-500  mb-3 pl-30 position-relative lh-24" style="font-size: 1rem;color: #0b0742;font-weight: 500;">Create awesome projects using Angular such as animation with password access to a work book, loading
                                    animation.</h4></li>
                                <li><h4 class=" fw-500  mb-3 pl-30 position-relative lh-24" style="font-size: 1rem;color: #0b0742;font-weight: 500;">After completing this course you'll be confident to create any subtle to complex animation that will turn any project
                                    a professional work and surely you'll become an awesome developer and designer</h4></li>
                                <li><h4 class=" fw-500  mb-3 pl-30 position-relative lh-24" style="font-size: 1rem;color: #0b0742;font-weight: 500;">Create awesome projects using Angular such as animation with password access to a work book, loading
                                    animation.</h4></li>
                                <li><h4 class=" fw-500  mb-3 pl-30 position-relative lh-24" style="font-size: 1rem;color: #0b0742;font-weight: 500;">After completing this course you'll be confident to create any subtle to complex animation that will turn any project
                                    a professional work and surely you'll become an awesome developer and designer</h4></li>
								</ul>
                            </div>

                            <div class="card d-block border-0 rounded-lg overflow-hidden p-4 shadow-xss mt-4">
                                <h2>Description</h2>
                                <p class=" fw-500 lh-28  mb-0 pl-2" style="color: #0b0742;font-size: 1rem">After creating more than a dozen courses on Microsoft Access databases and programming in VBA, many students have contacted me with discussions on specific problems and scenarios. From these discussions, I have created
                                    videos reviewing the details of the most useful techniques that everyone will eventually need. I have made sure that every detail of these techniques is recorded in the videos! BUT you should be somewhat familiar with
                                    VBA since there are lots of coding examples in the course. <br> There are MANY tips and tricks in this workshop that you will not find an ANY of my other courses! <br> I also include a specific database design challenge
                                    from a student and then go over the details of how I would handle it. <br> If you are willing to take the time to go through this course you could easily be much more productive with Microsoft Access in just a few hours!
                                    </p>
                            </div>

                            <div class="card d-block border-0 rounded-lg overflow-hidden p-4 shadow-xss mt-4 mb-5">
                                <h2>How to Become the <%= course %> Developer?</h2>
                                <p style="color: #0b0742" ><%= course %> developers accomplish a lot with simple and versatile programming languages. A developer writes server-side web applications whilst working as a Web developer. In short, they are the creators, managers, and destroyers of <%= course %> projects.. From these discussions,</p>
                                <ul class="list-style-disc pl-4 mt-3">
                                    <li>
                                        <p style="color: #0b0742">Build Your GitHub Repository ,</p>
                                    </li>
                                    <li>
                                        <p  style="color: #0b0742">Write Readable Code,</p>
                                    </li>
                                    <li>
                                        <p  style="color: #0b0742">Create Proper Documentation,</p>
                                    </li>
                                    <li>
                                        <p  style="color: #0b0742">Read Other People's Code Around Your Skill Level,</p>
                                    </li>
                                    <li>
                                        <p  style="color: #0b0742">Read books on <%= course %> Coding,</p>
                                    </li>
                                    <li>
                                        <p  style="color: #0b0742">Grow Your <%= course %> Skillset,</p>
                                    </li>
                                    <li>
                                        <p  style="color: #0b0742">Accept Freelance Projects, </p>
                                    </li>
                                    <li>
                                        <p  style="color: #0b0742">Make Open Source Contributions</p>
                                    </li>
                                    <li>
                                        <p  style="color: #0b0742">Follow a Daily Schedule for Practice</p>
                                    </li>
                                   
                                    
                                </ul>
                            </div>
                        </div>
                        <div class="col-xl-4 col-xxl-3" style="position: absolute;top:19%;left:100%;width: 160%">
                           
                            <div class="card w-130 border-0 mt-0 mb-4 p-4 shadow-xss position-relative rounded-lg bg-white">
                                <div class="row">
                                    <div class="col-5 pr-0">
                                        <h2 class="display3-size lh-1 m-0 text-grey-900 fw-700">4.2</h2>
                                    </div>
                                    <div class="col-7 pl-0 text-right">
                                        <div class="star d-block w-100 text-right">
                                            <img src="video/images/star.png" alt="star" class="w10">
                                            <img src="video/images/star.png" alt="star" class="w10">
                                            <img src="video/images/star.png" alt="star" class="w10">
                                            <img src="video/images/star.png" alt="star" class="w10">
                                            <img src="video/images/star-disable.png" alt="star" class="w10">
                                        </div>
                                        <h4 class=" fw-600 mt-1">Based on 433 rating</h4>
                                    </div>
                                </div>
                                <div class="bg-greylight theme-dark-bg rounded-sm p-2 mt-3 mb-4">
                                    <div class="row mt-3">
                                        <div class="col-3 pr-1 mt-0"><img src="video/images/star.png" alt="star" class="w10 float-left">
                                            <h4 class="font-xsss fw-600 text-grey-600 ml-1 float-left d-inline">5</h4>
                                        </div>
                                        <div class="col-7 pl-0 pr-2">
                                            <div id="bar_1" data-value="45" class="bar-container">
                                                <div class="bar-percentage" style="width: 70%;"></div>
                                            </div>
                                        </div>
                                        <div class="col-2 pl-0">
                                            <h4 class="font-xssss fw-600 text-grey-800">70%</h4>
                                        </div>
                                    </div>
                                    <div class="row mt-1">
                                        <div class="col-3 pr-1 mt-0"><img src="video/images/star.png" alt="star" class="w10 float-left">
                                            <h4 class="font-xsss fw-600 text-grey-600 ml-1 float-left d-inline">4</h4>
                                        </div>
                                        <div class="col-7 pl-0 pr-2">
                                            <div id="bar_2" data-value="45" class="bar-container">
                                                <div class="bar-percentage" style="width: 50%;"></div>
                                            </div>
                                        </div>
                                        <div class="col-2 pl-0">
                                            <h4 class="font-xssss fw-600 text-grey-800">50%</h4>
                                        </div>
                                    </div>
                                    <div class="row mt-1">
                                        <div class="col-3 pr-1 mt-0"><img src="video/images/star.png" alt="star" class="w10 float-left">
                                            <h4 class="font-xsss fw-600 text-grey-600 ml-1 float-left d-inline">3</h4>
                                        </div>
                                        <div class="col-7 pl-0 pr-2">
                                            <div id="bar_3" data-value="45" class="bar-container">
                                                <div class="bar-percentage" style="width: 40%;"></div>
                                            </div>
                                        </div>
                                        <div class="col-2 pl-0">
                                            <h4 class="font-xssss fw-600 text-grey-800">40%</h4>
                                        </div>
                                    </div>
                                    <div class="row mt-1">
                                        <div class="col-3 pr-1 mt-0"><img src="video/images/star.png" alt="star" class="w10 float-left">
                                            <h4 class="font-xsss fw-600 text-grey-600 ml-1 float-left d-inline">2</h4>
                                        </div>
                                        <div class="col-7 pl-0 pr-2">
                                            <div id="bar_4" data-value="45" class="bar-container">
                                                <div class="bar-percentage" style="width: 30%;"></div>
                                            </div>
                                        </div>
                                        <div class="col-2 pl-0">
                                            <h4 class="font-xssss fw-600 text-grey-800">30%</h4>
                                        </div>
                                    </div>
                                    <div class="row mt-1">
                                        <div class="col-3 pr-1 mt-0"><img src="video/images/star.png" alt="star" class="w10 float-left">
                                            <h4 class="font-xsss fw-600 text-grey-600 ml-1 float-left d-inline">1</h4>
                                        </div>
                                        <div class="col-7 pl-0 pr-2">
                                            <div id="bar_5" data-value="45" class="bar-container">
                                                <div class="bar-percentage" style="width: 20%;"></div>
                                            </div>
                                        </div>
                                        <div class="col-2 pl-0">
                                            <h4 class="font-xssss fw-600 text-grey-800">20%</h4>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                   
                                    <div class="col-10 pl-4">
                                        <div class="content">
                                            <h6 class="  fw-700 mb-0 "  style="color: #0b0742;font-size: 1rem">Vignesh</h6>
                                            <h6 class="d-block  fw-500  mt-2 mb-0">Jan 26 at 8:20 PM</h6>
                                            <div class="star d-block w-100 text-left">
                                                <img src="video/images/star.png" alt="star" class="w10">
                                                <img src="video/images/star.png" alt="star" class="w10">
                                                <img src="video/images/star.png" alt="star" class="w10">
                                                <img src="video/images/star.png" alt="star" class="w10">
                                                <img src="video/images/star-disable.png" alt="star" class="w10">
                                            </div>
                                            <p class="comment-text lh-24 fw-500   mt-2" style="color: #83799c;font-size: 1rem">Enjoyed this a lot and well done. We are an early stage digitally native vertical brand, making travel bags. </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    
                                    <div class="col-10 pl-4">
                                        <div class="content">
                                            <h6 class="author-name  fw-800 mb-0 text-grey-800" style="color: #83799c;font-size: 1rem">Bharathi</h6>
                                            <h6 class="d-block  fw-500  mt-2 mb-0">Jan 26 at 8:20 PM</h6>
                                            <div class="star d-block w-100 text-left">
                                                <img src="video/images/star.png" alt="star" class="w10">
                                                <img src="video/images/star.png" alt="star" class="w10">
                                                <img src="video/images/star.png" alt="star" class="w10">
                                                <img src="video/images/star.png" alt="star" class="w10">
                                                <img src="video/images/star-disable.png" alt="star" class="w10">
                                            </div>
                                            <p class="comment-text lh-24 fw-500   mt-2" style="color: #0b0742;font-size: 1rem">Enjoyed this a lot and well done. We are an early stage digitally native vertical brand, making travel bags. </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                   
                                    <div class="col-10 pl-4">
                                        <div class="content">
                                            <h6 class="author-name  fw-600 mb-0 text-grey-800" style="color: #83799c;font-size: 1rem">Santhosh</h6>
                                            <h6 class="d-block  fw-500  mt-2 mb-0">Jan 26 at 8:20 PM</h6>
                                            <div class="star d-block w-100 text-left">
                                                <img src="video/images/star.png" alt="star" class="w10">
                                                <img src="video/images/star.png" alt="star" class="w10">
                                                <img src="video/images/star.png" alt="star" class="w10">
                                                <img src="video/images/star.png" alt="star" class="w10">
                                                <img src="video/images/star-disable.png" alt="star" class="w10">
                                            </div>
                                            <p class="comment-text lh-24 fw-500   mt-2" style="color: #0b0742;font-size: 1rem">Enjoyed this a lot and well done. We are an early stage digitally native vertical brand, making travel bags. </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                  
                                    <div class="col-10 pl-4">
                                        <div class="content">
                                            <h6 class="author-name  fw-600 mb-0 text-grey-800" style="color: #83799c;font-size: 1rem">Saranya</h6>
                                            <h6 class="d-block  fw-500  mt-2 mb-0">Jan 26 at 8:20 PM</h6>
                                            <div class="star d-block w-100 text-left">
                                                <img src="video/images/star.png" alt="star" class="w10">
                                                <img src="video/images/star.png" alt="star" class="w10">
                                                <img src="video/images/star.png" alt="star" class="w10">
                                                <img src="video/images/star.png" alt="star" class="w10">
                                                <img src="video/images/star-disable.png" alt="star" class="w10">
                                            </div>
                                            <p class="comment-text lh-24 fw-500   mt-2" style="color: #0b0742;font-size: 1rem">Enjoyed this a lot and well done. We are an early stage digitally native vertical brand, making travel bags. </p>
                                        </div>
                                    </div>
                                </div>


    								<div class="row">
                                  
                                    <div class="col-10 pl-4">
                                        <div class="content">
                                            <h6 class="author-name  fw-600 mb-0 text-grey-800" style="color: #83799c;font-size: 1rem">Komal</h6>
                                            <h6 class="d-block  fw-500  mt-2 mb-0">Jan 26 at 8:20 PM</h6>
                                            <div class="star d-block w-100 text-left">
                                                <img src="video/images/star.png" alt="star" class="w10">
                                                <img src="video/images/star.png" alt="star" class="w10">
                                                <img src="video/images/star.png" alt="star" class="w10">
                                                <img src="video/images/star.png" alt="star" class="w10">
                                                <img src="video/images/star-disable.png" alt="star" class="w10">
                                            </div>
                                            <p class="comment-text lh-24 fw-500   mt-2" style="color: #0b0742;font-size: 1rem">Enjoyed this a lot and well done. We are an early stage digitally native vertical brand, making travel bags. </p>
                                        </div>
                                    </div>
                                </div>
                                
                                
    								<div class="row">
                                  
                                    <div class="col-10 pl-4">
                                        <div class="content">
                                            <h6 class="author-name  fw-600 mb-0 text-grey-800" style="color: #83799c;font-size: 1rem">Muthu</h6>
                                            <h6 class="d-block  fw-500  mt-2 mb-0">Jan 26 at 8:20 PM</h6>
                                            <div class="star d-block w-100 text-left">
                                                <img src="video/images/star.png" alt="star" class="w10">
                                                <img src="video/images/star.png" alt="star" class="w10">
                                                <img src="video/images/star.png" alt="star" class="w10">
                                                <img src="video/images/star.png" alt="star" class="w10">
                                                <img src="video/images/star-disable.png" alt="star" class="w10">
                                            </div>
                                            <p class="comment-text lh-24 fw-500   mt-2" style="color: #0b0742;font-size: 1rem">Enjoyed this a lot and well done. We are an early stage digitally native vertical brand, making travel bags. </p>
                                        </div>
                                    </div>
                                </div>
                                
                                
    								<div class="row">
                                  
                                    <div class="col-10 pl-4">
                                        <div class="content">
                                            <h6 class="author-name  fw-600 mb-0 text-grey-800" style="color: #83799c;font-size: 1rem">Surya</h6>
                                            <h6 class="d-block  fw-500  mt-2 mb-0">Jan 26 at 8:20 PM</h6>
                                            <div class="star d-block w-100 text-left">
                                                <img src="video/images/star.png" alt="star" class="w10">
                                                <img src="video/images/star.png" alt="star" class="w10">
                                                <img src="video/images/star.png" alt="star" class="w10">
                                                <img src="video/images/star.png" alt="star" class="w10">
                                                <img src="video/images/star-disable.png" alt="star" class="w10">
                                            </div>
                                            <p class="comment-text lh-24 fw-500   mt-2" style="color: #0b0742;font-size: 1rem">Enjoyed this a lot and well done. We are an early stage digitally native vertical brand, making travel bags. </p>
                                        </div>
                                    </div>
                                </div>
                                
                                
    								<div class="row">
                                  
                                    <div class="col-10 pl-4">
                                        <div class="content">
                                            <h6 class="author-name  fw-600 mb-0 text-grey-800" style="color: #83799c;font-size: 1rem">Vino</h6>
                                            <h6 class="d-block  fw-500  mt-2 mb-0">Jan 26 at 8:20 PM</h6>
                                            <div class="star d-block w-100 text-left">
                                                <img src="video/images/star.png" alt="star" class="w10">
                                                <img src="video/images/star.png" alt="star" class="w10">
                                                <img src="video/images/star.png" alt="star" class="w10">
                                                <img src="video/images/star.png" alt="star" class="w10">
                                                <img src="video/images/star-disable.png" alt="star" class="w10">
                                            </div>
                                            <p class="comment-text lh-24 fw-500   mt-2" style="color: #0b0742;font-size: 1rem">Enjoyed this a lot and well done. We are an early stage digitally native vertical brand, making travel bags. </p>
                                        </div>
                                    </div>
                                </div>
                                
                                
                                <div class="row"><a href="#" class="d-block p-2 lh-32 w-100 text-center ml-3 mr-3 bg-greylight fw-600 font-xssss text-grey-900">Add a Review</a></div>
                            </div>

                            <div class="card shadow-xss rounded-lg border-0 p-4 mb-4">
                                <h4 class="font-xs fw-700 text-grey-900 d-block mb-3">Module <a href="#" class="float-right"><i class="fa-solid fa-circle-right" style="color:#0b0742"></i></a></h4>
                                <div class="card-body d-flex p-0">
                                    <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">1</span>
                                    <span class="font-xssss fw-500  ml-2">Before Getting Started</span>
                                    <span class="ml-auto font-xssss fw-500 ">12:34</span>
                                </div>
                                <div class="card-body d-flex p-0 mt-3">
                                    <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">2</span>
                                    <span class="font-xssss fw-500  ml-2">Introduction to <%= course %></span>
                                    <span class="ml-auto font-xssss fw-500 ">22:34</span>
                                </div>

                                <div class="card-body d-flex p-0 mt-3">
                                    <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">3</span>
                                    <span class="font-xssss fw-500  ml-2"> First Angular application</span>
                                    <span class="ml-auto font-xssss fw-500 ">34:34</span>
                                </div>

                                <div class="card-body d-flex p-0 mt-3">
                                    <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">4</span>
                                    <span class="font-xssss fw-500  ml-2">Templates in <%= course %></span>
                                    <span class="ml-auto font-xssss fw-500 ">40:34</span>
                                </div>

                                <div class="card-body d-flex p-0 mt-3">
                                    <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">5</span>
                                    <span class="font-xssss fw-500  ml-2">Static Files in <%= course %></span>
                                    <span class="ml-auto font-xssss fw-500 ">2:34</span>
                                </div>
                                
                                <div class="card-body d-flex p-0 mt-3">
                                    <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">6</span>
                                    <span class="font-xssss fw-500  ml-2">Mini-Project</span>
                                    <span class="ml-auto font-xssss fw-500 ">2:34</span>
                                </div>
                                
                                <div class="card-body d-flex p-0 mt-3">
                                    <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">7</span>
                                    <span class="font-xssss fw-500  ml-2">Project-Solution</span>
                                    <span class="ml-auto font-xssss fw-500 ">2:34</span>
                                </div>
                                
                                <div class="card-body d-flex p-0 mt-3">
                                    <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">8</span>
                                    <span class="font-xssss fw-500  ml-2"><%= course %> Models</span>
                                    <span class="ml-auto font-xssss fw-500 ">2:34</span>
                                </div>
                                
                                <div class="card-body d-flex p-0 mt-3">
                                    <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">9</span>
                                    <span class="font-xssss fw-500  ml-2"><%= course %> Forms</span>
                                    <span class="ml-auto font-xssss fw-500 ">2:34</span>
                                </div>
                                
                                <div class="card-body d-flex p-0 mt-3">
                                    <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">10</span>
                                    <span class="font-xssss fw-500  ml-2">Operations on Models</span>
                                    <span class="ml-auto font-xssss fw-500 ">2:34</span>
                                </div>
                                
                                <div class="card-body d-flex p-0 mt-3">
                                    <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">11</span>
                                    <span class="font-xssss fw-500  ml-2">Mini-Project</span>
                                    <span class="ml-auto font-xssss fw-500 ">2:34</span>
                                </div>
                                
                                <div class="card-body d-flex p-0 mt-3">
                                    <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">12</span>
                                    <span class="font-xssss fw-500  ml-2">Project-Solution</span>
                                    <span class="ml-auto font-xssss fw-500 ">2:34</span>
                                </div>
                                
                                <div class="card-body d-flex p-0 mt-3">
                                    <span class="bg-current btn-round-xs rounded-lg font-xssss text-white fw-600">13</span>
                                    <span class="font-xssss fw-500  ml-2">Conclusion</span>
                                    <span class="ml-auto font-xssss fw-500 ">2:34</span>
                                </div>
                            </div>
                        </div>

                    </div>
     
                
            </div>
        </div>
        <!-- main content -->
        <div class="app-footer border-0 shadow-lg">
            <a href="#" class="nav-content-bttn nav-center"><i class="feather-home"></i></a>
            <a href="#" class="nav-content-bttn"><i class="feather-package"></i></a>
            <a href="#" class="nav-content-bttn" data-tab="chats"><i class="feather-layout"></i></a>
            <a href="#" class="nav-content-bttn right-menu"><i class="feather-layers"></i></a>
            <a href="#" data-toggle="modal" data-target="#mySetting" class="nav-content-bttn"><img src="video/images/female-profile.png" alt="user" class="w40"></a>
        </div>

    </div>






    <script src="video/js/plugin.js"></script>
    <script src="video/js/scripts.js"></script>


    <script src="video/js/video-player.js"></script>
      	<%
		}

		// close database connection
		rs.close();
		stmt.close();
		con.close();
	%>
      

</body>



</html>