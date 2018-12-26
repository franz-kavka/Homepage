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
<title>ALDICE-INFORMATION</title>
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
	background: url(./pic/magmadragon.png);
	top: 0;
	box-sizing:border-box;
	width: 99.99%;
	z-index: -1;
	overflow-x: hidden;
	min-height:100%;
}

#main {
	display: inline-block;
	text-align: center;
	color: white;
	z-index: 10;
	margin-top: 5vw;
	box-sizing:border-box;
	width: 100%;
}

#left {
	float: left;
	display:inline-block;
	background-color: rgba(0, 0, 0, 0.80);
	border-radius: 5px;
	width: 330px;
	min-width: 60vw;
	text-align: center;
	margin-left: 2vw;
	margin-right: 0;
	padding: 5.5vw;
	border:2px dashed maroon;
	font-size: calc(50% + 1vw);
}

#thumb img {
	width: 99%;
	object-fit: cover;
}

#thumb p {
	font-size: 25px;
}

#right {
	display:inline-block;
	box-sizing:border-box;
	margin-top: 5vw;
	margin-right: 0.5vw;
	background-color: rgba(0, 0, 0, 0.80);
	border-radius: 5px;
	width: 22%;
	min-width: 250px;
	padding: 5vw 1vw 5vw 1vw;
	border:2px dashed maroon;
}
#weblog{
border: 3px outset white;
	background: black;
	padding:1vw;
}
#weblog img{
	max-width:80%;
	max-height: 40vw;
	object-fit: contain;
	border:2px outset white;
}
#webbody{
font-size:20px;
}
#submit{
	background:none;
	border:none;
	font-family: 'Ferrum', serif;
	color:white;
	font-size:calc(80% + 0.5vw);
}
#submit:hover{
	color:gray;
}
#form{
display:inline;
margin:5vw;
}
#archives{
text-align:center;
}

</style>
<link rel="stylesheet" type="text/css" href="./css/header.css">
<link rel="stylesheet" href="./css/lightbox.css">
<script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="./js/lightbox.js" type="text/javascript"></script>
 <link rel="stylesheet" href="./css/animate.css">
   <script src="js/jquery-1.10.1.min.js"></script>
   <script src="./js/wow.js"></script>
   <script>
     new WOW().init();
    </script>

</head>
<body>

<s:include value="loadingFast.jsp"/>
	<div class="blue-bg">
	<div  class="wow rotateInDownLeft" data-wow-duration="0.8s" data-wow-delay="0.1s" >
		<div class="white-bg shadow">
		<span id="title"><a href="HomeAction"><h1>W.E.B.L.O.G</h1></a></span></div>

		<s:include value="header.jsp"/></div>
		<div id="main">
		<div class="wow fadeInUp" data-wow-delay="0.5s">
			<div id="left">
			<div id="weblog">

				<s:iterator value="session.articleList">
					<s:if test="articleImg !=null">

							<h1><s:property value="articleTitle" /></h1>
							<br>

							<a href="<s:property value="articleImg" />" rel="lightbox"><img
									src="<s:property value="articleImg" />"/></a>
							<div id="webbody">
								<br><s:property value="articleBody" escape="false"/>
									<br><br><br><br><br><br>
									<s:property value="date" /></div>
									<br>
									</s:if>



					<s:else>
						<h1><s:property value="articleTitle" /></h1>
							<div id="webbody">
								<br><s:property value="articleBody" escape="false"/>
									<br><br><br><br><br><br>
									<s:property value="date" /></div>
					</s:else>
<div id="move">
						<!--次へ 戻る 最新 -->
									<br>
						<s:if test="id != row ">
						<form id="form" action="BlogNextAction">
							<input type="hidden" name="id" value="<s:property value="id" />" >
							<input type="submit" id="submit" value="次の記事"/>
						</form>
						    <form id="form" action="BlogNewAction">
							<input type="submit" id="submit" value="最新"/>
						</form>
						</s:if>
						<s:if test="id != 1">
							<form id="form" action="BlogBeforeAction">
								<input type="hidden" name="id" value="<s:property value="id" />" >
								<input type="submit" id="submit" value="前の記事"/>
							</form>
						</s:if>
						<br><br><a href="HomeAction">戻る</a>
						</div>
							</s:iterator>
						</div>
			</div>
			</div>
			<div class="wow fadeInUp" data-wow-delay="0.5s">
			<div id="right">
				<div id="archives">
				<h2>ARCHIVES</h2>
				<s:iterator value="session.blogList">
					<form id="jump" action="BlogAction">
							<input type="hidden" name="id" value="<s:property value="id" />" >
							<input type="submit" id="submit" value="<s:property value="articleTitle" />(<s:property value="date" />)"/>
						</form>
				</s:iterator>
				</div>
			</div>
			</div>

		</div>
		<s:include value="footer.jsp"/>
	</div>
</body>
</html>