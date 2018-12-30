<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript"
	src="//code.jquery.com/jquery-3.1.0.min.js"></script>
<style type="text/css">
#menusubmit {
	font-family: 'Ferrum', serif;
	font-size: 50px;
	position: relative;
	display: inline-block;
	padding: 0.2em 0.7em;
	text-decoration: none;
	border: solid 1px #cc0000;
	color: white;
	background: black;
	transition: .4s;
}

#menusubmit:hover {
	background: #cc0000;
	color: black;
}

</style>
</head>
<body>
	<br>
	<br>
	<div class="content">
		<ul class="nav">
			<li><span class="block"><a href="#">MENU</a></span>
				<ul>
					<li><a href="HomeAction">HOME</a></li>
					<li><a href="ShopAction">SHOP</a>
						<ul class="left">
							<li><a href="ShopAction">SHOP</a></li>
							<li><a href="CartAction">CART</a></li>
						</ul></li>
					<li><a href="GameAction">GAMES</a>
					<ul class="left">
							<li><a href="GameAction#page1">激論勇者</a></li>
							<li><a href="GameAction#page2">Devil'sManner</a></li>
							<li><a href="GameAction#page3">人狼処刑人</a></li>
						</ul></li>
					<li><a href="GalleryAction">GALLERY</a>
					<li><a href="AboutAction">ABOUT</a>
					<li><a href="ContactAction">CONTACT</a>
				</ul></li>
		</ul>
	</div>