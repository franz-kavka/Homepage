<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "//www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="shortcut icon" href="./pic/favicon.ico">
<title>ALLDICE-GALLERY</title>
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
	font-size: calc(100% + 1.2vw);
	margin: 0;
	padding: 2vw;
}

.blue-bg {
	position: absolute;
	background: url(./pic/renga.png);
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
	text-align: center;
	color: white;
	z-index: 10;
	margin-top: 100px;
	margin-left: 5vw;
	margin-bottom: 2vh;
	width: 90%;
	background-color: rgba(0, 0, 0, 0.70);
	border-radius: 5px;
	text-align: center;
	padding: 6vw;
	padding-top: 4vh;
	float: left;
	border: 2px dashed maroon;

}

#main h1 {
	padding: 50px;
}

#thumb img {
	width: 100%;
	object-fit: cover;
}
</style>
<link rel="stylesheet" type="text/css" href="./css/header.css">
<link rel="stylesheet" type="text/css" href="./css/gallery.css">
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
	<s:include value="loading.jsp" />
	<div class="blue-bg">

		<div class="wow rotateInDownLeft" data-wow-duration="0.8s"
			data-wow-delay="0.3s">
			<div class="white-bg shadow">
				<a href="HomeAction"><span id="title"><h1>G.A.L.L.E.R.Y</h1></span></a>
			</div>
			<s:include value="header.jsp" />
		</div>
		<div id="margin">
			<div id="main">
				<div class="wow fadeInUp" data-wow-delay="0.5s">
					<p>G A L L E R Y</p>
				</div>
				<br> <br>
				<div class="wow fadeInUp" data-wow-delay="1s">
					<div class="grid">
						<div class="grid-sizer">
							<s:iterator value="session.galleryList">
								<div class="grid-item">
									<div id="thumb">
										<a href="<s:property value="galleryUrl" />" rel="lightbox">
											<img src="<s:property value="galleryUrl" />" alt=""
											width="350" />
										</a>
									</div>
								</div>
							</s:iterator>
						</div>
					</div>

				</div>
			</div>
		</div>
		<s:include value="footer.jsp" />
	</div>
	<script src="//code.jquery.com/jquery-1.10.1.min.js"></script>
	<script src="js/masonry.pkgd.min.js"></script>
	<script src="js/imagesloaded.pkgd.min.js"></script>
	<script>
		$(function() {
			var $container = $('.grid');
			$container.imagesLoaded(function() {
				$container.masonry({
					itemSelector : '.grid-item',
					columnWidth : '.grid-sizer',
					percentPosition : true
				});
			});
		});
	</script>
</body>
</html>