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
<title>INFOPREVIEW</title>
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
	min-height:100%;
}

#main {
	display: inline-block;
	text-align: center;
	color: white;
	z-index: 10;
	margin-top: 100px;
	margin-bottom: 50px;
	width: 100%;
}

#twitter {

}

#left {
	float: left;
	background-color: rgba(0, 0, 0, 0.50);
	width: 74%;
	text-align: center;
	margin-left: 2vw;
	margin-right: 0;
	padding: 5.5vw;
}

#news {
	border: 3px inset white;
	background: black;
}

#news p {
	font-size: 40px;
	margin: 0;
	border-bottom: 3px inset white;
}

#left ul {
	list-style-type: square;
}

#left ul li {
	text-align: left;
	font-size: 25px;
}

#article {

}

#article h1 {
	font-size: 40px;
	margin: 0;
	border: 3px inset white;
	background: black;
}

#thumb img {
	width: 99%;

	object-fit: cover;
}

#thumb p {
	font-size: 25px;
}

#right {
	margin-top: 200px;
	margin-right: 10px;
	background-color: rgba(0, 0, 0, 0.50);
	float: right;
	width: 22%;
	padding: 100px 10px 100px 10px;
}
#weblog img{
	max-width:80%;
	max-height: 80vh;
	object-fit: contain;
	border:2px inset white;
}
#webbody{
font-size:20px;
}
#submit{
	background:none;
	border:none;
	font-family: 'Ferrum', serif;
	color:white;
	font-size:20px;

}
#form{
display:inline;
margin:8vw;


}

</style>
<link rel="stylesheet" type="text/css" href="./css/header.css">
<link rel="stylesheet" type="text/css" href="./css/masonry.css">
</head>
<body>

	<div class="blue-bg">
		<div class="white-bg shadow">

		<a href="HomeAction"><span id="title"><h1>!!PREVIEW!!</h1></span></a></div>

		<s:include value="header.jsp"/>
		<div id="main">
		<s:if test="#session.logined==1">
			<div id="left">
			<div id="weblog">
<!-- 			<h1>B L O G</h1> -->


					<s:if test="articleImg !=null">

							<h1><s:property value="articleTitle" /></h1>
							<img src="<s:property value="articleImg" />">
							<div id="webbody">
								<br><s:property value="articleBody" escape="false"/>
									<br><br>
									<s:property value="date" /></div>
									<br>
									</s:if>



					<s:else>
						<h1><s:property value="articleTitle" /></h1>
							<div id="webbody">
								<br><s:property value="articleBody" escape="false"/>
									<br><br><br><br><br><br><br><br><br><br>
									<s:property value="date" /></div>
					</s:else>


<div id="move">
						<!--次へ 戻る 最新 -->
									<br><br><br><br><br><br><br><br><br><br>
						<s:if test="id != 1">
							<form id="form" action="BlogBeforeAction">
								<input type="hidden" name="id" value="<s:property value="id" />" >
								<input type="submit" id="submit" value="前の記事"/>
							</form>
						</s:if>

						<s:if test="id != row ">
						    <form id="form" action="BlogNewAction">
							<input type="submit" id="submit" value="最新"/>
						</form>


						<form id="form" action="BlogNextAction">
							<input type="hidden" name="id" value="<s:property value="id" />" >
							<input type="submit" id="submit" value="次の記事"/>
						</form>
						</s:if>

						<br><br><s:form action="BlogAddAction">
						<input type="hidden" name="articleImg" value="<s:property value="articleImg" />">
						<input type="hidden" name="articleBody" value="<s:property value="articleBody" />">
						<input type="hidden" name="articleTitle" value="<s:property value="articleTitle" />">
						<s:submit value="投稿"></s:submit>
						</s:form>
						</div>

						</div>

			</div>

			<div id="right">
				<div id="archives">
				あーかいぶ

				</div>
			</div>
			</s:if>
		<s:else>
		<p>不正な操作を検出しました。</p>
		<p>Detected an illegal operation</p>
		</s:else>
		</div>
			<s:include value="footer.jsp"/>

	</div>
	<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	<script src="js/masonry.pkgd.min.js"></script>
	<script src="js/imagesloaded.pkgd.min.js"></script>
	<script>
$(function(){
	var $container = $('#masonry');
	$container.imagesLoaded(function(){
		$('.grid').masonry({
			  itemSelector: '.grid-item',
			  columnWidth: '.grid-sizer',
			  percentPosition: true
			});
	});
	});
</script>
</body>
</html>