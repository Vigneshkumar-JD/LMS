<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="//assets.adobedtm.com/c876840ac68fc41c08a580a3fb1869c51ca83380/satelliteLib-4b49c75c99594437c7f85707bb6d0772a8600351.js"></script>
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://kit.fontawesome.com/1ff71a7bde.js" crossorigin="anonymous"></script>
    <link
      rel="stylesheet"
      type="text/css"
      href="https://use.typekit.net/lbg1fkf.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="css/Newcertification.css"
    />

<link rel="icon" type="image/png" sizes="32x32" href="./images/favicon-32x32.png" />
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700&display=swap" rel="stylesheet" />
    <meta property="og:title" content="Buffini & Company Master Class™" />
    <meta property="og:type" content="website" />
    <meta
      property="og:url"
      content="https://www.buffiniandcompany.com/events/master-class/"
    />
    <meta
      property="og:image"
      content="https://www.buffiniandcompany.com/assets/images/events/master-class/MasterClass_Social_Generic_1200x628_01.jpg"
    />
    <meta
      property="og:description"
      content="Join industry legend Brian Buffini at Buffini & Company Master Class and find out how you can master your business and your life."
    />
    <meta name="robots" content="noindex, nofollow" />
    <link href="https://unpkg.com/aos@2.3.0/dist/aos.css" rel="stylesheet" />

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
  gap: 20px;
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
  padding: 25px 0;
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
  padding: 20px 0;
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
    right: -280px;
  }
}

@media (max-width: 767px) {
  .landing .landing-image {
    right: -200px;
  }
}

@media (max-width: 500px) {
  .landing .landing-image {
    right: -180px;
  }
}

@media (max-width: 375px) {
  .landing .landing-image {
    right: -120px;
  }
}

@media (max-width: 280px) {
  .landing .landing-image {
    right: -100px;
  }
}

@media (min-width: 1100px) {
  .landing .landing-image {
    right: -130px;
  }
}

.landing .landing-image img {
  width: 50%;
}

/* ----------------------------- */




.wrapper-prices h5 {

  margin-top: -1rem;

  margin-bottom: 0;
}
.wrapper-prices p {

  opacity: 0.5;
  margin: 0;
  padding: 0;
}
.wrapper-prices .right h1 {
  
  margin-bottom: 1rem;
}
.wrapper-prices > div:first-child {
  padding-right: 2rem;
  border-right: 1px solid #ffffff5c;
  margin-right: 2rem;
}
.wrapper-prices > div {
  float: left;
  width: auto;
}

.footer-banner-wrapper {
  position: fixed;
  bottom: 0;
  height: 150px;
  width: 100%;
  background: #fff;
  display: none;
}
.display-table {
  display: table;
}
.max-width-320 {
  max-width: 320px;
}

.border-wht-left-1 {
  border-left: 1px solid #ffffff54;
  padding-left: 3rem !important;
}
.text-light.alt1 {
  color: #fff;
}
#options h2.alt1 {
  margin-right: 1rem;
  font-weight: 600;
}

#options h2.alt1,
#options h2.alt1 + h4 {
  display: inline-block;
}

#options {
  background-image: url(https://dl.dropboxusercontent.com/s/632a0lyjbnpjo2z/Pathway_To_Mastery_Filming-1.png?dl=0);
  background-size: cover;
}

.offset-negative-6 {
  margin-bottom: -6%;
}
.opacity-25 {
  opacity: 0.25;
}
.bg-color-fff {
  background-color: #fff;
}

.bg-color-f5f5f5 {
  background-color: #f5f5f5;
}
.bg-color-095ba7 {
  background-color: #095ba7;
}

.list-borders.alt1 li p {
  margin: -2px 0 0 0;
}

