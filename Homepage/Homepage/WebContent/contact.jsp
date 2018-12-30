<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "//www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="shortcut icon" href="./pic/favicon.ico">
<title>ALLDICE-CONTACT</title>
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
	font-size: calc(100% + 0.9vw);
}

.blue-bg {
	position: absolute;
	background: url(./pic/magmadragon.png);
	top: 0;
	width: 99.99%;
	z-index: -1;
	overflow-x: hidden;
	min-height: 100%;
}

#margin {
	min-height: 76.5vh;
}

#main {
	display: inline-block;
	border:2px dashed maroon;
	text-align: center;
	color: white;
	z-index: 10;
	margin-top: 100px;
	margin-left: 5vw;
	margin-bottom: 50px;
	width: 90%;
	background-color: rgba(0, 0, 0, 0.80);
	padding: 0;
	padding-top: 2vw;
	padding-bottom: 5vw;
	float: left;
}

#form {
	background: black;
	display: inline-block;
	margin: 0 auto;
	border: 2px outset white;
	width: 80%;
}

#button-blue {
	font-family: 'Montserrat', Arial, Helvetica, sans-serif;
	float: left;
	width: 48vw;
	border: #fbfbfb solid 2px;
	cursor: pointer;
	background-color: black;
	color: white;
	font-size: 24px;
	padding-top: 22px;
	padding-bottom: 22px;
	-webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	transition: all 0.3s;
	margin-top: -2px;
	font-weight: 700;
	font-family: 'Ferrum', serif;
}

#button-blue:hover {
	background-color: rgba(0, 0, 0, 0);
	color: maroon;
	font-size: 24px;
}

.submit:hover {
	color: #3498db;
}

.ease {
	width: 0px;
	height: 68px;
	background-color: #fbfbfb;
	-webkit-transition: .3s ease;
	-moz-transition: .3s ease;
	-o-transition: .3s ease;
	-ms-transition: .3s ease;
	transition: .3s ease;
}

.submit {
	display: inline-block;
	text-align: center;
}

.submit:hover .ease {
	width: 48vw;
	background-color: white;
}

table {
	margin: 0 auto;
}

td {
	padding: 1vw;
	font-size: calc(80% + 0.7vw);
}

#name, #email {
	width: calc(80% + 1vw);
	margin: 0 auto;
}

#message {
	width: calc(80% + 1vw);
	height: 11vw;
}

@media only screen and (max-width: 580px) {
	#form-div {
		left: 3%;
		margin: 0 auto;
		width: 88%;
		margin-left: 0;
		padding-left: 3%;
		padding-right: 3%;
	}
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

	<s:include value="loading.jsp" />
	<div class="blue-bg">
		<div class="wow rotateInDownLeft" data-wow-duration="0.8s"
			data-wow-delay="0.3s">
			<div class="white-bg shadow">
				<a href="HomeAction"><span id="title"><h1>C.O.N.T.A.C.T</h1></span></a>
			</div>
			<s:include value="header.jsp" />
		</div>
		<div id="margin">
			<div id="main">
				<div class="wow fadeInUp" data-wow-delay="0.2s">
					<p>C O N T A C T</p>
				</div>
				<br> <br>
				<div class="wow fadeInUp" data-wow-delay="0.5s">
					コンタクトフォーム<br>
					<div id="form">
						<form action="ContactSendAction" id="form1" method="post">
							<table>

								<tr>
									<td>名前：</td>
								</tr>
								<tr>
									<td><input type="text" id="name" name="name"
										placeholder="Name" class="nodata" value="" required /></td>
								</tr>
								<tr></tr>
								<tr>
									<td>メールアドレス：</td>
								</tr>
								<tr>
									<td><input type="text" placeholder="Email" id="email"
										name="mail" required /></td>
								</tr>
								<tr>
									<td>お問い合わせ内容：</td>
								</tr>
								<tr>
									<td><textarea name="message" cols="100" rows="15"
											id="message"></textarea></td>
								</tr>
								<tr>
									<td>
										<div class="submit">
											<input type="submit" value="S E N D" id="button-blue" />
											<div class="ease"></div>
										</div>
									</td>
								</tr>
							</table>
						</form>
					</div>
				</div>
			</div>
		</div>
		<s:include value="footer.jsp" />
	</div>
</body>
</html>