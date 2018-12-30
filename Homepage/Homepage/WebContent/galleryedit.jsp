<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "//www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="shortcut icon" href="./pic/favicon.ico">
<title>GALLERY-EDIT</title>
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
	min-height:100%;
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
	margin-bottom: 50px;
	margin-left: 5vw;
	width: 90%;
	background-color: rgba(0, 0, 0, 0.50);
	text-align: center;
	padding: 6vw;
	padding-top: 4vh;
	float:left;
}

#thumb img {
	width: 100%;
	object-fit: cover;
}

#delete {
	display: none;
}
</style>
<link rel="stylesheet" type="text/css" href="./css/header.css">
<link rel="stylesheet" type="text/css" href="./css/gallery.css">
<link rel="stylesheet" href="./css/lightbox.css">
<script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script>
    function submitChk () {
        /* 確認ダイアログ表示 */
        var flag = confirm ( "削除してもよろしいですか？");
        /* send_flg が TRUEなら送信、FALSEなら送信しない */
        return flag;
    }
</script>
</head>
<body>
<div class="blue-bg">
		<div class="white-bg shadow">
		<span id="title"><h1>!!!ADMIN!!!</h1></span></div>
	<s:include value="header.jsp"/>
		<div id="main">
		<s:if test="#session.logined==1">
			<h1>!EDITMODE!</h1>
			<form action="GalleryAddAction">
				<label>画像URL</label> <input type="text" name="gallery" value="" />
				<s:submit id="delete" value="登録" />

			</form>
			<br>
			<br>
			<div class="grid">
				<div class="grid-sizer">

					<s:iterator value="session.galleryList">

						<div class="grid-item">
							<div id="thumb">
								<form action="GalleryDeleteAction" onsubmit="return submitChk()">
									<label> <img src="<s:property value="galleryUrl" />"
										alt="" width="350" /> <input type="hidden" name="id"
										value="<s:property value="id" />"> <s:submit
											id="delete" value="" />
									</label>
								</form>
							</div>
						</div>
					</s:iterator>
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