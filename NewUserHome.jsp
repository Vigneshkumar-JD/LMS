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
   <script src="https://cdnjs.cloudflare.com/ajax/libs/rellax/1.12.1/rellax.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
      <link href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Parisienne&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700&display=swap" rel="stylesheet">
  
    <link rel="icon" type="image/png" sizes="32x32" href="./images/favicon-32x32.png" />
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700&display=swap" rel="stylesheet" />
 
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">

    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>

<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
   
    <script type="text/javascript" src="https://demo-ochre.vercel.app/isotope-docs.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.min.js"></script>
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
::-webkit-scrollbar {
  width: 0px;
  height: 0px;
  background-color: transparent;
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


.landing {
  display: flex;
  align-items: center;
  padding: 40px 0;
  margin-left: 5%;
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

.features {
  margin-top: 100px;
  background-color: #eff0f5;
}

.url-shorten-form {
  width: 100%;
  display: flex;
  gap: 20px;
  flex-wrap: wrap;
  background: #3b3054 url(../images/bg-shorten-desktop.svg) no-repeat right top;
  background-size: cover;
  padding: 45px;
  border-radius: 6px;
  margin-bottom: 20px;
  transform: translateY(-50%);
  transition: gap 0.3s;
}

@media (max-width: 850px) {
  .url-shorten-form {
    flex-direction: column;
    background: #3b3054 url(../images/bg-shorten-mobile.svg) no-repeat right top;
    padding: 25px;
    margin-bottom: 0;
  }
}

@media (max-width: 280px) {
  .url-shorten-form {
    padding: 20px;
  }
}

.url-shorten-form > div {
  position: relative;
  flex: 1;
}

.url-shorten-form .url-input {
  width: 100%;
  font-family: "Poppins", sans-serif, "Segoe UI", Tahoma, Geneva, Verdana;
  font-size: 18px;
  padding: 8px 20px;
  background: white;
  border: 2px solid transparent;
  border-radius: 6px;
  outline: none;
  transition: 0.2s;
}

.url-shorten-form .url-input::placeholder {
  font-family: "Poppins", sans-serif, "Segoe UI", Tahoma, Geneva, Verdana;
  font-size: 16px;
  font-weight: 500;
  color: #9e9aa7;
}

.url-shorten-form .alert {
  position: absolute;
  left: 0;
  top: calc(100% + 4px);
  font-style: italic;
  font-size: 16px;
  color: #f46262;
  opacity: 0;
  transition: 0.2s opacity;
}

@media (max-width: 500px) {
  .url-shorten-form .alert {
    font-size: 14px;
  }
}

.url-shorten-form .btn {
  text-align: center;
  border-radius: inherit;
  white-space: nowrap;
  font-size: 16px;
  cursor: pointer;
}

@media (max-width: 850px) {
  .url-shorten-form .btn {
    font-size: 19px;
    padding: 10px 30px;
  }
}

.url-shorten-form.empty {
  gap: 37px;
}

.url-shorten-form.empty .url-input {
  border-color: #f46262;
}

.url-shorten-form.empty .url-input::placeholder {
  color: #f46262;
  opacity: 0.5;
}

.url-shorten-form.empty .alert {
  opacity: 1;
}

.url-shorten-form.success button {
  background: #30c59b;
}

.url-shorten-results {
  position: relative;
  top: -60px;
}

.url-shorten-results .url-shorten-result {
  display: flex;
  justify-content: space-between;
  align-items: center;
  gap: 15px;
  flex-wrap: wrap;
  padding: 15px 25px;
  background: white;
  border-radius: 6px;
  margin-bottom: 15.15152px;
}

.url-shorten-results .url-shorten-result > div p {
  font-size: 17px;
  word-break: break-word;
}

.url-shorten-results .url-shorten-result > div a:hover {
  text-decoration: underline wavy #30c59b 2px;
}

@media (max-width: 850px) {
  .url-shorten-results .url-shorten-result {
    flex-direction: column;
    align-items: flex-start;
    padding: 0;
    gap: 0;
  }
  .url-shorten-results .url-shorten-result > div {
    width: 100%;
    align-items: flex-start;
    padding: 12px 18px;
  }
}

.url-shorten-results .delete-all-urls {
  display: block;
  margin: auto;
  font-size: 15px;
  background-color: #f24a4a;
}

.url-shorten-results .delete-all-urls:hover {
  background-color: #f46262;
}

.url-shorten-result .old-url p {
  color: #35323e;
  font-weight: 500;
}

.url-shorten-result .old-url a {
  color: inherit;
}

@media (max-width: 850px) {
  .url-shorten-result .old-url {
    border-bottom: 1px solid #bfbfbf;
  }
}

.url-shorten-result .new-url {
  display: flex;
  align-items: center;
  gap: 20px;
}

.url-shorten-result .new-url a {
  color: #2acfcf;
}

@media (max-width: 850px) {
  .url-shorten-result .new-url {
    flex-direction: column;
    gap: 12px;
  }
}

.url-shorten-result .options {
  display: flex;
  gap: 10px;
}

@media (max-width: 850px) {
  .url-shorten-result .options {
    width: 100%;
  }
}

.url-shorten-result .options button {
  width: 95px;
  font-size: 15px;
  border-radius: 6px;
  cursor: pointer;
}

.url-shorten-result .options button.copied {
  background: #3b3054;
}

.url-shorten-result .options button.delete-url {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 35px;
  background: #f46262;
  border: none;
  color: white;
  font-size: 18px;
  transition: 0.2s;
}

.url-shorten-result .options button.delete-url:hover {
  color: #f46262;
  background-color: #eff0f5;
  font-size: 20px;
}

@media (max-width: 850px) {
  .url-shorten-result .options button {
    width: 100%;
    font-size: 18px;
    padding: 10px 30px;
  }
}

.more-features-content {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: 25px;
  padding: 80px 0 90px 0;
}

@media (max-width: 666px) {
  .more-features-content {
    gap: 80px;
  }
}

@media (max-width: 280px) {
  .more-features-content {
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  }
}

.more-features-content .feature {
  position: relative;
  background: white;
  border-radius: 6px;
}

.more-features-content .feature:before,
.more-features-content .feature::after {
  position: absolute;
  content: "";
  background: #2acfcf;
}

@media (max-width: 666px) {
  .more-features-content > div:nth-child(2):before,
  .more-features-content > div:nth-child(2)::after {
    width: 6px;
    height: 80px;
    left: 50%;
    transform: translateX(-50%);
  }
  .more-features-content > div:nth-child(2):before {
    top: -80px;
  }
  .more-features-content > div:nth-child(2):after {
    bottom: -80px;
  }
}

@media (min-width: 1130px) {
  .more-features-content {
    align-items: flex-start;
  }
  .more-features-content > div:nth-child(2) {
    margin-top: 30px;
  }
  .more-features-content > div:nth-child(2):before,
  .more-features-content > div:nth-child(2)::after {
    height: 6px;
    width: 25px;
    top: 40%;
  }
  .more-features-content > div:nth-child(2):before {
    left: -25px;
  }
  .more-features-content > div:nth-child(2):after {
    right: -25px;
  }
  .more-features-content > div:nth-child(3) {
    margin-top: 60px;
  }
}

.feature .feature-illustration {
  position: absolute;
  top: -32.5px;
  left: 25px;
  display: grid;
  place-items: center;
  width: 65px;
  height: 65px;
  background: #f6f6f6;
  border-radius: 50%;
 
}

@media (max-width: 666px) {
  .feature .feature-illustration {
    left: 50%;
    transform: translateX(-50%);
    width: 80px;
    height: 80px;
  }
}

.feature .feature-illustration img {
  max-width: 50%;
}

.feature .feature-details {
  padding: 0 25px 30px;
  margin-top: 60px;
}

@media (max-width: 666px) {
  .feature .feature-details {
    text-align: center;
    margin-top: 80px;
  }
}

@media (max-width: 280px) {
  .feature .feature-details {
    padding: 0 20px 25px;
  }
}

@media (max-width: 500px) {
  .feature .feature-details h3 {
    font-size: 20px;
  }
}

@media (max-width: 280px) {
  .feature .feature-details h3 {
    font-size: 18px;
  }
}

.feature .feature-details p {
  margin-top: 10px;
  font-size: 14px;
}

  *{
    scroll-behavior: smooth;
    }
    
    ..header__container {
    background:none;
    }
      .cate-container{
  max-width: 1200px;
  margin: 0 auto;
  text-align: center;
  padding:25px 20px;
}

.cate-container .heading{
  font-size: 40px;
  margin-bottom: 20px;
  color:#334;
}

.cate-container .box-container{
   display: flex;
  overflow: hidden;
  white-space: nowrap;
  gap:20px;
 
}

.cate-container .box-container .box{
    display: inline-block;
    width: 350px ;
    margin-right: 10px;
    text-align: center;
    line-height: 200px;
  height: 450px;
  line-height: 200px; 
  background-color: #fff;
  padding:20px;
  border-radius: 5px;
  box-shadow: 0 5px 10px rgba(0,0,0,.2);
 
}

.cate-container .box-container .box:nth-child(1),
.cate-container .box-container .box:nth-child(2),
.cate-container .box-container .box:nth-child(3){
  display: inline-block;
}

.cate-container .box-container .box .image{
  margin-bottom: 20px;
  overflow: hidden;
  height: 250px;

}

.cate-container .box-container .box .image img{
  height: 100%;
  width: 100%;
  object-fit: cover;
}

.cate-container .box-container .box:hover .image img{
  transform: scale(1.1);
}

.cate-container .box-container .box .content h3{
  font-size: 20px;
  color:#334;
}

.cate-container .box-container .box .content p{
  font-size: 15px;
  color:#777;
  line-height: 2;
  text-align:justify;
  padding:15px 0;
}

.cate-container .box-container .box .content .btn{
  display: inline-block;
  padding:10px 30px;
  border:1px solid #334;
  color:#fff;
  font-size: 16px;
   border-radius:20px;
    background-color: #0B0742;
}

.cate-container .box-container .box .content .btn:hover{
  background-color: #a8c66c;
  border-color:#a8c66c;
  color:#0B0742;
  transform:scale(1.1);
}

.cate-container .box-container .box .content .icons{
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin-top: 20px;
  padding-top: 15px;
  border-top:1px solid #334;
}

.cate-container .box-container .box .content .icons span{
  font-size: 14px;
  color:#0B0742;
}

.cate-container .box-container .box .content .icons span i{
  color:#a8c66c;
  padding-right: 5px;
}

.customer-logos .slides img{
width:75%;
}

  .cate-containerz{
  max-width: 1200px;
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
  display: none;
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
  background-color: #a8c66c;
  border-color:#a8c66c;
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
  color:#a8c66c;
  padding-right: 5px;
}

#load-more{
  margin-top: 20px;
  display: inline-block;
  padding:13px 30px;
  border:1px solid #334;
  color:#0B0742;
  font-size: 16px;
  background-color: linear-gradient(to right,#E0ECDE,#fff);
  cursor: pointer;
  border-radius:45px;
}

#load-more:hover{
  background-color: #a8c66c;
  border-color: #a8c66c;
  color:#fff;
}


/* .btn {
  border: none;
  background: linear-gradient(to bottom, #3498db, #2980b9);
  border-radius: 3px;
  font-family: Arial;
  color: #ffffff;
  padding: 5px 10px 5px 10px;
  text-decoration: none;
  margin: 5px;
}
 */
.active {
  background: linear-gradient(to bottom, #3cb0fd, #3498db);
  text-decoration: none;
}

#parent {
   display: grid;
   grid-template-columns: repeat(3, 1fr);
   grid-gap: 1em;
   width:80%;
   margin: 0 auto;
}



.box .imagez{
  margin-bottom: 20px;
  overflow: hidden;
  height: 250px;

}

.box .imagez img{
  height: 100%;
  width: 100%;
  object-fit: cover;
}

.box:hover .imagez img{
  transform: scale(1.1);
}

.box .contentz h3{
  font-size: 20px;
  color:#334;
}

.box .contentz p{
  font-size: 15px;
  color:#777;
  line-height: 2;
  padding:15px 0;
}

.box .contentz .btn{
  display: inline-block;
  padding:10px 30px;
  border:1px solid #334;
  color:#fff;
  font-size: 16px;
   border-radius:20px;
    background-color: #0B0742;
    margin-left: 30%;
}

.box .contentz .btn:hover{
  background-color: #a8c66c;
  border-color:#a8c66c;
  color:#0B0742;
  transform:scale(1.1);
}

.box .contentz .icons{
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin-top: 20px;
  padding-top: 15px;
  border-top:1px solid #334;
}

.box .contentz .icons span{
  font-size: 14px;
  color:#0B0742;
}

.box .contentz .icons span i{
  color:#a8c66c;
  padding-right: 5px;
}

.spacer {
  clear: both;
  height: 20px;
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
  background-color: #a8c66c;
  border-color:#a8c66c;
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
  color:#a8c66c;
  padding-right: 5px;
}

.active{
background: linear-gradient(to bottom,#fff,#fff);
text-decoration: none;
}
.nav__primary a {
	color: #0b0742;
	padding: 8px;
	-webkit-transition: all .15s ease-in-out;
	transition: all .15s ease-in-out;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	-webkit-box-pack: start;
	-ms-flex-pack: start;
	justify-content: flex-start;
	margin-right: 50px;
	margin-top: -3%;
}

.section-title h1 {
	margin-bottom: 2rem;
	font-weight: 600;
	
}
.timconname h1 {
	margin-bottom: 2rem;
	font-weight: 600;
	
}
.btn-shine {
  position: absolute;
 }
.to .active{
color:#fff;
background:#0b0742;
outline: none;
}
.to .active:hover{
color:#fff;
}


.flex{
    display:flex;
    align-items:center;
    justify-content:center;
}

.flex-content{
    width:100%;
    position:relative;
}


.cursive{
    font-family:var(--cursive);
}

.parallelogram{
    transform: skew(-20deg);
    display:block;
}

.skew-fix{
    display:inline-block;
    transform: skew(20deg);
}

.padding_1x{
    padding:1rem;
}

.padding_2x{
    padding:2rem;
}

.padding_3x{
    padding:3rem;
}

.big{
    font-size:4em;
}

.medium{
    font-size:2.5rem;
}

.small{
    font-size:1.5em;
}

.tag{
    color:var(--primary);
    display:flex;
    align-items:center;
    transition:0.5s;
    position:relative;
    padding-left:3.5rem;
}

.tag:before{
    content:"";
    width:50px;
    height:1px;
    position:absolute;
    left:0;
    top:50%;
    background-color:var(--primary);
    transform:translate(0%, -50%);
    font-family:"FontAwesome";
    transition:0.5s;
}

.tag:hover:after{
    margin:0 0.3rem;
}

.line{
    border-left:1px solid var(--primary_lite);
    /* padding-left:10px; */
}

.title_header{
    width:60%;
    margin:auto;
    text-align:center;
}

.title_header .title{
    line-height:0;
}

.title_header p:after{
    content:"";
    width:100px;
    height:2px;
    background-color:var(--primary);
    position:absolute;
    bottom:-50%;
    left:50%;
    transform:translate(-50%, 10%);
}

.title_header p{
    color:var(--lite) !important;
    position:relative;
}

.btn1{
    padding:1rem 1.5rem;
    border:0;
    border-radius:5px;
    color:#0b0742;
    font-weight:600;
    text-transform:uppercase;
}

.btn2{
 color:#0b0742;
    font-weight:600;
    text-transform:uppercase;
    border:0;
    padding-bottom:50%;

}

.btn1 .fa, .btn2 .fa{
    position:relative;
    left:0.4rem;
}

.btn1{
    background-color:var(--primary);
}

.btn1:hover > .fa{
    left:0.1rem;
}



.btn2:hover{
    background:background:linear-gradient(to right,#83799c, #aba3bc,#d5d0dd,#fff);
    border:1px solid var(--secondary_dark);
}

@media (max-width:1280px){
    .big{
        font-size:1.8em;
    }
    
    .medium{
        font-size:1.4em;
    }
    
    .small{
        font-size:1.2em;
    }
}

@media (max-width:920px){
    .title_header{
        width:100%;
        padding:1rem;
    }
    .big{
        font-size:1.8em;
    }
    
    .medium{
        font-size:1.4em;
    }
    
    .small{
        font-size:1.2em;
    }
    
    .flex{
        flex-wrap:wrap;
    }
    
    .padding_1x, .padding_2x, .padding_3x{
        padding:1rem;
    }
    
    .btn1, .btn2{
        padding:0.5rem 1rem;
    }
}


/*MAIN*/
#main{
    width:100%;
    position:relative;
    background:linear-gradient(to right, rgba(31, 28, 88, 0.9) 10%, rgba(31, 28, 88, 0.7) 50%, rgba(31, 28, 88, 0.1) 100%),url("https://www.vedamo.com/wp-content/uploads/cache/2018/04/what-is-lms-2/3690842481.png");
    background-repeat:no-repeat;
    background-size:cover;
    background-position:center;
    color:#fff;
    padding-bottom:6rem;
    
}

#main:after{
    content:"";
    background-image:url("https://i.ibb.co/8zB1N3z/wave.png");
    background-size:cover;
    width:100%;
    height:100px;
    position:absolute;
    bottom:-20px;
    z-index: 1;
}

#main .tag{
    position:relative;
    top:20px;
    color:#fff;
}

