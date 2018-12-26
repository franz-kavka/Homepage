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
<title>ALLDICE-ORDER-CONFIRM</title>
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
	font-size: 20px;
}

.blue-bg {
	position: absolute;
	background: url(./pic/renga.png);
	/*   background-size: cover; */
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
	margin-bottom:50px;
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
table {
	margin: 0 auto;
}

#form{
	border: 2px inset white;
	background:black;
	color:white;
	width:50vw;
	margin:0 auto;
	text-align:left;
}
#contents{
width:30vw;
	margin:0 auto;
	font-size:20px;
	font-family:suns;
}
#submit{
	display: inline-block;
	padding: 0.3em 1em;
	text-decoration: none;
	color: black;
	border: solid 1px black;
	border-radius: 3px;
	transition: .4s;
	background: white;
	font-family: 'Ferrum', serif;
	font-size: 20px;
	float:left;
}

#submit:hover {
	background: black;
	color: white;
}
</style>
<link rel="stylesheet" type="text/css" href="./css/header.css">
<link rel="stylesheet" type="text/css" href="./css/gallery.css">
<link rel="stylesheet" href="./css/lightbox.css">
<script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="./js/lightbox.js" type="text/javascript"></script>
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
		<span id="title"><h1>ORDER</h1></span></div>
		<s:include value="header.jsp"/>
		<div id="main">
		<div id="form">
		<div id="contents">
		<form action="OrderCompleteAction" method="post" onsubmit="return submitChk()">
		以下の内容で注文を確定します。<br>
			<table>
				<s:iterator value="session.CartList" status="st">
					<tr>
						<td><s:property value="shopTitle" /></td>
						<td><s:property value="shopPrice" /><span>円</span></td>
						<td><s:property value="count" /><span>個</span></td>

					</tr>
				</s:iterator>
			</table>
				<div id="totalprice">
					合計：<s:property value="session.total" />円+送料
				</div>
			名前：<s:property value="name"/><br>
			郵便番号：<s:property value="yubin"/><br>
			住所：<s:property value="pref"/><br>
			<s:property value="jusyo"/><br>
			<s:property value="tatemono"/><br>
			アドレス：<s:property value="mail"/><br>
			要望欄：<s:property value="message"/><br>
			支払い方法:<s:property value="payment"/><br>

			<input type="hidden" id="name" name="name"  value="<s:property value="name"/>"/>
			<input type="hidden" name="yubin"  value="<s:property value="yubin"/>"/>
			<input type="hidden" name="pref"  value="<s:property value="pref"/>"/>
			<input type="hidden" name="jusyo"  value="<s:property value="jusyo"/>"/>
			<input type="hidden" name="tatemono"  value="<s:property value="tatemono"/>"/>
			<input type="hidden" name="mail"  value="<s:property value="mail"/>"/>
			<input type="hidden" name="message"  value="<s:property value="message"/>"/>
			<input type="hidden" name="payment"  value="<s:property value="payment"/>"/>
			<input type="submit" id="submit" value="確定">
			</form>
			<button type="button" id="submit" onclick="history.back()">戻る</button>
			</div>
		</div>

	</div>
	<s:include value="footer.jsp"/>
	</div>
</body>
</html>