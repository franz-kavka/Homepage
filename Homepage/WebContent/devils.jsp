<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ALLDICE-GAMES</title>
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
#section1 h1 {
	color: white;
	text-align: center;
	position: relative;
	right: 40vh;
	font-size: calc(200% + 0.9vh);
}

/* Centered texts in each section
	* --------------------------------------- */
.section {
	text-align: center;
}

/* Backgrounds will cover all the section
	* --------------------------------------- */
#section1 {
	background: no-repeat right center black;
	background-size: auto 100%;
	background-position: 60vw;
}

#section2, #section3, #section4 {
	background: no-repeat center center black;
	background-size: 78% auto;
}

/* Defining each section background and styles
	* --------------------------------------- */
#section1 {
	background-image: url(./pic/devils.jpg);
	color: white;
}

#section2 {
	background-image: url(./pic/devilsintro1.png);
	background-position:bottom;
	padding: 6% 0 0 0;
}

#section3 {
	background-image: url(./pic/devilsintro2.png);
		background-position:bottom;
	padding: 6% 0 0 0;
}

#section4 {
	background-image:
		url(https://i2.wp.com/gamemarket.jp/wp-content/uploads/2018/10/f34963778123aa095ce84cbbda25cbe3.png);
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

#section1 p {
	color: white;
	text-align: center;
	position: relative;
	right: 40vh;
	font-size: calc(100% + 0.9vh);
}

#section2 p, #section3 p {
	color: white;
	text-align: center;
	position: relative;
	left: 40vh;
	font-size: calc(100% + 0.9vh);
}
</style>

</head>
<body>
	<ul id="menu">
		<li data-menuanchor="page1" class="active"><a href="#page1">Title</a></li>
		<li data-menuanchor="page2"><a href="#page2">Intro</a></li>
		<li data-menuanchor="page3"><a href="#page3">Rule</a></li>
		<li><a href="games.jsp#page2">戻る</a></li>
		<li><a href="HomeAction">HOME</a></li>
	</ul>

	<div id="pagepiling">
		<div class="section" id="section1">
			<a href="games.jsp#page2"><span id="max"></span></a> <br> <br>
			<h1>ABOUT</h1>
			<br>
			<p>Devils Manner は、プレイヤーが契約した天使を強化し、力比べをするゲームです。</p>
			<p>プレイヤーと契約したばかりの天使はなにも身に着けていません。</p>
			<br>
			<p>より強い装備を揃え、相手を打ち負かすことで願いを叶えましょう。</p>

			<p>嘘吐きは悪魔のはじまり。ドット絵で繰り広げられる心理戦の熱い本格ブラフゲーム！</p>
			<p>ゲームマーケット2018秋（東京） デビルズマナーは２人用ブラフゲームです。</p>
<br>
			<p> ～基本的なゲームの流れ～</p>
			<p>片方のプレイヤーが裏向きにカードを出して、装備の部位とランク（強さ）を宣言し、</p>
			<p> もう片方のプレイヤーが ・ゲット（カードをもらう）</p>
			<p>・スルー（カードを突き返す） ・ダウト（相手の嘘を暴く） の３つのアクションから１つを行います。</p>
			<p>欲しいカードを手に入れるためには相手にスルーを選ばせる必要があり、</p>
			<p>いかに相手に「スルー」と宣言させるか（そのためには大抵嘘をつかなければならない）、 というのがこのゲームのカギになっています。</p>
			<p> もちろんそれを逆手にとって、 「ゲット」ばかりする相手に弱い装備を押し付けるのも有効な戦略です。</p>
			<p>また、「ダウト」で嘘を見破ると自分か相手を天使から悪魔へ堕とすことができる逆転要素もあり、</p>
			<p>最後までゲームの行方が分からないので観戦していても目が離せません。</p>

		</div>
		<div class="section" id="section2">
			<a href="games.jsp#page2"><span id="max"></span></a>

		</div>
		<div class="section" id="section3">
			<a href="games.jsp#page2"><span id="max"></span></a>
		</div>
		<div class="section" id="section4">
			<a href="games.jsp#page2"><span id="max"></span></a>
		</div>
	</div>
</body>
</html>