#main .tag:before{
    background-color:#fff;
}

#main .title{
  
    color:#fff;
   
}

#main em{
    color:#fff;
   
    font-family: 
}

#main p{
    position:relative;
    top:-30px;
    font-weight:400;
    color:#f6f6f6;
}

@media (max-width:920px){
    #main .tag{
        top:20px;
    }
    
    #main p{
        top:-10px;
    }
}



/*SECTION1*/
.section1{
    display:flex;
    align-items:top !important;
}

.section1 em{
    color:var(--dark);
    top:20px;
}

.section1 .tag:before{
    background-color:var(--dark);
}

.section1 p{
    color:var(--lite);
}

.section1 form{
    background-color:#fff;
    position:relative;
    top:-20vh;
    box-shadow:0 20px 60px -10px rgba(0,0,0,.1);
    border-radius:10px;
    z-index: 999;
    width: 70%;
    margin-left: 20%;	
}

form .small{
    text-align:center;
}

form input, form select{
    background-color: #f7f7f7;
    color: #001837;
    width: 100%;
    font-weight: normal;
    border: 1px solid #eeeeee;
    border-radius: 5px;
    height: 48px;
    line-height: 48px;
    margin-top: 5px;
    margin-bottom: 5px;
    font-size: 14px;
    padding: 10px;
    transition: all ease .3s;
    -webkit-transition: all ease .3s;
}

