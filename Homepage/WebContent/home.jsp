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
<title>ALLDICE</title>
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

.blue-bg {
	position: absolute;
	background: url(./pic/magmadragon.png);
	top: 0;
	box-sizing: border-box;
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
	box-sizing: border-box;
	width: 100%;
}

#left {
	float: left;
	display: inline-block;
	background-color: rgba(0, 0, 0, 0.80);
	width: 365px;
	min-width: 73vw;
	text-align: center;
	margin-left: 2vw;
	margin-right: 0;
	padding: 5.5vw;
	border: 2px dashed maroon;
}

#news {
	border: 2px outset white;
	background: black;
}

#news p {
	font-size: calc(110% + 0.7vw);
	margin: 0;
	border-bottom: 2px outset white;
}

#left ul {
	list-style-type: square;
}

#left ul li {
	text-align: left;
	font-size: calc(80% + 0.7vw);
}

#article {

}

#article #title {
	font-size: calc(110% + 0.7vw);
	margin: 0;
	border: 2px outset white;
	background: black;
}

#thumb img {
	width: 99%;
	object-fit: cover;
}

#titles p {
	font-size: calc(70% + 0.8vw);
}

#titles:hover {
	color: gray;
}

#right {
	display: inline-block;
	box-sizing: border-box;
	margin-top: 5vw;
	margin-right: 0.5vw;
	background-color: rgba(0, 0, 0, 0.80);
	width: 22%;
	min-width: 200px;
	padding: 5vw 1vw 5vw 1vw;
	min-width: 300px;
	border: 2px dashed maroon;
}

#blog {
	display: none;
}

#date {
	font-size: calc(60% + 0.7vw);
}

.textSplitLoad {
	display: none;
}

.split {
	visibility: hidden;
	overflow: auto;
	max-height: 10.1vw;
	word-break: break-all;
	white-space: normal;
}

#submit {
	background: none;
	border: none;
	font-family: 'Ferrum', serif;
	color: white;
	font-size: calc(100% + 0.7vw);
}