.bg-grd-1 {
  background: rgb(20, 125, 222);
  background: -moz-linear-gradient(
    top,
    rgba(20, 125, 222, 1) 0%,
    rgba(10, 92, 168, 1) 99%
  );
  background: -webkit-linear-gradient(
    top,
    rgba(20, 125, 222, 1) 0%,
    rgba(10, 92, 168, 1) 99%
  );
  background: linear-gradient(
    to bottom,
    rgba(20, 125, 222, 1) 0%,
    rgba(10, 92, 168, 1) 99%
  );
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#147dde', endColorstr='#0a5ca8', GradientType=0);
  /* color: #fff; */
}
.bg-grd-2 {
  /* Permalink - use to edit and share this gradient: https://colorzilla.com/gradient-editor/#147dde+0,095ba7+99 */
  background: rgb(20, 125, 222); /* Old browsers */
  background: -moz-linear-gradient(
    top,
    rgba(20, 125, 222, 1) 0%,
    rgba(9, 91, 167, 1) 99%
  ); /* FF3.6-15 */
  background: -webkit-linear-gradient(
    top,
    rgba(20, 125, 222, 1) 0%,
    rgba(9, 91, 167, 1) 99%
  ); /* Chrome10-25,Safari5.1-6 */
  background: linear-gradient(
    to bottom,
    rgba(20, 125, 222, 1) 0%,
    rgba(9, 91, 167, 1) 99%
  ); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#147dde', endColorstr='#095ba7',GradientType=0 ); /* IE6-9 */
}

.block-header {
  font-weight: 400;
  margin-bottom: 2rem;
  line-height: normal;
  color: #000c;
  font-size: 42px;
}

.block-bodytext {
  color: #888787;
  font-weight: lighter;
  text-rendering: geometricprecision;
  font-size: 18px;
  line-height: 1.5;
}

.text-bold.alt1 span {
  font-weight: normal;
}

.text-bold.alt1 * {
  font-weight: 600;
}

#included h4 {
  font-weight: 600;
  line-height: normal;
}

.wrapper-content.alt2 {
  position: relative;
}

.wrapper.alt1 {
  max-width: 85%;
}

.wrapper-content.alt1 {
  position: absolute;
  top: 210px;
  max-width: 290px;
  left: 0%;
  width: 100%;
}

.mobile-view.alt1 {
  margin-top: 40%;
}

.opacity-65 {
  opacity: 0.65;
}

#preview .card h5 {
  font-size: 14px;
  font-weight: 600;
  text-transform: uppercase;
}

#preview .card h4 {
  margin-bottom: 1rem;
}

#pricing .card span {
  text-decoration: line-through;
}

#pricing .card h6 {
  margin: -1.5rem 0 1rem 0;
}

#pricing .card h4 {
  margin: 0;
  padding: 0;
}

#pricing .card h1 {
  font-size: 72px;
}

#pricing .card h1 sup {
  vertical-align: baseline;
  font-size: 0.5em;
}

#included .card,
#pricing .card {
  padding: 3rem;
  text-align: center;
}

#included .card {
  border: 0;
}

#enrollment .cell div.alt1 {
  display: table;
  width: 100%;
  padding: 3rem;
  max-width: 340px;
  float: right;
}

#enrollment .wrapper-text {
  display: table;
  padding: 0 !important;
  margin: 0;
  width: 100% !important;
}

#enrollment .large-8 .large-10 div {
  padding: 10% 0% 10% 10%;
  width: 50%;
  float: left;
}

#enrollment .large-8 .large-10 div img {
  max-width: 60px;
  opacity: 1;
  margin-bottom: 2rem;
}

.circ-white.alt1 {
  border-radius: 50%;
  margin-bottom: 2rem;
  background: #fff;
  width: 100px !important;
  height: 100px !important;
  max-width: inherit !important;
  padding: 0 !important;
}

.circ-white img {
  max-width: 50px !important;
  position: relative;
  left: 24px;
  top: 20px;
}

p.alt1.alt2 {
  color: #cccccc87;
  font-weight: 600;
  margin-bottom: 0;
}

p.alt1 {
  font-weight: 400;
  color: #666;
  margin-bottom: 1rem;
  font-size: 18px;
}

