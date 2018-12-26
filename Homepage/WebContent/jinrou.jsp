<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>GAMES</title>
<meta name="author" content="Alvaro Trigo Lopez" />
<meta name="description" content="pagePiling.js plugin by Alvaro Trigo." />
<meta name="keywords"
	content="pile,piling,piling.js,stack,pages,scrolling,stacking,touch,fullpile,scroll,plugin,jquery" />
<meta name="Resource-type" content="Document" />
<link rel="shortcut icon" href="./pic/favicon.ico">
<link rel="stylesheet" type="text/css"
	href="./css/jquery.pagepiling.css" />
<link rel="stylesheet" type="text/css" href="./css/examples.css" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="./js/jquery.pagepiling.min.js"></script>
<script type="text/javascript">
		var deleteLog = false;

		$(document).ready(function() {
	    	$('#pagepiling').pagepiling({
	    		menu: '#menu',
	    		anchors: ['page1', 'page2', 'page3', 'page4'],
	    		navigation: {
		            'textColor': '#f2f2f2',
		            'bulletsColor': '#ccc',
		            'position': 'right',
		            'tooltips': ['Page 1', 'Page 2', 'Page 3', 'Page 4']
		        }
			});
	    });
    </script>
<style>
@font-face {
	font-family: 'Ferrum';
	src: url('./css/k8x12S.ttf') format('truetype');
	font-weight: normal;
	font-style: normal;
}
/* Style for our header texts
	* --------------------------------------- */
#section1 h1{
	color: white;
	text-align:center;
	position:relative;
	right:40vh;
	font-size: calc(200% + 0.9vh);
}

/* Centered texts in each section
	* --------------------------------------- */
.section {
	text-align: center;
}

/* Backgrounds will cover all the section
	* --------------------------------------- */
	#section1{
	background:no-repeat right center #140025;
	background-size: auto 100%;
	background-position:39vw;
	}
#section2, #section3, #section4 {
	background:no-repeat center center black;
	background-size: auto 100%;
}

/* Defining each section background and styles
	* --------------------------------------- */
#section1 {
	background-image: url(./pic/jinrou.png) ;
	color:white;
}

#section2 {
	background-image: url(./pic/jinrouintro.png);
	padding: 6% 0 0 0;
}

#section3 {
	background-image: url(./pic/devilsintro2.png);
	padding: 6% 0 0 0;
}

#section4 {
	background-image: url(https://i2.wp.com/gamemarket.jp/wp-content/uploads/2018/10/f34963778123aa095ce84cbbda25cbe3.png);
	padding: 6% 0 0 0;
}

#menu li a {
	color: #fff;
	border: 2px inset white;
	font-size: 25px;
	-webkit-border-radius: 0px;
	border-radius: 0px;
}

#max {
	position: absolute;
	top: 0;
	left: 0;
	height: 100%;
	width: 100%;
	padding: 0;
	margin: 0;
}

body {
	font-family: 'Ferrum', serif;
}
#section1 p{
color: white;
	text-align:center;
	position:relative;
	right:40vh;
	font-size: calc(100% + 0.9vh);
}
#section2 p,#section3 p{
	color: white;
	text-align:center;
	position:relative;
	left:40vh;
	font-size: calc(100% + 0.9vh);
}
</style>

</head>
<body>
	<ul id="menu">
		<li data-menuanchor="page1" class="active"><a href="#page1">Title</a></li>
		<li data-menuanchor="page2"><a href="#page2">Intro</a></li>
		<li><a href="games.jsp#page3">戻る</a></li>
		<li><a href="HomeAction">HOME</a></li>
	</ul>

	<div id="pagepiling">
		<div class="section" id="section1">
			<a href="games.jsp#page1"><span id="max"></span></a>
			<br>
		<br>
		<h1>STORY</h1>
		<p>有識者の間では、突如現れた人狼の存在が密かに問題となっていた。</p>
		<p>人狼は毎晩、化け物の姿へと変貌して人を襲撃する。</p>
		<br>
		<p>主人公、灰根芳樹は人狼処刑人として刑務所に潜む人狼を処刑する任務が与えられた。</p>
		<p>しかしそこで容疑者として挙げられていたのは、芳樹の幼馴染だった。</p>
		​<br>
		<p>果たして市民を救うことはできるのか？</p>
		<p>紛れている人狼は一体誰なのか？</p>
		<br>
		<p>人狼との戦いが、始まる。</p>
	</div>
		<div class="section" id="section2">
			<a href="games.jsp#page1"><span id="max"></span></a>
		</div>
	</div>
</body>
</html>