#form {
	display: inline;
	margin: auto;
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
	<s:include value="loading.jsp" />
	<div class="blue-bg">
		<div class="wow rotateInDownLeft" data-wow-duration="0.8s"
			data-wow-delay="0.7s">
			<div class="white-bg shadow">
				<a href="HomeAction"><span id="title"><h1>A.L.L.D.I.C.E</h1></span></a>
			</div>
			<s:include value="header.jsp" />
		</div>
		<div id="main">
			<div id="left">
				<div class="wow fadeInUp" data-wow-delay="1s">
					<div id="news">
						<p>N E W S</p>
						<ul class="split">
							<s:iterator value="session.newsList">
								<li><s:property value="newsBody" /> <s:property
										value="date" /></li>
							</s:iterator>
						</ul>
					</div>
				</div>
				<br> <br>
				<div class="wow fadeInUp" data-wow-delay="1.5s">
					<div id="article">
						<div id="title">I N F O M A T I O N</div>

						<div class="grid">
							<div class="grid-sizer">
								<s:if test="session.blogList.size() <9">
									<div class="grid-item grid-item">
										<div id="thumb">
											<s:iterator value="session.blogList" begin="0" end="0">
												<form action="BlogAction">
													<label>
														<div id="titles">
															<img src="<s:property value="articleImg" />"> !NEW!
															<p>
																<s:property value="articleTitle" />
															</p>
															<s:property value="date" />
															<input type="hidden" name="id"
																value="<s:property value="id" />">
															<s:submit id="blog" value="" />
														</div>
													</label>
												</form>
											</s:iterator>
										</div>
									</div>
									<s:iterator value="session.blogList" begin="1"
										end="session.blogList.size()-1">

										<div class="grid-item">
											<div id="thumb">
												<form action="BlogAction">
													<label>
														<div id="titles">
															<img src="<s:property value="articleImg" />">
															<p>
																<s:property value="articleTitle" />
															</p>
															<div id="date">
																<s:property value="date" />
															</div>
															<input type="hidden" name="id"
																value="<s:property value="id" />">
															<s:submit id="blog" value="" />
														</div>
													</label>
												</form>
											</div>
										</div>
									</s:iterator>
								</s:if>
								<s:elseif test="page == 0 || page==1">
									<div class="grid-item grid-item">
										<div id="thumb">

											<s:iterator value="session.blogList" begin="0" end="0">
												<form action="BlogAction">
													<label>
														<div id="titles">
															<img src="<s:property value="articleImg" />"> !NEW!
															<p>
																<s:property value="articleTitle" />
															</p>
															<div id="date">
																<s:property value="date" />
															</div>
															<input type="hidden" name="id"
																value="<s:property value="id" />">
															<s:submit id="blog" value="" />
														</div>
													</label>
												</form>
											</s:iterator>
										</div>
									</div>
									<s:iterator value="session.blogList" begin="1" end="8">

										<div class="grid-item">
											<div id="thumb">
												<form action="BlogAction">
													<label>
														<div id="titles">
															<img src="<s:property value="articleImg" />">
															<p>
																<s:property value="articleTitle" />
															</p>
															<div id="date">
																<s:property value="date" />
															</div>
															<input type="hidden" name="id"
																value="<s:property value="id" />">
															<s:submit id="blog" value="" />
														</div>
													</label>
												</form>
											</div>
										</div>
									</s:iterator>
								</s:elseif>
								<s:elseif test="page==((session.blogList.size()+9-1)/9)">
									<s:if test="(session.blogList.size()%9)==0">
										<s:iterator value="session.blogList" begin="(page-1)*9"
											end="(page)*9+#session.blogList.size()%9-1">
											<div class="grid-item">
												<div id="thumb">
													<form action="BlogAction">
														<label>
															<div id="titles">
																<img src="<s:property value="articleImg" />">
																<p>
																	<s:property value="articleTitle" />
																</p>
																<div id="date">
																	<s:property value="date" />
																</div>
																<input type="hidden" name="id"
																	value="<s:property value="id" />">
																<s:submit id="blog" value="" />
															</div>
														</label>
													</form>
												</div>
											</div>
										</s:iterator>
									</s:if>
									<s:iterator value="session.blogList" begin="(page-1)*9"
										end="(page-1)*9+#session.blogList.size()%9-1">
										<div class="grid-item">
											<div id="thumb">
												<form action="BlogAction">
													<label>
														<div id="titles">
															<img src="<s:property value="articleImg" />">
															<p>
																<s:property value="articleTitle" />
															</p>
															<div id="date">
																<s:property value="date" />
															</div>
															<input type="hidden" name="id"
																value="<s:property value="id" />">
															<s:submit id="blog" value="" />
														</div>
													</label>
												</form>
											</div>
										</div>
									</s:iterator>
								</s:elseif>
								<s:else>
									<s:iterator value="session.blogList" begin="(page-1)*9"
										end="page*9-1">
										<div class="grid-item">
											<div id="thumb">
												<form action="BlogAction">
													<label> <img
														src="<s:property value="articleImg" />">
														<p>
															<s:property value="articleTitle" />
														</p>
														<div id="date">
															<s:property value="date" />
														</div> <input type="hidden" name="id"
														value="<s:property value="id" />"> <s:submit
															id="blog" value="" />
													</label>
												</form>
											</div>
										</div>
									</s:iterator>
								</s:else>
							</div>
						</div>
						<s:iterator status="page"
							value="((#session.blogList.size()+9-1)/9).{ #this }">
							<form id="form" action="HomeAction">
								<input type="hidden" name="page"
									value="<s:property value="#page.count" />"> <input
									type="submit" id="submit"
									value="<s:property value="#page.count" />" />
							</form>
						</s:iterator>
						<br>(
						<s:property value='page' />
						ページ目)
					</div>
				</div>
			</div>
			<div class="wow fadeInUp" data-wow-delay="1.2s">
				<div id="right">

					<div id="twitter">
						<a class="twitter-timeline" data-width="95%" data-height="70vh"
							data-theme="dark"
							href="https://twitter.com/shitakiri_w?ref_src=twsrc%5Etfw">Tweets
							by shitakiri_w</a>
						<script async src="https://platform.twitter.com/widgets.js"
							charset="utf-8"></script>
					</div>
				</div>
			</div>
		</div>

		<s:include value="footer2.jsp" />
	</div>
	<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
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
	<script>
		$(function() {
			var setElm = $('.split'), delaySpeed = 30, fadeSpeed = 0;

			setText = setElm.html();

			setElm.css({
				visibility : 'visible'
			}).children().addBack().contents().each(
					function() {
						var elmThis = $(this);
						if (this.nodeType == 3) {
							var $this = $(this);
							$this.replaceWith($this.text().replace(/(\S)/g,
									'<span class="textSplitLoad">$&</span>'));
						}
					});
			$(window).load(function() {
				splitLength = $('.textSplitLoad').length;
				setElm.find('.textSplitLoad').each(function(i) {
					splitThis = $(this);
					splitTxt = splitThis.text();
					splitThis.delay(i * (delaySpeed)).css({
						display : 'inline-block',
						opacity : '0'
					}).animate({
						opacity : '1'
					}, fadeSpeed);
				});
				setTimeout(function() {
					setElm.html(setText);
				}, splitLength * delaySpeed + fadeSpeed);
			});
		});
	</script>
</body>
</html>