.sub-nav .menu > li > a {
  font-size: 18px;
}
/*
section#about:after {
  content: "";
  display: table;
  position: absolute;
  width: 250%;
  height: 100%;
  background: -moz-linear-gradient(
    -45deg,
    rgba(255, 255, 255, 0) 2%,
    rgba(255, 255, 255, 0) 21%,
    rgba(255, 255, 255, 1) 22%,
    rgba(255, 255, 255, 1) 50%,
    rgba(255, 255, 255, 1) 71%,
    rgba(255, 255, 255, 0.55) 72%,
    rgba(255, 255, 255, 0.55) 100%
  );
  background: -webkit-linear-gradient(
    -45deg,
    rgba(255, 255, 255, 0) 2%,
    rgba(255, 255, 255, 0) 21%,
    rgba(255, 255, 255, 1) 22%,
    rgba(255, 255, 255, 1) 50%,
    rgba(255, 255, 255, 1) 71%,
    rgba(255, 255, 255, 0.55) 72%,
    rgba(255, 255, 255, 0.55) 100%
  );
  background: linear-gradient(
    135deg,
    rgba(255, 255, 255, 0) 2%,
    rgba(255, 255, 255, 0) 22%,
    rgba(255, 255, 255, 1) 22%,
    rgba(255, 255, 255, 1) 50%,
    rgba(255, 255, 255, 1) 72%,
    rgba(255, 255, 255, 0) 72%,
    rgba(255, 255, 255, 0) 100%
  );
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#00ffffff', endColorstr='#8cffffff', GradientType=1);
  top: 0;
  left: -1126px;
  opacity: 0.8;
  transition: all 0.5s cubic-bezier(0.81, -0.04, 1, 1);
}
*/
section#about.active:after {
  left: 1485px;
}

.orbit {
  max-width: 80%;
  margin: 0 auto;
}

.pos-rel {
  position: relative;
}

.ove-hid {
  overflow: hidden;
}

.bg-fff {
  background-color: #fff;
}


.list-checkmarks {
  margin: 0;
  display: table;
}

.list-checkmarks li {
  padding: 0.5rem 0 1rem 2.5rem !important;
  border: 0 !important;
  float: left;
  font-size: 18px;
}

.list-checkmarks li:before {
  border-top: 0;
  width: 1.5rem !important;
  height: 1.5rem !important;
  background-size: 1.5rem !important;
}

h2 {
  line-height: normal;
}

.cell-content-wrapper {
  padding: 0rem 3rem;
}

/* Reset */
* {
  margin: 0;
  padding: 0;
}

/*SLIDER CSS*/
.testimonial-slider-container {
  padding: 1rem 1rem;
}

.testimonial-slider-container .orbit-previous {
  color: #fff;
  left: -1rem;
}

.testimonial-slider-container .orbit-next {
  color: #fff;
  right: -1rem;
}

.testimonial-slider-container .testimonial-slide {
  display: flex;
  justify-content: center;
}

.testimonial-slider-container .testimonial-slide-content {
  padding: 1rem 1rem;
}

.testimonial-slider-container .profile-pic {
  max-width: 225px;
}

.testimonial-slider-container .testimonial-slide-text {
  padding-left: 3rem;
}

.testimonial-slider-container .testimonial-slide-quotation {
  font-size: 1.4rem;
  position: relative;
  color: #000;
}

.testimonial-slider-container .testimonial-slide-quotation::before {
  content: "“";
  font-size: 6rem;
  color: #000;
  position: absolute;
  top: -3rem;
  left: -3rem;
}

.testimonial-slider-container .testimonial-slide-author-container {
  display: flex;
  color: #000;
}

.wrapper {
  width: 100%;
  height: 80vh;
  overflow: hidden;
}

.wrapper .wrapper__video {
  object-fit: cover;
  width: 100%;
  height: 100%;
}

.content {
  position: absolute;
  top: 20%;
  left: 70%;
  color: #f1f1f1;
  padding-right: 2em;
}

dfn.hasTooltip {
  color: #fff;
  cursor: pointer;
  font-style: normal;
}

.dfnTooltip {
  display: block;
  position: absolute;
  width: 300px;
  font-size: 13px;
  border: solid 1px #d1025a;
  background: #fff;
  color: #333;
}

.dfnTooltipTerm {
  display: block;
  padding: 5px;
  font-weight: bold;
  background-color: #d1025a;
  color: #fff;
}

.dfnTooltipDefinition {
  display: block;
  padding: 5px;
}

.card.expired {
  opacity: 0.4;
}

.card.cancelled {
  opacity: 0.4;
}

.card.expired::after {
  content: "Thank\AYOU!";
  white-space: pre;
  line-height: 1.4;
  font-size: 1rem;
  text-align: center;
  position: absolute;
  top: 20px;
  right: 20px;
  background-color: #d1025a;
  color: white;
  border-radius: 50%;
  padding: 20px;
  transform: rotate(20deg);
}

