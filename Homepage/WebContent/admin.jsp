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
<title>ADMIN</title>
<style type="text/css">
@font-face {
	font-family: 'Ferrum';
	src: url('css/k8x12S.ttf') format('truetype');
	font-weight: normal;
	font-style: normal;
}
.blue-bg {
	position: absolute;
	background: url(./pic/renga.png);
	background-color: #58aff6;
	top: 0;
	width: 99.99%;
	z-index: -1;
	overflow-x: hidden;
	min-height:100%;
}

body {
	margin: 0;
	font-family: 'Ferrum', serif;
}

p {
	font-size: 30px;
}

#main {
	display: inline-block;
	text-align: center;
	color: white;
	z-index: 10;
	margin-top: 100px;
	margin-left: 5vw;
	margin-bottom:50px;
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

#gallery, #news {
	border: 2px inset white;
	background: black;
	text-align: center;
}

table {
	margin: 0 auto;
}
#news{
padding:50px;
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
		<span id="title"><h1>!!!ADMIN!!!</h1></span></div>
		<s:include value="header.jsp"/>
		<div id="main">
		<s:if test="#session.logined==1">
			<div id="news">
				ギャラリー
				<form action="GalleryEditAction" onsubmit="return submitChk()">
					<input type="submit" id="delete" value="EDITMODE" />
				</form>
			</div>
			<div id="news">
				一行ニュース<br>
				<form action="NewsAddAction" onsubmit="return submitChk()">
					<label>ニュース内容</label>
					<textarea name="news" rows="1" cols="100"></textarea>
					<input type="submit" id="delete" value="登録" />
				</form>
				<form action="HomeEditAction" onsubmit="return submitChk()">
					<input type="submit" id="delete" value="編集" />
				</form>
			</div>

			<div id="news">
				Info追加
				<form action="BlogPreviewAction" onsubmit="return submitChk()">
					<table>
						<tr>
							<td><label>タイトル:</label></td>
							<td><textarea name="articleTitle" value="" rows="1" cols="100"></textarea></td>
						</tr>
						<tr>
							<td><label>本文:</label></td>
							<td><textarea name="articleBody" cols="100" rows="10" id="articleBody"></textarea></td>
						</tr>
						<tr>
							<td><label>画像url:</label></td>
							<td><textarea name="articleImg" cols="100" rows="1" id="articleImg"></textarea></td>
						</tr>
					</table>
					<input type="submit" id="delete" value="プレビュー" />
				</form>


			</div>
			<div id="news">
				商品追加
				<form action="HomeAction" onsubmit="return submitChk()">
					<table>
						<tr>
							<td><label>商品名:</label></td>
							<td><input type="text" name="itemName" value="" /></td>
						</tr>
						<tr>
							<td><label>値段:</label></td>
							<td><input type="text" name="itemPrice" value="" /></td>
						</tr>
						<tr>
							<td><label>個数:</label></td>
							<td><input type="text" name="itemStock" value="" /></td>
						</tr>
						<tr>
							<td><label>紹介:</label></td>
							<td><input type="text" name="itemStock" value="" /></td>
						</tr>
						<tr>
							<td><label>画像url:</label></td>
							<td><input type="text" name="itemStock" value="" /></td>
						</tr>
					</table>
					<input type="submit" id="delete" value="登録" />
				</form>


			</div>
			<div id="news">
				注文確認
				<form action="OrderListAction" >
					<input type="submit" id="delete" value="確認" />
				</form>
			</div>
			<div id="news">
				IDPASS変更
				<form action="ChangePassAction" >
				<table>
						<tr>
							<td><label>新ID</label></td>
							<td><input type="text" name="newId" value="" /></td>
						</tr>
						<tr>
							<td><label>新PASS:</label></td>
							<td><input type="text" name="newPass" value="" /></td>
						</tr>
						</table>
					<input type="submit" id="delete" value="確認" />
				</form>
			</div>
		</s:if>
		<s:else>
		<p>不正な操作を検出しました。</p>
		<p>Detected an illegal operation</p>
		</s:else>
		</div>
		<s:include value="footer.jsp"/>
	</div>
</body>
</html>