<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html xmlns="//www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ALLDICE-GAMES</title>
<meta name="author" content="Alvaro Trigo Lopez" />
<meta name="description" content="pagePiling.js" />
<meta name="keywords"
	content="pile,piling,piling.js,stack,pages,scrolling,stacking,touch,fullpile,scroll,plugin,jquery" />
<meta name="Resource-type" content="Document" />
<link rel="shortcut icon" href="./pic/favicon.ico">
<link rel="stylesheet" type="text/css"
	href="./css/jquery.pagepiling.css" />
<link rel="stylesheet" type="text/css" href="./css/examples.css" />
<script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
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
#section1 h1,#section3 h1 {
	color: white;
	text-align:center;
	position:relative;
	left:40vh;
	font-size: calc(200% + 0.9vh);
}
#section2 h1 {
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
	background:no-repeat left center #222222;
	background-size: auto 100%;
	background-position:3vw;
	}
	#section2{
	background:no-repeat right center #330000;
	background-size: auto 100%;
	background-position:60vw;
	}
	#section3 {
	background:no-repeat left center #140025;
	background-size: auto 100%;

	}
	#section4 {
	background:no-repeat left center black;
	background-size: auto 100%;
	}

/* Defining each section background and styles
	* --------------------------------------- */
#section1 {
	background-image: url(pic/gekiron.png);
}

#section2 {
	background-image: url(pic/devils.jpg);
	padding: 6% 0 0 0;
}

#section3 {
	background-image: url(pic/jinrou.png);
	padding: 6% 0 0 0;
}

#section4 {
	background-image: url(pic/dragon.png);
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
#section1 p,#section3 p{
	color: white;
	text-align:center;
	position:relative;
	left:40vh;
	font-size: calc(100% + 0.9vh);
}
#section2 p{
	color: white;
	text-align:center;
	position:relative;
	right:40vh;
	font-size: calc(100% + 0.9vh);
}
a {
	text-decoration: none;
	color: silver;
}

a:visited {
	color: silver
}
</style>

</head>
<body>
	<ul id="menu">
		<li data-menuanchor="page1" class="active"><a href="#page1">激論勇者</a></li>
		<li data-menuanchor="page2"><a href="#page2">Devil'sManner</a></li>
		<li data-menuanchor="page3"><a href="#page3">人狼処刑人</a></li>
		<li data-menuanchor="page4"><a href="#page4">Comming Soon</a></li>
		<li><a href="HomeAction">HOME</a></li>
	</ul>

	<div id="pagepiling">
		<div class="section" id="section1">
<%-- 			<a href="gekiron.jsp"><span id="max"></span></a> --%>
			<br>
		<br>
		<h1>激 論 勇 者</h1>
		<br>
		<p>カードゲーム</p>
		<p>人数	3～5人</p>
		<p>時間	20～30分</p>
		<br>
		<p>3行で説明1	プレイヤーは無一文のパーティ</p>
		<p>3行で説明2	アイテムや装備を話し合って誰が持つか決める</p>
		<p>3行で説明3	実はプレイヤーのうち１人が魔王</p>
		<br>
		<p>「君にはハゲカツラこそふさわしい」</p><br>
		<p><a href="gekiron.jsp">詳細</a></p>

		</div>
		<div class="section" id="section2">
			<br>
		<h1>Devil's Manner</h1><br>
		<p>カードゲーム</p>
		<p>人数	2人専用</p>
		<p>時間	5～10分</p>
		<br>
		<p>3行で説明1	プレイヤーが契約した天使をより強くすることを目指すゲーム。</p>
		<p>3行で説明2	嘘を見破ると相手を悪魔に堕としたりして戦況を優位に進められる。</p>
		<p>3行で説明3	緊迫した心理戦がこのゲームのポイント。</p>
		<br>
		<p>「嘘吐きは悪魔のはじまり。」</p>
		<br>
		<p><a href="devils.jsp">詳細</a></p>
		</div>
		<div class="section" id="section3">
			<br>
		<br>
		<h1>人狼処刑人</h1>
		<br>
		<p>RPGツクール製ゲーム</p>
		<p>人数	1人専用</p>
		<p>時間	？分</p>
		<br>

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
		<br>
		<p><a href="jinrou.jsp">詳細</a></p>
		</div>
		<div class="section" id="section4">
			<a href="HomeAction"><span id="max"></span></a>
		</div>
	</div>
</body>
</html>