.card.expired .button {
  opacity: 0;
  cursor: auto;
}

.card.cancelled .button {
  opacity: 0;
  cursor: auto;
}

.card.expired a {
  cursor: auto;
}

.card.cancelled a {
  cursor: auto;
}

.box {
  border: 1px solid #fff;
  width: 350px;
  height: 35px;
  margin: auto;
  padding: 5px;
  color: #fff;
}

.callout {
  font-weight: bold;
  font-size: 1em;
}

@media only screen and (max-width: 40em) {
  #HeroVideo {
    display: none;
  }

  #HeroStatic {
    display: block;
  }
}

@media only screen and (min-width: 40em) {
  #HeroStatic {
    display: none;
  }
}

@media print, screen and (min-width: 40em) {
  .testimonial-slider-container .testimonial-slide-content {
    padding: 1rem 4rem;
  }

  #carousel .card-section h4 {
    font-size: 22px;
  }
}

@media screen and (max-width: 39.9375em) {
  .testimonial-slider-container
    .testimonial-slide-author-container
    .testimonial-slide-author-info {
    margin-left: 1rem;
  }
}

@media screen and (max-width: 2560px) {
  header {
   
    background-position: left center;
    background-size: cover;
  }

  .rwd-break {
    display: static;
  }
}


@media screen and (min-width: 1440px) {
  #included {
    background-position: 570px 70px !important;
  }
}

.testimonial-slide h3 {
  max-width: 1024px;
  margin: 0 auto;
}

/* Certification page styling */
.grid-padding-x > .cell.no-pad {
  padding: 0;
}

.grid-container.no-pad {
  padding: 0;
}

.vertical-center {
  margin: 0;
  position: absolute;
  width: 100%;
  overflow: hidden;
  top: 50%;
  -ms-transform: translateY(-50%);
  transform: translateY(-50%);
}

.full-width {
  width: 100%;
}


/********  footer banner ********/

.arrow-icon,
.arrow-icon img {
  left: 85%;
  top: 5px;
  width: 25px;
  height: 25px;
}
.demo {
  background: red;
}
.container-footer-banner {
  position: fixed;
  bottom: -177px;
  width: 100%;
  left: 0;
  right: 0;
  background: transparent;
  transition: all 0.3s;
  z-index: 999;
}
.expand {
  bottom: 0px;
}
.container-title {
  width: 100%;
  margin: auto;
  max-width: 600px;
  border: 1px solid #aaa;
  border-bottom: 0;
  border-radius: 5px 5px 0 0;
  transform: translateY(1px);
  cursor: pointer;
  display: flex;
  text-align: center;
  padding: 0.5rem;
  background: white;
  position: relative;
}
.title-text {
  width: 100%;
}
.hidden-element {
  height: 177px;
  width: 100%;
  max-width: 1280px;
  margin: auto;
  color: white;
  background: white;
  border-top: 1px solid #aaa;
}
.hidden-content {
  background: black;
  border-radius: 5px;
  height: 100%;
  display: flex;
  justify-content: space-around;
  align-items: center;
}
.logo {
  height: 27px;
  margin-right: 40px;
  width: 160px;
}
.rotate {
  transform: rotate(180deg);
}
.message {
  width: 50%;
  font-size: 1.75rem;
  text-align: center;
}
.continue {
  padding: 0.5rem 1rem;
  background: white;
  color: black;
  border-radius: 3px;
}
.juggling {
  color: hsl(233, 13%, 49%);
  margin: 3.3rem 0;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}