@media (max-width:920px){
    .section1{
        flex-wrap:wrap;
    }
    
    .section1 em{
        top:10px;
    }
    
    form input, form select{
        height:38px;
    }
    
    .section1 form{
        top:0;
    }
}


/*SECTION2*/
.section2{
    background:linear-gradient(to right, rgba(31, 28, 88, 0.7) 10%, rgba(31, 28, 88, 0.7) 50%, rgba(31, 28, 88, 0.7) 100%),url("https://www.iftas.in/images/inner-banner/LMS.png");
    background-repeat:no-repeat;
    background-size:cover;
    color:var(--white);
    position:relative;
    top:-10vh;
}

.section2 p{
    color:#fff;
}

.section2 .cards{
    display:flex;
    align-items:top !important;
    justify-content:center;
    margin-left: 8%;
}

.section2 .flex-content figure{
    position:relative;
}

.section2 .flex-content .title{
    color:#fff;
}

.section2 .flex-content:not(:last-child) figure::after{
    content:"";
    background-image:url("https://i.postimg.cc/7LBXbLm6/arrow.png");
    background-size:100% 100%;
    background-position:top center;
    position:absolute;
    top:0;
    width:90%;
    height:50px;
}

.section2 .flex-content:nth-child(1) figure::after{
    top:-10%;
}

