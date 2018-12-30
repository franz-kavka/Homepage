<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "//www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="./pic/favicon.ico">
<title>Welcome</title>
<style type="text/css">
@font-face {
	font-family: 'Ferrum';
	src: url('css/k8x12S.ttf') format('truetype');
	font-weight: normal;
	font-style: normal;
}

html {
	width: 99.99%;
}

body {
	font-family: 'Ferrum', serif;
	margin: 0;
}

h1 {
	font-size: 55px;
}

p {
	font-size: 30px;
	text-align: justify;
}

.blue-bg {
	position: absolute;
	background: url(./pic/dragon.png);
	background-size: cover;
	background-color: #58aff6;
	top: 0;
	height: 1000px;
	width: 100vw;
	z-index: -1;
	overflow-x: hidden;
}

.white-bg {
	position: fixed;
	top: 35vh;
	background-color: black;
	min-height: 500px;
	margin: 210px 0px;
	width: 100vw;
	height: 50vh;
	transform: skewY(5deg);
	z-index: -1;
}

.content {
	position: fixed;
	top: 20vh;
	color: white;
	margin: 300px 10vw;
	max-width: 60vw;
	background-color: transparent;
}

.shadow {
	box-shadow: -2px -5px 5px 0px rgba(0, 0, 0, 0.3);
}

a {
	text-decoration: none
}

a:visited {
	color: silver
}

a:hover {

}
.center {
font-family: 'Ferrum', serif;
}

.center__text {
  margin: auto;
  font-family: 'Ferrum', serif;
  font-size: 220px;
  text-transform: uppercase;
}

.glitch {
  position: relative;
  color: white;
  mix-blend-mode: lighten;
}
.glitch:before, .glitch:after {
  content: attr(data-text);
  position: absolute;
  top: 0;
  width: 100%;
  background: black;
  clip: rect(0, 0, 0, 0);
}
.glitch:before {
  text-shadow: 4px 0 rgba(255, 0, 0, 0.7);
  animation: glitch-loop-1 0.7s infinite ease-in-out alternate-reverse;
}
.glitch:after {
  text-shadow: -5px 0 rgba(0, 0, 255, 0.7);
  animation: glitch-loop-2 0.9s infinite ease-in-out alternate-reverse;
}
.glitch:hover:before {
  text-shadow: 4px 0 rgba(255, 0, 0, 0.7);
  animation: glitch-loop-1 0.3s infinite ease-in-out alternate-reverse;
}
.glitch:hover:after {
  text-shadow: -5px 0 rgba(0, 0, 255, 0.7);
  animation: glitch-loop-2 0.5s infinite ease-in-out alternate-reverse;
}

@keyframes glitch-loop-1 {
  0% {
    clip: rect(36px, 9999px, 19px, 0);
  }
  25% {
    clip: rect(25px, 9999px, 199px, 0);
  }
  50% {
    clip: rect(50px, 9999px, 192px, 0);
  }
  75% {
    clip: rect(30px, 9999px, 152px, 0);
  }
  100% {
    clip: rect(91px, 9999px, 158px, 0);
  }
}
@keyframes glitch-loop-2 {
  0% {
    top: -1px;
    left: 1px;
    clip: rect(65px, 9999px, 179px, 0);
  }
  25% {
    top: -6px;
    left: 4px;
    clip: rect(79px, 9999px, 79px, 0);
  }
  50% {
    top: -3px;
    left: 2px;
    clip: rect(68px, 9999px, 71px, 0);
  }
  75% {
    top: 0px;
    left: -4px;
    clip: rect(95px, 9999px, 103px, 0);
  }
  100% {
    top: -1px;
    left: -1px;
    clip: rect(31px, 9999px, 209px, 0);
  }
}

</style>
 <link rel="stylesheet" href="./css/animate.css">
   <script src="js/jquery-1.10.1.min.js"></script>
   <script src="./js/wow.js"></script>
   <script>
     new WOW().init();
    </script>

</head>
<body>
	<div class="blue-bg"></div>
	<div class="center">

</div>
	<div class="white-bg shadow"></div>
	<div class="content">
	<br><br>

		<a href="HomeAction"><h1 class="center__text glitch is-glitching" data-text="ALLDICE">ALL DICE</h1></a>
	</div>
</body>
</html>