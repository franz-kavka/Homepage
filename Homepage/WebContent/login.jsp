<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="shortcut icon" href="./pic/favicon.ico">
<title>LOGIN</title>
<style type="text/css">
@font-face {
	font-family: 'Ferrum';
	src: url('css/k8x12S.ttf') format('truetype');
	font-weight: normal;
	font-style: normal;
}

body {
	margin: 0;
	font-family: 'Ferrum', serif;
}

p {
	font-size: 30px;
}

.blue-bg {
	position: absolute;
	background: url(./pic/renga.png);
	top: 0;
	width: 99.99%;
	z-index: -1;
	overflow-x: hidden;
}

#main {
	display: inline-block;
	text-align: center;
	color: white;
	z-index: 10;
	margin-top: 100px;
	margin-bottom: 50px;
	margin-left: 5vw;
	width: 78%;
	background-color: rgba(0, 0, 0, 0.50);
	border-radius: 5px;
	text-align: center;
	padding: 6vw;
	padding-top: 4vh;
	float:left;
}

#form{
text-align: center;
background:black;
width:50vw;
display:inline-block;
margin-left:0.5vw;
border: 3px inset white;
}



#button-blue{
    font-family: 'Montserrat', Arial, Helvetica, sans-serif;
    float:left;
    width: 48vw;
    border: #fbfbfb solid 4px;
    cursor:pointer;
    background-color: black;
    color:white;
    font-size:24px;
    padding-top:22px;
    padding-bottom:22px;
    -webkit-transition: all 0.3s;
    -moz-transition: all 0.3s;
    transition: all 0.3s;
  margin-top:-4px;
  font-weight:700;
  font-family: 'Ferrum', serif;

}

#button-blue:hover{

    background-color: rgba(0,0,0,0);
    color: maroon;
     font-size:30px;

}

.submit:hover {
    color: #3498db;
}

.ease {
    width: 0px;
    height: 74px;
    background-color: #fbfbfb;
    -webkit-transition: .3s ease;
    -moz-transition: .3s ease;
    -o-transition: .3s ease;
    -ms-transition: .3s ease;
    transition: .3s ease;
}

.submit:hover .ease{
  width:48vw;
  background-color:white;
}
td{
    padding:1vw;
    }
#name,#email{
width:20vw;
margin:0 auto;
}
#message{
width:40vw;

}
@media only screen and (max-width: 580px) {
    #form-div{
        left: 3%;
        margin-right: 3%;
        width: 88%;
        margin-left: 0;
        padding-left: 3%;
        padding-right: 3%;
    }


</style>
<link rel="stylesheet" type="text/css" href="./css/header.css">
<link rel="stylesheet" href="./css/lightbox.css">
<script src="./js/lightbox.js" type="text/javascript"></script>
 <link rel="stylesheet" href="./css/animate.css">
   <script src="js/jquery-1.10.1.min.js"></script>
   <script src="./js/wow.js"></script>
   <script>
     new WOW().init();
    </script>
</head>
<body>

<s:include value="loading.jsp"/>
	<div class="blue-bg">
	<div  class="wow rotateInDownLeft" data-wow-duration="0.8s" data-wow-delay="0.5s" >
		<div class="white-bg shadow">
		<a href="HomeAction"><span id="title"><h1>???????????????</h1></span></a></div>
		<s:include value="header.jsp"/></div>
		<div id="main">
			<div class="wow fadeInUp" data-wow-delay="0.2s">
			<h1></h1></div>
			<br>
			<br>
			<div class="wow fadeInUp" data-wow-delay="0.5s">
			<br>
			<div id="form">
				<form action="LoginCheckAction" id="form1" method="post">
					<table>

							<tr>
									<td>id</td>
							</tr>
							<tr>
									<td><input type="text"  id="name" name="loginUserId"
											 value="" required /></td>
							</tr>
							<tr></tr>
							<tr>
								<td>password</td>
							</tr>
							<tr>
								<td><input type="password"
										 id="email" name="loginPassword" required /></td>
							</tr>
							<tr>

							<tr>
							<td> <div class="submit">
								<input type="submit" value="S U B M I T" id="button-blue"/>
								<div class="ease"></div>
								</div></td>
							</tr>

					</table>
				</form>
			</div>

	</div>
	</div>
	<s:include value="footer.jsp"/>
</div>
</body>
</html>