.section2 .flex-content:nth-child(2) figure::after{
    left:25%;
    top:10%;
}

.section2 .flex-content:nth-child(odd) figure::after{
    -webkit-transform:rotateX(180deg);
    transform:rotateX(180deg);
}

.section2 .flex-content figure img{
    filter:brightness(0) invert(1);
}

@media (max-width:920px){
    .section2{
        top:0;
    }
    
    .section2 .cards{
        flex-wrap:wrap;
    }
    
    .section2, .section2 .flex-content{
        padding:0 !important;
    }
    
    .section2 .flex-content:not(:last-child) figure::after{
        display:none;
    }
}




/*SECTION3*/
.section3{
    background-color:#edeef0;
    background-image:url("#");
    background-size:cover;
}

.section3 section{
    transition:0.5s;
}

.section3 figure{
    position:relative;
    overflow:hidden;
    height:60vh;
}

.section3 figure img{
    width:100%;
    height:100%;
    object-fit:cover;
    object-position:center;
}

.section3 section:nth-child(odd) figure{
    margin-top:-2rem;
}

.section3 section:nth-child(even) figure{
    margin-top:8rem;
}

.section3 article{
    position:absolute;
    top:100%;
    background-color:rgba(1,1,1,0.4);
    width:100%;
    height:100%;
    z-index:1;
    transition:0.5s;
}

.section3 article span{
    display:block;
    width:100%;
    height:100%;
    position:absolute;
    left:-100%;
    transition:0.5s;
    transition-delay:0.5s;
}

.section3 figure:hover article{
    top:0%;
}

.section3 figure:hover article span{
    left:0;
}

.section3 h2, .section3 p{
    color:var(--white);
}

@media (max-width:920px){
    .section3 figure{
        height:30vh;
    }
    
    .section3 section{
        margin:0px 0;
    }
    
    .section3 section:nth-child(odd) figure{
        margin-top:0rem;
    }

    .section3 section:nth-child(even) figure{
        margin-top:0rem;
    }
}


.timeline {
	position: relative;
	min-height: 150px;
}

.timeline .line {
	position: absolute;
	z-index: 2;
	left: calc(50% - 1px);
	width: 2px;
	top: -50px;
	background-color: #0b0742;
	display: none;
}

.timeline .line:before, .line::after {
	position: absolute;
	display: block;
	content: '';
	height: 1rem;
	width: 1rem;
	border-radius: 50%;
	background-color: #aba3bc;
	left: 50%;
	transform: translateX(-50%);
}

.timeline .line:after {
	bottom: 0;
}
.climax{
margin:0 auto;
margin-left: 5%;
margin-top: 25%;

}
.climax  .box{
  
  grid-template-columns: repeat(auto-fit, minmax(320px, 1fr)); 
 margin: 10px;
   display: grid;
   width: calc(30% - 20px);
 margin-top:5%;
  width: 30%; 
  float: left; /* Floats the boxes to the left */
  padding: 20px; /* Adds padding to the boxes */
}

.climax .box .imagez {
  text-align: center; /* Centers the image inside the box */
}

.climax .box .imagez img {
  width: 100%; /* Makes the image full width */
}

.climax .box .contentz {
  text-align: center; /* Centers the content inside the box */
  padding: 10px 0; /* Adds padding to the top and bottom of the content */
}

.climax .box .icons {
  display: flex; /* Displays the icons in a row */
  justify-content: center; /* Centers the icons inside the box */
}

.climax .box .icons span {
  display: inline-block; /* Displays each icon as a separate block */
  padding: 0 10px; /* Adds padding to the left and right of each icon */
}

.climax .box .btn {
  display: block; /* Displays the "See More" button as a block */
  margin: 10px auto; /* Adds margin to the top and bottom of the button and centers it inside the box */
}
.contaxiner{
height: 10vh;
}

/* ---------- */
.juggling {
  color: hsl(233, 13%, 49%);
  margin: 3.3rem 0;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}