.juggling .toggle {
  margin-top: 2rem;
  color: hsl(234, 14%, 74%);
  display: flex;
  align-items: center;
}
.juggling .toggle-btn {
  margin: 0 1rem;
}
.juggling .checkbox {
  display: none;
}

 .juggling .sub {
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
.juggling .circle {
  background-color: #fff;
  height: 1.4rem;
  width: 1.4rem;
  border-radius: 50%;
}
.juggling .checkbox:checked + .sub {
  justify-content: flex-end;
}

.cardses {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-wrap: wrap;
}

.cardses .carding {
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
.cardses ul {
  margin: 2.6rem;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: space-around;
}
.cardses ul li {
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
.cardses .shadow {
  box-shadow: -5px 5px 15px 1px rgba(0, 0, 0, 0.1);
}

.carding .active .price {
  color: #fff;
}

.cardses .btn {
  margin-top: 1rem;
  height: 2.6rem;
  width: 13.3rem;
  display: flex;
  justify-content: center;
  align-items: center;
  border-radius: 4px;
  background: linear-gradient(
    135deg,
    #aba3bc 0%,
    #d5d0dd 100%
  );
  color: #fff;
  outline: none;
  border: 0;
  font-weight: bold;
} 
 .cardses .active-btn {
  background: #fff;
  color: #5d507d;
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
color: #0b0742
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
  <header class="header" style="position: fixed; top: 0; width: 100%;background:white;z-index:99;">
    <div class="container flex-between">
     <div class="logo">
 	<img src="images/log.png" alt="Working Illustration"  />
      </div>
      <div class="main-navgation flex-between flex-ver-top">
        <div class="nav-links" style="margin-left: 13%">
           <a href="NewHome.jsp">Home</a>
          <a href="NewServices.jsp">Services</a>
          <a href="NewCourses.jsp">Courses</a>
           <a href="NewCertifications.jsp">Certifications</a>
            <a href="NewContact.jsp">Contact us</a>
        </div>
        <div class="nav-buttons">
         <!--  <a href="signin-up.jsp" class="log-in">Login</a> -->
           <button class="sign-up btn btn-sm" style="color:#fff;align-items:center" onclick="location.href='log.jsp'">Login/Sign Up</button>
        </div>
      </div>
      <div class="burger-menu">
        <i class="fa-regular fa-bars icon"></i>
      </div>
    </div>
  </header>
    <section class="landing" style="margin-top:8%;">
    <div class="landing-text" style="margin-bottom: 5%;margin-left: 5%;">
      <h1 style="color: #0b0742;">We Provide you BEST LEARNING EXPERIENCE!</h1>

      <p>
        Build your Career and get detailed insights on how your
        Future gonna be..
      </p>
      <a href="#subNavContainer" class="btn btn-lg">Explore Now</a>
    </div>
    <div class="landing-image">
      <img src="https://www.pairsoft.com/wp-content/uploads/2022/05/pfa-procurement-1200x1031.png" alt="Working Illustration" style="width:100%;margin-left: 5%;padding-right: 30%;" />
    </div>
  </section>
  </main>
<!--   -------------- -->



    
    <nav
      id="subNavContainer"
      class="sub-nav-container sticky-container"
      data-sub-nav
      data-sticky-container 
    >
      <div
        class="sticky is-anchored is-at-top"
        data-sticky
        data-sticky-on="small"
        data-top-anchor="subNavContainer:top"
        data-margin-top="0"
       >
    
    
        <!-- Menu for Large Screens -->
        <div id="subNavLarge" class="sub-nav show-for-large">
          <ul
            class="menu vertical large-horizontal align-center dropdown"
            data-responsive-menu="accordion large-dropdown"
            data-magellan
            data-offset="40"
            data-threshold="85"
            data-deep-link="true" style="background-color: #fff;"
          >
          <a href="" style="margin-top: 28px;margin-right: 70px;font-size: 2rem;color: #0b0742">VEDHA</a>
            <li><a href="#about" data-close>About</a></li>
            <li><a href="#benefits" data-close>Benefits</a></li>
        
            <li><a href="#included" data-close>What is Included</a></li>
            <li>
              <a href="#lead" data-close>Lead a Class</a>
            </li>
            <li><a href="#pricing">Pricing</a></li>
            <li class="sub-nav-cta-large show-for-large" role="menuitem">
              <a
                class="button sky ctatrack"
                id="AdMenCTA1"
                href="log.jsp"
                >Enroll Now!</a
              >
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- About  -->
    <section id="about" class="bg-center bg-color-f5f5f5" data-magellan-target="about" style="background: #fff;">
      <div class="grid-x grid-padding-x">
        <div class="cell">
          <div class="grid-x grid-padding-x">
            <div class="cell large-6 pt50 pb50">
              <div style="max-width: 520px; margin: 4rem auto;">
                <h1>About</h1>
                <h2 style="font-size: 2.5rem">
                  About this Professional Certificate
                </h2>
                <h5 class="mb30 block-bodytext">
Prepare for a career in the high-growth field of IT, no experience or degree required. Get professional training designed by Google and get on the fast-track to a competitively paid job. There are 400,000 U.S. job openings in IT and a $52,000 median entry-level salary in IT support.¹

Over 5 courses, learn in-demand skills that prepare you for an entry-level job. <br>
             </h5>
                <h5 class="mb30 block-bodytext">
Your skills will include: Network protocols, cloud computing, Windows operating system, Linux command line, systems administration, encryption algorithms and techniques, and more. 

Learn concrete skills that top employers are hiring for right now.                </h5>
              </div>
            </div>
            <div
              class="cell large-6 bg-cover bg-top-left show-for-large" >
              <img alt="" src="https://uploads-ssl.webflow.com/628589d2f1c61e2fcbe34777/62ab6c4c4e162494b8510275_TL4_Manager.png" style="margin-left:-10%;margin-top: 10%;width: 90%">
              </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Call Out 1 -->
    <section id="fullBanner1" class="bg-grd-1 pt40 pb40" style="background: linear-gradient(to right, #aba3bc,#d5d0dd,#fff); ">
      <div class="grid-container">
        <div class="grid-x">
          <div class="cell text-center text-bold alt1 text-light" style="display: flex;">
          <img alt="" src="https://www.pngkit.com/png/full/364-3646479_professional-business-advice-members-receive-advice-group-of.png" style="width: 35%;margin-left: -10%;">
            <h3 style="margin-left: 10%;font-size: 2.5rem;">
              A Faster Way For Your Employees To Grow And Upskill<br>
             <p style="color: #5d507d;font-size: 1.3rem">Our range of solutions has something to offer all businesses and organizations. Whether you’re a non-profit or a commercial entity, we can tailor a plan for your needs.</p>
            </h3>
          </div>
        </div>
      </div>
    </section>
    <!-- Benefits -->
    <section
      id="benefits"
      class="bg-center bg-color-f5f5f5"
      data-magellan-target="benefits" style="background: #fff;"
    >
      <div class="grid-x grid-padding-x">
        <div class="cell">
          <div class="grid-x grid-padding-x">
            <div
              class="cell large-6 bg-cover bg-top-left show-for-large">
              <img alt="" src="https://assets-global.website-files.com/619e763ab3de7b9116107adf/61f8024d4a5157485a2f4596_mls.png" style="width: 70%;margin-top: 20%;margin-left: 30%;">
              </div>
            <div class="cell large-6 pt50 pb50">
              <div style="max-width: 520px; margin: 4rem auto;">
                <h1>Benefits</h1>
                <h2 style="font-size: 2.5rem">
                  Why Should You Facilitate This Course?
                </h2>
                <h5 class="mb40 block-bodytext">
                  <ul class="list-checkmarks list-borders alt1" style="margin-top: 3%">
                    <li>
                      <p>Expand Your Library of Trainings Offered for Agents</p>
                    </li>
                    <li>
                      <p>Synergize With Your Office to Create Knowledge Pool</p>
                    </li>
                    <li>
                      <p>Maximize Your Time as a Leader</p>
                    </li>
                    <li>
                      <p>Build Momentum in Your Office</p>
                    </li>
                    <li>
                      <p>Turn Your Agents Into Top-Producing Agents</p>
                    </li>
                  </ul>
                </h5>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Preview -->


       <!-- Preview Modules -->
       <div class="reveal large" id="modulePreview" data-reveal data-reset-on-close="true">  
        <h4 id="modal-heading" class="text-bold"></h4>
        <div class="responsive-embed widescreen" >
          <iframe id="video-iframe" src="https://www.youtube.com/embed/xPhjF1oAxOA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>
        <div class="show-for-small-only"><hr class="mt20" /><a class="button small secondary hollow radius float-right" data-close>Close</a></div>
        <button class="close-button" data-close="" aria-label="Close modal" type="button"><span aria-hidden="true">×</span></button>
      </div>

    <!-- Included -->
    <section
      id="included"
      class="bg-color-fff pt50"
      data-magellan-target="included"
    >
      <div class="grid-x grid-padding-x offset-negative-6">
        <div class="cell text-center">
          <h1 class="alt1"><center>What Is Included</center></h1>
          <h1><center>
            What is Included When You Facilitate The Pathway to your career
        </center>  </h2>
        </div>
        <div class="cell">
          <div class="grid-x grid-padding-x">
            <div class="cell large-6 pt50 pb50">
              <div style="max-width: 520px; margin: 4rem auto;">
                <h4 class="mb20">Advanced Course Mentor/Facilitator Kit</h4>
                <p>
                  Includes all the resources you need to turn your agents into top producers!
                </p>
        
              </div>
            </div>
            <div class="cell large-6 img-bleed-1 bg-top-left show-for-large">
              <img
                src="https://cdn-diaje.nitrocdn.com/agUKaLMzDthgWpisGjwAVlffspkRrhDR/assets/static/optimized/rev-2be58ba/wp-content/uploads/2021/09/ourpurposeimg.png" style="width: 50%"
              />
            </div>
          </div>
        </div>
      </div>



      <div class="grid-x grid-padding-x offset-negative-6">
        <div class="cell">
          <div class="grid-x grid-padding-x">
            <div class="cell large-6 img-bleed-1 bg-top-left show-for-large">
              <img
                src="https://www.delta-esourcing.com/wp-content/uploads/2022/08/man-smiling-in-delta-logo.png" style="width: 50%;margin-left: 30%;"
              />
            </div>
            <div class="cell large-6 pt50 pb50">
              <div style="max-width: 520px; margin: 4rem auto;">
                <h4 class="mb20">Robust Online Resource Center</h4>
                <p>
                  Designed with the busy, production-based broker in mind, so you can focus on leading, motivating and supporting your agents while they build a solid production-based business.
                </p>
             
              </div>
            </div>
          </div>
        </div>
      </div>

  

      <div class="grid-x grid-padding-x">
        <div class="cell">
          <div class="grid-x grid-padding-x">
            <div class="cell large-6 pt50 pb50">
              <div style="max-width: 540px; margin: 4rem auto;">
                <h4 class="mb20">
                  Complimentary Access to Referral Maker® CRM
                </h4>
                <p>
                  Provided to both you and your students, Referral Maker CRM allows you to integrate and automate your student and client recruitment and retention activities.
                </p>
             
              </div>
            </div>
            <div class="cell large-6 img-bleed-1 bg-top-left show-for-large">
              <img
                src="https://cdn-diaje.nitrocdn.com/agUKaLMzDthgWpisGjwAVlffspkRrhDR/assets/static/optimized/rev-2be58ba/wp-content/uploads/2021/09/carrerimg4.png" style="width: 50%"
              />
            </div>
          </div>
        </div>
      </div>
    </section>

  

    <!-- dedicated consultant -->
    <section
      id="dedicated"
      class="bg-center"
      style="background: #fff;"
      data-magellan-target="dedicated"
    >
    <h1 style="margin-top: 5%;"><center>Dedicated Consultant</center></h1>
      <div class="grid-x grid-padding-x">
        <div class="cell">
          <div class="grid-x grid-padding-x">
            <div
              class="cell large-6 bg-cover bg-top-left show-for-large">
              <img alt="" src="https://www.repsly.com/hs-fs/hubfs/Repsly%20Web/Pages/Homepage/Slide/Manager%20using%20Repsly.png?width=528&height=429&name=Manager%20using%20Repsly.png" style="margin-left: 30%;margin-top: 5%;">
              </div>
            <div class="cell large-6 pt50 pb50">
              <div style="max-width: 520px; margin: 4rem auto;">
                <h2 style="font-size: 1.5rem">Dedicated Training Team</h2>
                <h5 class="mb40 block-bodytext">
                  Shortly after you purchase your certification course materials
                  and complete viewing the certification videos, you will be
                  contacted by a Buffini & Company Training Consultant. They
                  will be your dedicated resource to assist you in setting up,
                  promoting and holding successful classes.
                </h5>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>



   
    <!-- Lead a Class -->
    <section
      id="lead"
      class="bg-center"
      data-magellan-target="lead"
      style="
  background: #fff;margin-top: 5%;"
    >
    <h1 style="font-size: 3rem;"><center>Lead a class</center></h1>
      <div class="grid-x grid-padding-x">
        <div class="cell">
          <div class="grid-x grid-padding-x">
            <div
              class="cell large-6 bg-cover bg-center show-for-large">
              <img alt="" src="https://bizmktg.com/wp-content/uploads/2020/07/Win-Online_website-design-page-875x1024.png" style="width: 80%;margin-left: 20%;">
              </div>
            <div class="cell large-6 pt50 pb50">
              <div style="max-width: 520px; margin: 4rem auto;">
                <h1 style="font-size: 2rem">Lead the Course</h1>
                <h5 class="mb40 block-bodytext">
                As a VEDHA Certified Mentor or Facilitator, you will take your team to the next level. 
                </h5>
                <h5 class="mb40 block-bodytext">
                  <b style="color: #333;">VEDHA Certified Mentor:</b> Owners and Managers facilitate this course in your office and leverage your time, energy and impact as a leader while you in increase the bottom line of your agents and your office.
                </h5>
                <h5 class="mb40 block-bodytext">
                    <b style="color: #333;">VEDHA Certified Tutor:</b> Our ancillary service providers help meet the needs of today's innovations by facilitating the industry's newest and most innovative training program.
                  </h5>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- How to  -->
    <section
      id="how-to"
      class="bg-center"
      style="background: #fefefe;"
      data-magellan-target="how-to"
    >
      <div class="grid-x grid-padding-x">
        <div class="cell">
          <div class="grid-x grid-padding-x">
            <div class="cell large-6 pt50 pb50">
              <div style="max-width: 520px; margin: 4rem auto;">
                <h2 style="font-size: 2.5rem">How to Facilitate a Class</h2>
                <h5 class="mb40 block-bodytext" style="margin-top: 3%">
                  The Advanced course consists of weekly video training modules followed by lead generating action steps. Your facilitator materials will include everything you need to promote synergy and have a productive class. 
                  </h5>
                  <h5 class="mb40 block-bodytext">
                    <ul class="list-checkmarks list-borders alt1">
                      <li>
                        <p>The Advanced course offers the option to watch the video training modules together as a group or assign as homework and hold your synergy meetings later.</p>
                      </li>
                      <li>
                        <p>If you have agents out of the area, the Advanced course offers a virtual class option and resources to keep your class running smoothly.</p>
                      </li>
                      <li>
                        <p>Keep your team engaged! Each video module includes a quiz to ensure your students retain that week's information. Your facilitator guide will outline class meeting agendas with activities, role plays and best practices.</p>
                      </li>
                    </ul>
                  </h5>
              </div>
            </div>
            <div
              class="cell large-6 bg-cover bg-top-left show-for-large">
              <img alt="" src="images/Digo.jpg" style="margin-top: 20%;">
              </div>
          </div>
        </div>
      </div>
    </section>

  <section id="pricing"class="pricing"   style="margin-bottom: 10%;">
<div class="juggling" >
    <h1>Our Pricing</h1>
    <div class="toggle">
      <label><h1>Annually</h1> </label>
      <div class="toggle-btn">
        <input type="checkbox" class="checkbox" id="checkbox" />
        <label class="sub" id="sub" for="checkbox">
          <div class="circle"></div>
        </label>
      </div>
      <label><h1> Monthly</h1></label>
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
        <div class="col" style="color: #0b0742">
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
        <hr style="color: #0b0742">
        <p class="copyright" style="color: #0b0742">VEDHA E-Learning ⓒ 2022 - All Rights Reserved </p>
        </footer>

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
    <!-- end -->

    <script>
      $(document).foundation({
        accordion: {
          // specify the class used for active (or open) accordion panels
          active_class: "active",
          // allow multiple accordion panels to be active at the same time
          multi_expand: true
        }
      });
    </script>


      
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>
  <script src='https://service.force.com/embeddedservice/5.0/esw.min.js'></script> 
  <script src="https://buffinico.blob.core.windows.net/assets/scripts/banner.js"></script>
  <script src="//www.buffiniandcompany.com/assets/scripts/foundation.min.js?v=636494443891199690"></script>
  <script src="//www.buffiniandcompany.com/assets/scripts/global.js?v=637080397137017668"></script>
  <script src="//www.buffiniandcompany.com/assets/scripts/popupscript.js?v=637220165243689752"></script>
  <script src="//www.buffiniandcompany.com/assets/scripts/livechat.js?v=637318092448469093"></script>
  <script src="//www.buffiniandcompany.com/assets/scripts/owl.carousel.min.js?v=636494443891839690"></script>

</body>
</html>



