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
	border: 2px dashed maroon;
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
			<div class="wow fadeInUp" data-wow-delay="0.2s">
				<div id="main">
					<br> <br>
					<div id="" class="wow fadeInUp" data-wow-delay="1s"
						data-wow-duration="1.5s">
						<p>Devil's Manner</p>
						<div id="about">
							<br> 嘘吐きは悪魔のはじまり。ドット絵で繰り広げられる心理戦の熱い本格ブラフゲーム！<br>
							ゲームマーケット2018秋（東京） デビルズマナーは２人用ブラフゲームです。<br>

							プレイヤーは天使と悪魔と契約し、装備をつけて相手よりも強くなることを目指します。 ～基本的なゲームの流れ～<br>
							片方のプレイヤーが裏向きにカードを出して、装備の部位とランク（強さ）を宣言し、 もう片方のプレイヤーが ・ゲット（カードをもらう）<br>
							・スルー（カードを突き返す） ・ダウト（相手の嘘を暴く） の３つのアクションから１つを行います。<br>
<br>
							欲しいカードを手に入れるためには相手にスルーを選ばせる必要があり、<br>
							いかに相手に「スルー」と宣言させるか（そのためには大抵嘘をつかなければならない）、 というのがこのゲームのカギになっています。<br>
<br>
							もちろんそれを逆手にとって、 「ゲット」ばかりする相手に弱い装備を押し付けるのも有効な戦略です。<br>
<br>
							また、「ダウト」で嘘を見破ると自分か相手を天使から悪魔へ堕とすことができる逆転要素もあり、<br>
							最後までゲームの行方が分からないので観戦していても目が離せません。<br>
<br><br><img width="500px" src="pic/devilsintro1.png" />


							今作は全てのカードのイラストから文字のフォントまでドットで描かれており、 緊張感あるこのゲームに一層の臨場感が加えられています。<br>
<br>
							～プレイした人やその他の声～ 「裏カジノの支配人が債務者に持ちかけそうなゲーム」２０代男性<br>
<br>
							「カウンティングが鍵だね。もう１回」２０代ボードゲーマー 「ドット絵がきれいでいいね」年齢不詳女性 「Manners makes<br>
							man」とある英国紳士<br>
						</div>
					</div>
				</div>
			</div>
		</div>
		<s:include value="footer.jsp" />
	</div>
</body>
</html>