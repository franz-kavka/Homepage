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
<title>ALLDICE-SHOP</title>
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
	background-color: #58aff6;
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
	margin-top: 5vw;
	box-sizing:border-box;
	width: 100%;
}


#left {
	float: left;
	display:inline-block;
	background-color: rgba(0, 0, 0, 0.80);
	width:calc(365px);
	min-width:73vw;
	text-align: center;
	margin-left: 2vw;
	margin-right: 0;
	padding: 5.5vw;
	border:2px dashed maroon;
}

#left ul {
	list-style-type: square;
}

#left ul li {
	text-align: left;
}

#shop h1 {
	font-size: calc(100% + 0.8vw);
	margin: 0;
}


#shop p {
	font-size: calc(90% + 0.7vw);
	margin: 0;
	background: black;
}

#thumb img {
	width: 99%;
	object-fit: cover;
}

#thumb {
	font-size: calc(80% + 0.7vw);
}
#thumb p{
	font-size: calc(100% + 0.7vw);
	margin: 0;
	background: black;
}

#right {
	display:inline-block;
	box-sizing:border-box;
	margin-top: 5vw;
	margin-right: 0.5vw;
	background-color: rgba(0, 0, 0, 0.80);
	width: 22%;
	min-width:200px;
	padding: 5vw 1vw 5vw 1vw;
	border:2px dashed maroon;
}

#submit {
	display: inline-block;
	padding: 0.3vw 1vw;
	text-decoration: none;
	color: black;
	border:1px solid white;
	border-radius: 3px;
	transition: .4s;
	background: black;
	color: white;
	font-family: 'Ferrum', serif;
	font-size: calc(50% + 0.7vw);
	margin:10px;
}

#submit:hover {

	background: white;
	color: black;
}

#cartsubmit {
	display: inline-block;
	padding: calc(10% + 0.7vw) calc(10% + 0.7vw);
	text-decoration: none;
	color: black;
	border: 1px solid white;
	border-radius: 3px;
	transition: .4s;
	background: black;
	color: white;
	font-family: 'Ferrum', serif;
	font-size: calc(100% + 0.7vw);
}

#cartsubmit:hover {
	background: white;
	color: black;
}

#totalprice{
font-size: calc(100% + 0.7vw);
}
#margin {
	min-height: 76.5vh;
}
</style>
<link rel="stylesheet" type="text/css" href="./css/header.css">
<link rel="stylesheet" type="text/css" href="./css/masonry.css">
<link rel="stylesheet" href="./css/animate.css">
   <script src="js/jquery-1.10.1.min.js"></script>
   <script src="./js/wow.js"></script>
   <script>
     new WOW().init();
    </script>
</head>
<body>

<s:include value="loading.jsp"/>
	<div class="blue-bg">
	<div  class="wow rotateInDownLeft" data-wow-duration="0.8s" data-wow-delay="0.3s"  >
		<div class="white-bg shadow">
		<a href="HomeAction"><span id="title"><h1>S.H.O.P.P.I.N.G</h1></span></a></div>

		<s:include value="header.jsp"/></div>
		<div id="margin">
		<div id="main">
		<div class="wow fadeInUp" data-wow-delay="0.2s">
			<div id="left">
			<div class="wow fadeInUp">
				<div id="shop">
					<h1>S H O P</h1>
					</div>
					<br>
					<br>
					<div class="wow fadeInUp" data-wow-delay="0.5s">
					<div class="grid">
						<div class="grid-sizer">
							<s:iterator value="session.shopList">
								<s:form action="CartAddAction" method="post">
									<div class="grid-item">
										<div id="thumb">
											<img src="<s:property value="pictureUrl"/>">
												<s:property value="shopIntro" />
												<br><br>
												<p><s:property value="shopTitle" /></p> <br>
												<s:property value="shopPrice" />
												円  <br>個数：<select id="select" name="count">
													<option value="1" selected="selected">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
												</select> <input type="hidden" name="shopTitle"
													value="<s:property value="shopTitle" />" /> <br>
												<input type="hidden" name="shopPrice"
													value="<s:property value="shopPrice" />" />
													 <input
													id="submit" type="submit" value="カートに入れる"> <br>
										</div>
									</div>
								</s:form>
							</s:iterator>
						</div>
					</div>
					</div>
				</div>
			</div>

			<div class="wow fadeInUp" data-wow-delay="0.7s">
			<div id="right">

				<div id="cart">
				<p>C A R T</p>
					<form id="cartform" action="CartAction">

						<input type="hidden" value="Cart" />
						<s:if test="session.amount == null">
							<input type="submit" id="cartsubmit" value="カートが空です" />
						</s:if>
						<s:else>
							<input type="submit" id="cartsubmit"
								value="カートの内容：<s:property value="session.amount"/>" />
								<div id="totalprice">
									合計：
									<s:property value="session.total" />
									円＋送料
								</div>
						</s:else>
					</form>
				</div>
			</div>
			</div>
		</div>
		</div>
		</div>
		<s:include value="footer.jsp"/>

	</div>
	<script src="//code.jquery.com/jquery-1.10.1.min.js"></script>
	<script src="js/masonry.pkgd.min.js"></script>
	<script src="js/imagesloaded.pkgd.min.js"></script>
	<script>
$(function(){
	var $container = $('.grid');
	$container.imagesLoaded(function(){
		$container.masonry({
			  itemSelector: '.grid-item',
			  columnWidth: '.grid-sizer',
			  percentPosition: true
			});
	});
	});
</script>
</body>
</html>