.toggle {
  margin-top: 2rem;
  color: hsl(234, 14%, 74%);
  display: flex;
  align-items: center;
}
.toggle-btn {
  margin: 0 1rem;
}
.checkbox {
  display: none;
}

.sub {
  background: linear-gradient(
    135deg,
    #aba3bc 0%,
    #d5d0dd 100%
  );
  display: flex;
  justify-content: flex-start;
  align-items: center;
  /* height: 25px;
  width: 50px; */
  height: 1.6rem;
  width: 3.3rem;
  border-radius: 1.6rem;
  padding: 0.3rem;
}
.circle {
  background-color: #fff;
  height: 1.4rem;
  width: 1.4rem;
  border-radius: 50%;
}
.checkbox:checked + .sub {
  justify-content: flex-end;
}

.cardses {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-wrap: wrap;
}

.carding {
  background: #fff;
  color: hsl(233, 13%, 49%);
  border-radius: 0.8rem;
}

.cardses .carding.active {
  background: linear-gradient(
    135deg,
    #aba3bc 0%,
    #d5d0dd 100%
  );
  color: #fff;
  display: flex;
  align-items: center;
  transform: scale(1.1);
  z-index: 1;
}
.cardses .carding.active ul {
  margin: 2.6rem;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: space-around;
}
.cardses  ul li {
  list-style-type: none;
  display: flex;
  justify-content: center;
  width: 100%;
  padding: 1rem 0;
}
.cardses ul li.price {
  font-size: 3rem;
  color: hsl(232, 13%, 33%);
  padding-bottom: 2rem;
}
.shadow {
  box-shadow: -5px 5px 15px 1px rgba(0, 0, 0, 0.1);
}

.carding .active .price {
  color: #fff;
}

/* .btn {
  margin-top: 1rem;
  height: 2.6rem;
  width: 13.3rem;
  display: flex;
  justify-content: center;
  align-items: center;
  border-radius: 4px;
  background: linear-gradient(
    135deg,
    rgba(163, 168, 240, 1) 0%,
    rgba(105, 111, 221, 1) 100%
  );
  color: #fff;
  outline: none;
  border: 0;
  font-weight: bold;
} */
.active-btn {
  background: #fff;
  color: hsl(237, 63%, 64%);
}
.bottom-bar {
  border-bottom: 2px solid hsla(240, 8%, 85%, 0.582);
}
.card.active .bottom-bar {
  border-bottom: 2px solid hsla(240, 8%, 85%, 0.253);
}
.pack {
  font-size: 1.1rem;
}

@media (max-width: 280px) {
  ul {
    margin: 1rem;
  }
  h1 {
    font-size: 1.2rem;
  }
  .toggle {
    display: flex;
    flex-direction: column;
    justify-content: space-around;
    align-items: center;
    height: 80px;
  }
  .cards {
    margin: 0;
    display: flex;
    flex-direction: column;
  }

  .card {
    transform: scale(0.8);
    margin-bottom: 1rem;
  }
  .cards .card.active {
    transform: scale(0.8);
  }
}

@media (min-width: 280px) and (max-width: 320px) {
  ul {
    margin: 20px;
  }
  .cards {
    display: flex;
    flex-direction: column;
  }
  .card {
    margin-bottom: 1rem;
  }
  .cards .card.active {
    transform: scale(1);
  }
}

@media (min-width: 320px) and (max-width: 414px) {
  .cards {
    display: flex;
    flex-direction: column;
  }
  .card {
    margin-bottom: 1rem;
  }
  .cards .card.active {
    transform: scale(1);
  }
}
@media (min-width: 414px) and (max-width: 768px) {
  .card {
    margin-bottom: 1rem;
    margin-right: 1rem;
  }
  .cards .card.active {
    transform: scale(1);
  }
}
@media (min-width: 768px) and (max-width: 1046px) {
  .cards {
    display: flex;
  }
  .card {
    margin-bottom: 1rem;
    margin-right: 1rem;
  }
  .cards .card.active {
    transform: scale(1);
  }
}

