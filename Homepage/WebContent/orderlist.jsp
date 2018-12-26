<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="shortcut icon" href="./pic/favicon.ico">
<title>ADMIN-ORDERLIST</title>
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
	/*   background-size: cover; */
	top: 0;
	min-height: 100%;
	width: 99.99%;
	z-index: -1;
	overflow-x: hidden;
}

#margin {
	min-height: 76.8vh;
}

#main {
	display: inline-block;
	text-align: center;
	color: white;
	z-index: 10;
	margin: 2vw;
	margin-top: 100px;
	margin-bottom: 50px;
	width: 80%;
	background-color: rgba(0, 0, 0, 0.50);
	padding: 6vw;
}

#thumb img {
	width: 100%;
	object-fit: cover;
}

#gallery, #news {
	border: 2px inset white;
	background: black;
	text-align: center;
}

table {
	font-family: suns;
	margin: 0 auto;
	border: 2px inset white;
	background: black;
}

td {
	border-top: solid 1px white;
	border-right: inset 1px white;
}
</style>
<link rel="stylesheet" type="text/css" href="./css/header.css">
<link rel="stylesheet" href="./css/lightbox.css">

<script>
	function submitChk() {
		/* 確認ダイアログ表示 */
		var flag = confirm("実行してもよろしいですか？");
		/* send_flg が TRUEなら送信、FALSEなら送信しない */
		return flag;
	}
</script>
</head>
<body>
	<div class="blue-bg">
		<div class="white-bg shadow">
			<span id="title"><h1>!!!ADMIN!!!</h1></span>
		</div>
		<s:include value="header.jsp" />
		<div id="margin">
			<div id="main">
			<s:if test="#session.logined==1">
				<table>
					<tr>
						<td>ID</td>
						<td>注文番号</td>
						<td>注文日</td>
						<td>名前</td>
						<td>郵便番号</td>
						<td>都道府県</td>
						<td>住所</td>
						<td>建物名</td>
						<td>メールアドレス</td>
						<td>要望欄</td>
						<td>タイトル</td>
						<td>値段</td>
						<td>個数</td>
						<td>発想方法</td>
						<td>発送ボタン</td>
						<td>削除ボタン</td>
						<s:iterator value="session.orderList" status="st">
							<tr>
								<td><s:property value="id" /></td>
								<td><s:property value="orderNumber" /></td>
								<td><s:property value="date" /></td>
								<td><s:property value="name" /></td>
								<td><s:property value="yubin" /></td>
								<td><s:property value="pref" /></td>
								<td><s:property value="jusyo" /></td>
								<td><s:property value="tatemono" /></td>
								<td><s:property value="mail" /></td>
								<td><s:property value="message" /></td>
								<td><s:property value="shopTitle" /></td>
								<td><s:property value="shopPrice" /><span>円</span></td>
								<td><s:property value="count" /><span>個</span></td>
								<td><s:property value="payment" /></td>
								<td><form action="OrderUpdateAction"
										onsubmit="return submitChk()">
										<s:if test="shipflg == 0">
											<input type="hidden" name="id"
												value="<s:property value="id"/>">
										未発送
											<input type="submit" id="submit" value="発送完了" />
										</s:if>
										<s:else>
										発送済み
										</s:else>
									</form></td>
								<td><form action="OrderDeleteAction"
										onsubmit="return submitChk()">
										<input type="hidden" name="id"
											value="<s:property value="id"/>"> <input
											type="submit" id="submit" value="削除" />
									</form></td>
							</tr>
						</s:iterator>
				</table>
				</s:if>
			</div>
			<s:else>
		<p>不正な操作を検出しました。</p>
		<p>Detected an illegal operation</p>
		</s:else>
		</div>
		<s:include value="footer.jsp" />
	</div>
</body>
</html>