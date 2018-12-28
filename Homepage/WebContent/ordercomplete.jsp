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
<title>Attention</title>
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
	margin-left: 5vw;
	margin-bottom: 2vh;
	width: 79%;
	background-color: rgba(0, 0, 0, 0.70);
	border-radius: 5px;
	text-align: center;
	padding: 6vw;
	padding-top: 4vh;
	float: left;
	border: 2px dashed maroon;
}

#margin {
	min-height: 76.5vh;
}
</style>
<link rel="stylesheet" type="text/css" href="./css/header.css">
</head>
<body>
	<div class="blue-bg">
		<div class="white-bg shadow">
			<span id="title"><h1>!ATTENTION!</h1></span>
		</div>
		<s:include value="header.jsp" />
		<div id="margin">
			<div id="main">
				<h1>
					ご注文が確定しました。<br> 自動送信メールが送信されているので、迷惑メールフォルダなどに入っていないかご確認ください。
				</h1>

			</div>
		</div>
		<s:include value="footer.jsp" />
	</div>
</body>
</html>