footer{
width: 100%;
position: relative;
min-height:50vh;
bottom: 0;
background:  linear-gradient(to right,#83799c, #aba3bc,#d5d0dd,#fff);
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
padding: 0;	
}

#fo ul li a{
text-decoration: none;
color: 	#000000;
text-align: left;

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
.bead {
	position: absolute;
	display: block;
	height: 1rem;
	width: 1rem;
	border-radius: 50%;
	background-color: #aba3bc;
	left: 50%;
	top: 20%;
	transform: translateX(-50%);
}
.tym-content h2 {
	font-weight: 600;
	letter-spacing: 1px;
	color: #83799c;
	font-family: 'Dancing Script', cursive;
}

</style>
<body>
<main class="main">
  <!-- Header -->

 <jsp:include page="mynavbar.jsp" />
  <!-- Landing -->
  <section class="landing" style="margin-top: -15%;">
    <div class="landing-text" >
      <h1 style="color: #0b0742;">We Provide you<br> BEST LEARNING EXPERIENCE!</h1>

      <p>
        Build your Career and get detailed insights on how your
        Future gonna be..
      </p>
      <a href="#url-shorten-form" class="btn btn-lg">Get Started</a>
    </div>
    <div class="landing-image">
      <img src="https://images.prismic.io/thinkific/04dfc2d9-da9a-4e38-b11c-037f5338f8b5_1-grow-slider-mobile.webp?auto=compress,format" alt="Working Illustration" style="width:70%;margin-left:-25%" />
    </div>
  </section>
  <!-- Features -->
  <section class="features" id="features">
    <div class="container">
      <!-- Short URL Feature -->
      <div class="url-shorten-feature">
        <form class="url-shorten-form" id="url-shorten-form">
          <div>
            <input type="text" class="url-input" placeholder="Search for your courses..." autocomplete="off" />
            <span class="alert"></span>
          </div>
          <button type="submit" class="btn btn-lg btn-plus-icon">search</button>
        </form>
        <div class="url-shorten-results"></div>
      </div>
      <!-- Advanced Features -->
      <div class="more-features">
        <div class="section-header">
          <h2>Why Most of us Like us</h2>
          <p>
            VEDHA E-Learning provides you a better learning platform than any other sources
          </p>
        </div>
        <div class="more-features-content">
          <div class="feature">
            <div class="feature-illustration">
              <img src="https://img.icons8.com/bubbles/256/teacher-messaging.png" alt="Feature Illustration Icon" />
            </div>
            <div class="feature-details">
              <h3>Instructor</h3>
              <p>
                We offer plenty of resources on how to create your first course. And, our instructor dashboard and curriculum pages help keep you organized.
              </p>
            </div>
          </div>
          <div class="feature">
            <div class="feature-illustration">
              <img src="https://img.icons8.com/external-flaticons-flat-flat-icons/256/external-projects-resume-flaticons-flat-flat-icons.png" alt="Feature Illustration Icon" />
            </div>
            <div class="feature-details">
              <h3>Projects</h3>
              <p>
                Learn project management strategies from a top-rated VEDHA's instructor. Whether you're interested in learning software like Agile and Scrum, or preparing for.
              </p>
            </div>
          </div>
          <div class="feature">
            <div class="feature-illustration">
              <img src="https://img.icons8.com/office/256/knowledge-sharing.png" alt="Feature Illustration Icon" />
            </div>
            <div class="feature-details">
              <h3>Course Materials</h3>
              <p>
                Unlocking knowledge, Empowering Minds. Free lecture notes, exams, and videos from Vedha E-Learning. No registration required. Learn More about the Software Courses.
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
 
</main>
  <script>
  let profileDropdownList = document.querySelector(".profile-dropdown-list");
  let btn = document.querySelector(".profile-dropdown-btn");

  let classList = profileDropdownList.classList;

  const toggle = () => classList.toggle("active");

  window.addEventListener("click", function (e) {
    if (!btn.contains(e.target)) classList.remove("active");
  });

  </script>
  <section id="about-container">
            <div class="about-img">
            <img alt="" src="https://www.cloudamize.com/wp-content/uploads/2020/11/cloudamize-home-top.png">
               </div>
    
            <div class="about-text">
                <h2>Welcome to VEDHA E-learning, Enhance your skills with best Online Courses</h2>
                <p style="margin-top: -50px;">You can start and finish one of these popular courses in under a day - Feel Free!! Check out the list below..! Take the course for free</p>
                <div class="about-fe" >
                    <img src="images/fe1.png" alt="">
                    <div calss="fe-text">
                        <h5>400+ Courses</h5>
                        <p>You can start and finish one of these popular courses in under one site</p>
    
                    </div>
                </div>
    
                <div class="about-fe">
                    <img src="images/fe2.png" alt="">
                    <div calss="fe-text">
                        <h5>Life time access</h5>
                        <p>You can start and finish one of these popular courses in under one site</p>
                        
                    </div>
                </div>
            </div>
        </section>   
<!-- --------------------------- -->



	<div class="header-demo">
    	<center><h1>Career Effective Courses</h1>
        <h3>Explore Us</h3></center>
    </div>
<!--title-->


    <div>
   <!--  <div class="to" style="margin-left: 35%;outline: none;">
	<button class="active btn" id="all">Show All</button>
	<button class="btn" id="pl">Programming Languages</button>
	<button class="btn" id="f">Frameworks</button>
	<button class="btn" id="t">Testing</button>
	</div> -->

	<div class="spacer"></div>

	<div id="parent">
	        <%@ page import="java.util.Base64" %>
<%
		// connect to database
		Class.forName("com.mysql.cj.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?","root","saranya@2001");

		// execute query to get new courses
		String query = "SELECT * FROM newlyaddedcourses ORDER BY upload_date DESC LIMIT 10";
		PreparedStatement stmt = con.prepareStatement(query);
		ResultSet rs = stmt.executeQuery();

		// display new courses
		while (rs.next()) {
			String courseName = rs.getString("course_name");
			String courseId = rs.getString("course_id");
			String certificate = rs.getString("certificate");
			String description = rs.getString("description");
			String instructorName = rs.getString("instructor_name");
			String uploadDate = rs.getString("upload_date");
			/* String category = rs.getString("category"); */
			Blob imageBlob = rs.getBlob("course_image");
			byte[] imageBytes = imageBlob.getBytes(1, (int) imageBlob.length());
			String imageBase64 = Base64.getEncoder().encodeToString(imageBytes);
	%>
	  <div class="box pl">
     
            <div class="imagez">
               <img src="data:image/png;base64,<%= imageBase64 %>" alt="<%= courseName %>">         </div>
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
	 
     	<%
		}

		// close database connection
		rs.close();
		stmt.close();
		con.close();
	%>
	</div>

</div>


        
  
<script>
    // Get all filter buttons
    const filterButtons = document.querySelectorAll('#parent .to button');

    // Add click event listener to each filter button
    filterButtons.forEach(button => {
        button.addEventListener('click', () => {
            // Remove active class from all filter buttons
            filterButtons.forEach(button => {
                button.classList.remove('active');
            });
            // Add active class to clicked filter button
            button.classList.add('active');

            // Get category of clicked filter button
            const category = button.id;

            // Show or hide course boxes based on category
            const courseBoxes = document.querySelectorAll('.box');
            courseBoxes.forEach(courseBox => {
                if (category === 'all' || courseBox.classList.contains(category)) {
                    courseBox.style.display = 'block';
                } else {
                    courseBox.style.display = 'none';
                }
            });
        });
    });
</script>



<!-- ------------------------- -->
 <div class="contaxiner" style="margin-top: 10%;">

   <center> <h2 style="margin-top:5rem;font-weight:900;">COMING SOON</h2> </center>
     <section class="customer-logos slider" style="margin-top:5rem;width: 100%;">
        <div class="slides" style="width: 40%;" >
          <img src="images/si-1.png">
        </div>
        <div class="slides">
          <img src="images/si-2.png">
        </div>
        <div class="slides">
          <img src="images/si-3.png">
        </div>
        <div class="slides">
         <img src="images/si-7.png">
        </div>
        <div class="slides">
          <img src="images/si-5.png">
        </div>
        <div class="slides">
          <img src="images/si-6.jpg">
        </div>
        <div class="slides">
         <img src="images/si-8.png">
        </div>
        <div class="slides">
          <img src="images/si-2.png">
        </div>
     </section>
  </div>

<!-- ------------------------------ -->
<section id="slipper" style="margin-top: 20%;" >
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

<!-- ------------------------------ -->

<section class="all" style="margin-top: 10%;" >
    <section id="main" class="flex" >
        <section class="flex-content padding_2x" >
            <article>
                
                <h1 class="title big">Best <em>Software Courses at</em> Free of Cost</h1>
                <p style="margin-top: 7%;">Our specialist certificate programs are designed to give you job-role training and formal workplace skills. So, in a single morning or one afternoon, you can super-charge your skills - all for free.</p>
               <!--  <a href="#" class="btn1">Enroll Now <i class="fa fa-arrow-right"></i></a> -->
            </article>
        </section>
        <section class="flex-content padding_2x">
        </section>
    </section>
    
    <!--SECTION1-->
    <div class="section1">
        <section class="flex-content padding_2x">
            <em class="tag" style="margin-bottom:50px;">ABOUT US</em>
            <h1 class="title medium">We help you to mould your career AT THE BEST</h1>
            <p>Our specialist certificate programs are designed to give you job-role training and formal workplace skills. In fewer than three hours of active learning, you can complete any of our curated certificate courses to cover a gap in your existing knowledge or gain clarity on a new subject area. So, in a single morning or one afternoon, you can super-charge your skills - all for free.</p>
            <p>Select whichever category you like, find a learning level - beginner, intermediate or advanced - that suits your needs and start studying. Three hours later, you could have a new certificate course on your CV!</p>
            <em style="color:var(--secondary)">It is a Limited offer</em>
        </section>
        <section class="flex-content padding_2x" >
            <form id="enrollment-form" class="padding_2x" action="Freeenrollment" method="POST">
                <h2 class="small">Enroll Soon</h2>
                <fieldset>
                    <label for="fname" style="margin-top: 10px;">Your name</label>
                    <input type="text" name="usname" id="fname" maxlength="60" required="required" />
                </fieldset>
                <fieldset>
                    <label for="cno" id="cno">Contact number</label>
                    <input type="tel" name="ustel" maxlength="10" required />
                </fieldset>
                <fieldset>
                    <label for="zip" id="zip">E-mail</label>
                    <input type="email" id="usmail" name="usmail" required>
                </fieldset>
             <fieldset>
                    <label >Choose Your Course</label>
                    <input type="text" name="uscourse" maxlength="30" required />
                </fieldset>
                <fieldset>
                    <input id="form_btn" type="submit" class="btn2" style="padding:0 0 0 0; width:50%;padding-bottom:5%;margin-top:40px;background:linear-gradient(to right,#83799c, #aba3bc,#d5d0dd,#fff);margin-left:30%;" value="SUBMIT DETAILS">
                </fieldset>
            </form>
        </section>
    </div>
    
    <!--SECTION2-->
    <div class="sections section2 padding_2x">
        <article class="cards padding_2x">
            <section class="flex-content padding_2x">
                <figure>
                    <i class="fa-solid fa-hand-pointer" style="font-size:3.5rem;color:#fff;"></i>
                </figure>
                <h2 class="title small">Pick a <em>Course</em></h2>
                <p>You can start by choosing a field that you are interested in, and from there, think of a course that will match your skills, values and personality type. </p>
                <p>For example, if you are interested in the Software Testing, courses on offer include Manual, Automation, Projects, and much more.</p>
            </section>
            <section class="flex-content padding_2x">
                <figure>
                  <i class="fa fa-calendar-times-o" aria-hidden="true" style="font-size:3.5rem;color:#fff;"></i>
                    <h2 class="title small"><em>Schedule</em> with us</h2>
                    <p>You can start by choosing a field that you are interested in, and from there, think of a course that will match your skills, values and personality type. </p>
                <p>For example, if you are interested in the Software Testing, courses on offer include Manual, Automation, Projects, and much more.</p>
          </figure>
            </section>
            <section class="flex-content padding_2x">
                <figure>
                    <i class="fa fa-graduation-cap" aria-hidden="true" style="font-size:3.5rem;color:#fff;"></i>
                    <h2 class="title small">Get things <em>done</em></h2>
                    <p>You can start by choosing a field that you are interested in, and from there, think of a course that will match your skills, values and personality type. </p>
                <p>For example, if you are interested in the Software Testing, courses on offer include Manual, Automation, Projects, and much more.</p>
         </figure>
            </section>
        </article>
    </div>
</section>
<!-- --------------------------- -->
<div class="cate-containerz">

   <h1 class="headings">10 Days Certification Course</h1>

   <div class="box-containerz">
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
      <div class="boxes">
         <div class="imagez">
            <img src="data:image/png;base64,<%= imageBase64 %>" alt="<%= courseName %>">         </div>
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
<%
		}

		// close database connection
		rs.close();
		stmt.close();
		con.close();
	%>
     
  

   </div>

   <div id="load-more"> load more </div>
   <div id="load-less"> load less </div>

