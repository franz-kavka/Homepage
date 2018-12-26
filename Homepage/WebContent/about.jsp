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
<title>ALLDICE-ABOUT</title>
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
	font-size: calc(110% + 0.9vw);
}

.blue-bg {
	position: absolute;
	background: url(./pic/renga.png);
	top: 0;
	min-height: 100%;
	width: 99.99%;
	z-index: -1;
	overflow-x: hidden;
}

#margin {
	min-height: 76.5vh;
}

#main {
	display: inline-block;
	text-align: center;
	color: white;
	z-index: 10;
	margin-top: 70px;
	margin-left: 5vw;
	margin-bottom: 50px;
	width: 90%;
	background-color: rgba(0, 0, 0, 0.70);
	border-radius: 5px;
	text-align: center;
	padding: 6vw;
	padding-top: 4vh;
	float: left;
	border:2px dashed maroon;
}

#about {
	font-size: calc(50% + 0.7vw);
}

#thumb img {
	width: 100%;
	object-fit: cover;
}

#about {
	font-size: calc(50% + 0.7vw);
}
</style>
<link rel="stylesheet" type="text/css" href="./css/header.css">
<link rel="stylesheet" type="text/css" href="./css/gallery.css">
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
			data-wow-delay="0.5s">
			<div class="white-bg shadow">
				<a href="HomeAction"><span id="title"><h1>A.B.O.U.T</h1></span></a>
			</div>
			<s:include value="header.jsp" />
		</div>
		<div id="margin">
		<div class="wow fadeInUp" data-wow-delay="0.5s">
			<div id="main">
				<br> <br>
				<div id="" class="wow fadeInUp" data-wow-delay="1.2s"
					data-wow-duration="1.5s">
					<img width="250px" src="pic/prof.jpg" />
					<p>タテヤマトジル</p>
					<div id="about">
						<br> ドット絵でデジタルからアナログ、謎解きまで幅広いゲームを制作しているクリエイター。<br>
						1995年生まれ。岐阜出身。 大学でドット絵と出会い、キャラクターやマップチップを中心にピクセルアートを描き始める。<br>
						2016年冬には処女作である人狼処刑人を制作。 金沢大学を卒業後、ゲームデザイナーを志し上京。<br>
						３月にて行われたゲームマーケット2018大阪では初出展にして「激論勇者」の持ち込み分が完売した。<br>
						縁がありボードゲームデザイナー同期で構成された１８会に所属。<br>
						ゲームマーケット2018秋では２作目となる「Devils Manner」をリリース。
						同時期にサークルエソラゴトが制作した「英勇リクルート」のイラストも担当した。<br>
						フリーランスとして約半年の間イラストや謎作成の仕事を経験した後、 現在は株式会社マグマスタジオに所属している。
						<br><br><br><br>
						<a href="ContactAction">--依頼、お問い合わせはこちら--</a>
					</div>
				</div>
			</div>
			</div>
		</div>
		<s:include value="footer.jsp" />
	</div>
</body>
</html>