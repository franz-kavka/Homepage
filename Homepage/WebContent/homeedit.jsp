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
<title>HOME-EDIT</title>
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
	/* /*   background-size: cover; */ */
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
	width: 100%;
	margin-top:100px;
	margin-bottom:50px;
}

#twitter {

}

#left {
	float: left;
	background-color: rgba(0, 0, 0, 0.50);
	width: 74%;
	text-align: center;
	margin-left: 2vw;
	margin-right: 0;
	padding: 5.5vw;
}

#news {
	border: 3px inset white;
	background: black;
}

#news p {
	font-size: 40px;
	margin: 0;
	border-bottom: 3px inset white;
}

#left ul {
	list-style-type: square;
}

#left ul li {
	text-align: left;
	font-size: 25px;
}

#article {

}

#article h1 {
	font-size: 40px;
	margin: 0;
	border: 3px inset white;
	background: black;
}

#thumb img {
	width: 99%;
	object-fit: cover;
}

#thumb p {
	font-size: 25px;
}

#right {
	margin-top: 200px;
	margin-right: 10px;
	background-color: rgba(0, 0, 0, 0.50);
	float: right;
	width: 22%;
	padding: 100px 10px 100px 10px;
}
#blog{
display:none;
}
#date{
font-size:20px;
}
</style>
<link rel="stylesheet" type="text/css" href="./css/header.css">
<link rel="stylesheet" type="text/css" href="./css/masonry.css">
<script>
    function submitChk () {
        /* 確認ダイアログ表示 */
        var flag = confirm ( "実行してもよろしいですか？");
        /* send_flg が TRUEなら送信、FALSEなら送信しない */
        return flag;
    }
</script>
</head>
<body>

	<div class="blue-bg">
		<div class="white-bg shadow">

		<span id="title"><h1>!EDITMODE!</h1></span>
</div>
		<s:include value="header.jsp"/>
		<div id="main">
		<s:if test="#session.logined==1">
			<div id="left">
				<div id="news">
					<p>N E W S</p>
					<ul>
						<s:iterator value="session.newsList">
							<li><s:property value="newsBody" /> <s:property value="date" />
								<s:form action="NewsDeleteAction" onsubmit="return submitChk()">
									<s:submit value="削除">
										<input type="hidden" name="id" value="<s:property value="id" />">
									</s:submit>
								</s:form>
							</li>
						</s:iterator>
					</ul>
				</div>
				<br>
				<br>
				<br>
				<br>
				<br>
				<div id="article">
					<h1>I N F O M A T I O N</h1>

					<div class="grid">
						<div class="grid-sizer">

							<div class="grid-item">
								<div id="thumb">
								<s:iterator value="session.top">
								<form action="BlogDeleteAction" onsubmit="return submitChk()">
											<label>
												<img src="<s:property value="articleImg" />">
												NEW
													<p><s:property value="articleTitle" /></p>
													<s:property value="date" />
													<input type="hidden" name="id" value="<s:property value="id" />">
													<s:submit id="blog" value="" />
											</label>
										</form>
										</s:iterator>
								</div>
							</div>
							<s:iterator value="session.blogList">

								<div class="grid-item">
									<div id="thumb">
										<form action="BlogDeleteAction" onsubmit="return submitChk()">
											<label>
												<img src="<s:property value="articleImg" />">
													<p><s:property value="articleTitle" /></p>
													<div id="date"><s:property value="date" /></div>
													<input type="hidden" name="id" value="<s:property value="id" />">
													<s:submit id="blog" value="" />
											</label>
										</form>
									</div>
								</div>
							</s:iterator>
						</div>
					</div>
				</div>
			</div>
			<div id="right">
				<div id="twitter">
					<a class="twitter-timeline" data-width="90%" data-height="70vh"
						data-theme="dark"
						href="https://twitter.com/shitakiri_w?ref_src=twsrc%5Etfw">Tweets
						by shitakiri_w</a>
					<script async src="https://platform.twitter.com/widgets.js"
						charset="utf-8"></script>
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
	var $container = $('#masonry');
	$container.imagesLoaded(function(){
		$('.grid').masonry({
			  itemSelector: '.grid-item',
			  columnWidth: '.grid-sizer',
			  percentPosition: true
			});
	});
	});
</script>
</body>
</html>