</div>


<script>
let loadMoreBtn = document.querySelector('#load-more');
let loadLessBtn = document.querySelector('#load-less');
let boxes = [...document.querySelectorAll('.cate-containerz .box-containerz .boxes')];
let currentItem = 3;

loadMoreBtn.onclick = () =>{
   for (var i = currentItem; i < currentItem + 3; i++){
      if (boxes[i]) {
         boxes[i].style.display = 'inline-block';
      }
   }
   currentItem += 3;

   if(currentItem >= boxes.length){
      loadMoreBtn.style.display = 'none';
      loadLessBtn.style.display = 'inline-block';
   }
}

loadLessBtn.onclick = () =>{
   for (var i = boxes.length - 1; i >= currentItem - 3; i--){
      if (boxes[i]) {
         boxes[i].style.display = 'none';
      }
   }
   currentItem -= 3;

   if(currentItem <= 3){
      loadMoreBtn.style.display = 'inline-block';
      loadLessBtn.style.display = 'none';
   }
}

// Hide all courses except the first three
for (var i = 3; i < boxes.length; i++) {
   boxes[i].style.display = 'none';
}

// Hide the "Load Less" button initially
loadLessBtn.style.display = 'none';
</script>


<!-- ------------------------------ -->

<section id="tym" style="margin-top: 10%;">
 <div class="time-container">
 <div class="timconname">
 <h1><center>How Can you choose your course</center></h1>
 </div>
        <div class="top-section">
            <h1 style="color: #83799c;">Search for your Course</h1>
            <p>You can search much of the content of your VEDHA courses, including the course title, description, text, and video transcripts. You can search for a term in an individual course, or you can search for that term in all of the courses that you are enrolled in.
            </p>
        </div>
        <div class="timeline">
            <div class="line"></div>
            <div class="tym-section">
                <div class="bead"></div>
                <div class="tym-content">
                    <h2>Take a Sample Lesson</h2>
                    <p>
                        The Sampling chapter of this course is designed to help you plan and teach the types of samples and methods of sampling in your classroom.The Sampling chapter of this course is designed to help you plan and teach the types of samples and methods of sampling in your classroom
                    </p>
                </div>
            </div>

            <div class="tym-section">
                <div class="bead"></div>
                <div class="tym-content">
                    <h2>Preview the syllabus</h2>
                    <p>
                        A syllabus is a document that outlines all the essential information about a Online course.  A syllabus is a document that outlines all the essential information about a Online course
                    </p>
                </div>
            </div>

            <div class="tym-section">
                <div class="bead"></div>
                <div class="tym-content">
                    <h2>Purchasing the Course</h2>
                    <p>
                        Currently, Udemy supports several different payment methods, depending on your account country and location.  Currently, Udemy supports several different payment methods, depending on your account country and location
                    </p>
                </div>
            </div>

            <div class="tym-section">
                <div class="bead"></div>
                <div class="tym-content">
                    <h2>Use Shopping Cart</h2>
                    <p>
                        The shopping cart is a great way to purchase multiple courses at once so that you can begin your learning experience faster.The shopping cart is a great way to purchase multiple courses at once so that you can begin your learning experience faster
                    </p>
                </div>
            </div>

            <div class="tym-section">
                <div class="bead"></div>
                <div class="tym-content">
                    <h2>Credit Card Security</h2>
                    <p>
                        VEDHA never stores your full credit or debit card information in our systems.The shopping cart is a great way to purchase multiple courses at once so that you can begin your learning experience faster   
                    </p>
                </div>
            </div>
        </div>
    </div> 
    

