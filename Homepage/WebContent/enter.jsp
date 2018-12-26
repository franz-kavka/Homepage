<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Enter</title>
<meta name="description"
	content="A glitch effect using CSS animations and clip-path" />
<meta name="keywords" content="glitch, effect, css, animations" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="./pic/favicon.ico">
<link rel="stylesheet" type="text/css" href="css/base.css" />
<link rel="stylesheet" type="text/css" href="css/demo2.css" />
<script>
	document.documentElement.className = "js";
	var supportsCssVars = function() {
		var e, t = document.createElement("style");
		return t.innerHTML = "root: { --tmp-var: bold; }", document.head
				.appendChild(t),
				e = !!(window.CSS && window.CSS.supports && window.CSS
						.supports("font-weight", "var(--tmp-var)")),
				t.parentNode.removeChild(t), e
	};
	supportsCssVars() || (alert("お使いのブラウザでは表示が崩れる場合があります。"),window.location.href = 'enterOld.jsp');

</script>
<style type="text/css">
::-webkit-scrollbar {
	width: 10px;
}

::-webkit-scrollbar-track {
	background: black;
}

::-webkit-scrollbar-thumb {
	background: #800000;
	border-radius: 10px;
	box-shadow: inset 0 0 0 2px black;
}

@font-face {
	font-family: 'Ferrum';
	src: url('css/k8x12S.ttf') format('truetype');
	font-weight: normal;
	font-style: normal;
}

.glitch {
	position: absolute;
	top: 0;
	left: 0;
	width: 99.99%;
	height: 100%;
	overflow: hidden;
}

.glitch__img {
	position: absolute;
	top: calc(-1 * var(- -gap-vertical));
	left: calc(-1 * var(- -gap-horizontal));
	width: calc(100% + var(- -gap-horizontal)* 2);
	height: 1000px;
	background: url(./pic/dora.png) no-repeat 50% 0;
	background-color: var(- -blend-color-1);
	background-size: contain;
	transform: translate3d(0, 0, 0);
	background-blend-mode: var(- -blend-mode-1);
}

.ti {
	color: #fee4d1;
	text-shadow: 15px 0px 0px #800000;
}

.en {
	color: #ffffff;
	text-shadow: 5px 1px 0px #800000;
}
</style>
</head>
<body class="demo-2 loading">
	<main>
	<div class="content content--fixed">
		<header class="codrops-header">
			<div class="codrops-links">
				<a class="codrops-icon codrops-icon--prev"
					href="https://tympanus.net/Development/3d-particle-explorations/"
					title="Previous Demo"><svg class="icon icon--arrow">
						<use xlink:href="#icon-arrow"></use></svg></a> <a
					class="codrops-icon codrops-icon--drop"
					href="https://tympanus.net/codrops/?p=33498"
					title="Back to the article"><svg class="icon icon--drop">
						<use xlink:href="#icon-drop"></use></svg></a>
			</div>
		</header>
	</div>
	<div class="content">
		<div class="glitch">
			<div class="glitch__img"></div>
			<div class="glitch__img"></div>
			<div class="glitch__img"></div>
			<div class="glitch__img"></div>
			<div class="glitch__img"></div>
		</div>
		<h2 class="content__title">
			<a class="ti" href="HomeAction">ALL<br>DICE.
			</a>
		</h2>
		<h2 class="content__enter">
			<a class="en" href="HomeAction">【PLESS ENTER】</a>
		</h2>
	</div>
	</main>
	<script src="js/imagesloaded.pkgd.min.js"></script>
	<script src="js/demo.js"></script>
</body>
</html>