</section>
<!-- -------------------------------- -->
<section id="pricings"class="pricing"   style="margin-bottom: 40%;">
<div class="juggling" >
    <h1>Our Pricing</h1>
    <div class="toggle">
      <label>Annually </label>
      <div class="toggle-btn">
        <input type="checkbox" class="checkbox" id="checkbox" />
        <label class="sub" id="sub" for="checkbox">
          <div class="circle"></div>
        </label>
      </div>
      <label> Monthly</label>
    </div>
  </div>
  <div class="cardses" >
    <div class="carding shadow" style="width: 25%;">
      <ul>
        <li class="pack">Basic</li>
        <li id="basic" class="price bottom-bar">&#8377;699.99</li>
        <li class="bottom-bar">500 GB Storage</li>
        <li class="bottom-bar">2 Users Allowed</li>
        <li class="bottom-bar">Send up to 3 GB</li>
        <li><button class="btn">Learn More</button></li>
      </ul>
    </div>
    <div class="carding active" style="width: 25%;">
      <ul style="padding-left: 50px;">
        <li class="pack">Professional</li>
        <li id="professional" class="price bottom-bar" style="color: #fff">&#8377;1299.99</li>
        <li class="bottom-bar">1 TB Storage</li>
        <li class="bottom-bar">5 Users Allowed</li>
        <li class="bottom-bar">Send up to 10 GB</li>
        <li><button class="btn active-btn">Learn More</button></li>
      </ul>
    </div>
    <div class="carding shadow" style="width: 25%;">
      <ul>
        <li class="pack">Master</li>
        <li id="master" class="price bottom-bar">&#8377;1999.99</li>
        <li class="bottom-bar">2 TB Storage</li>
        <li class="bottom-bar">10 Users Allowed</li>
        <li class="bottom-bar">Send up to 20 GB</li>
        <li><button class="btn">Learn More</button></li>
      </ul>
    </div>
  </div>
</section>
<script>
    const checkbox = document.getElementById("checkbox");
const professional = document.getElementById("professional");
const master = document.getElementById("master");
const basic = document.getElementById("basic");

checkbox.addEventListener("click", () => {
  basic.textContent = basic.textContent === "\u20B9699.99" ? "\u20B9299.99" : "\u20B9699.99";
  professional.textContent =
    professional.textContent === "\u20B91299.99" ? "\u20B9799.99 " : "\u20B91299.99";
  master.textContent = master.textContent === "\u20B91999.99" ? "\u20B91499.99" : "\u20B91999.99";
});

  </script>
<!-- ---------------------------------- -->
<section id="trust">
<h1>Trusted By</h1>
<p>Replenish man have thing gathering lights yielding shall you</p>
<div class="trust-img">
    <img src="images/trust (1).png" alt="">
    <img src="images/trust (2).png" alt="">
    <img src="images/trust (3).png" alt="">
    <img src="images/trust (4).png" alt="">
    <img src="images/trust (5).png" alt="">
    <img src="images/trust (6).png" alt="">
</div>
</section>

<!-- ---------------------------------- -->
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
<p class="copyright">VEDHA E-Learning ⓒ 2022 - All Rights Reserved </p>
</footer>
</body>
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script src="js/isotope.min.js"></script>
<script src="js/scripts.js"></script> 
<script src="https://cdn.jsdelivr.net/jquery.slick/1.6.0/slick.min.js"></script>

 <script src="js/time.js"></script>
<script type="text/javascript" src="js/main.js"></script> 
</html>