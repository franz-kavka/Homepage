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
<title>ALLDICE-CART</title>
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
	min-height: 100%;
}

body {
	margin: 0;
	font-family: 'Ferrum', serif;
}

p {
	font-size: calc(70% + 0.7vw);
}

.attention {
	font-size: calc(110% + 0.7vw);
}

#margin {
	min-height: 76.8vh;
}

#main {
	display: inline-block;
	text-align: center;
	color: white;
	z-index: 10;
	margin-top: 100px;
	margin-bottom: 10px;
	width: 100%;
}

#left {
	background-color: rgba(0, 0, 0, 0.70);
	width: 70%;
	margin: 0 auto;
	padding: 9vw;
	display: inline-block;
	border: 2px dashed maroon;
}

#cart {
	text-align: center;
	border: 3px outset white;
	background: black;
	width: 95%;
	margin-right: 0.1vw;
	display: inline-block;
}

.title {
	font-size: calc(110% + 0.7vw);
	margin: 0;
	border-bottom: 3px outset white;
	font-family: 'Ferrum', serif;
}

#form1 table {
	margin: 0 auto;
	width: 40%;
	table-layout: fixed;
}

#cart table {
	margin: 0 auto;
	width: 50%;
	table-layout: fixed;
}

#inform {
	width: 30vw;
	display: inline-block;
}

#message {
	width: 30vw;
	height: 10vw;
}

a {
	font-size: calc(50% + 0.7vw);
}
#cart th{
font-weight: normal;
	font-size: calc(80% + 1vw);
}

#cart td {
	font-weight: normal;
	font-size: calc(80% + 1vw);
	width: 35vw;
}

#form1 th {
	font-weight: normal;
	font-size: calc(80% + 0.7vw);
	border: outset 2px white;
}

#form1 td {
	font-weight: normal;
	font-size: calc(80% + 0.7 vw);
	width: 40vw;
}

#totalprice {
	font-size: calc(70% + 0.9vw);
}

.tab1 {
	width: 20vw;
}

.error {
	text-decoration: underline;
}

#submit {
	display: inline-block;
	padding: 0.3em 1em;
	text-decoration: none;
	color: black;
	border: 1px solid white;
	border-radius: 3px;
	transition: .4s;
	background: black;
	color: white;
	font-family: 'Ferrum', serif;
	font-size: calc(50% + 0.7vw);
	margin: 10px;
}

#submit:hover {
	background: white;
	color: black;
}
</style>
<link rel="stylesheet" type="text/css" href="./css/header.css">
<link rel="stylesheet" href="./css/animate.css">
<script src="js/jquery-1.10.1.min.js"></script>
<script src="./js/wow.js"></script>
<script>
	new WOW().init();
</script>
</head>
<body>
	<s:include value="loadingFast.jsp" />
	<div class="blue-bg">
		<div class="wow rotateInDownLeft" data-wow-duration="0.8s"
			data-wow-delay="0.3s">
			<div class="white-bg shadow">
				<span id="title"><h1>C.A.R.T.L.I.S.T</h1></span>
			</div>

			<s:include value="header.jsp" />
		</div>
		<div id="margin">
			<div id="main">
				<div id="left">
					<s:if test="session.amount != null">
						<div id="cart">
							<p class="title">C A R T</p>
							<br> <br>
							<table>
								<tr>
									<th>商品名</th>
									<th>値段</th>
									<th>購入個数</th>
									<th>取消</th>
								</tr>
								<s:iterator value="session.CartList" status="st">
									<tr>
										<td><s:property value="shopTitle" /></td>
										<td><s:property value="shopPrice" /><span>円</span></td>
										<td><s:property value="count" /><span>個</span></td>
										<td><form action="CartDeleteItAction">
												<input type="hidden" name="it"
													value="<s:property value="#st.index"/>"> <input
													type="submit" id="submit" value="削除" />
											</form></td>
									</tr>
								</s:iterator>
							</table>
							<form action="CartDeleteAction">
								<input type="submit" id="submit" value="一括削除" />
							</form>
							<br>
							<div id="totalprice">
								合計：
								<s:property value="session.total" />
								円+送料500円
							</div>
							<br> <br>
							<form action="ShopAction">
								<input type="submit" id="submit" value="買い物に戻る" />
							</form>
						</div>
						<br>
						<br>
						<div id="cart">
							<p class="title">F O R M</p>
							<form action="OrderConfirmAction" id="form1" method="post">
								<p>購入に進む場合は下のフォームに入力してください。*は必須項目です</p>
								<!-- 	エラーメッセージ -->
								<s:if test="errorFlg">
									<s:if test="%{!nameErrorMessageList.size()==0}">
										<div class="error">
											<s:iterator value="nameErrorMessageList">
												<s:property />
												<br>
											</s:iterator>
										</div>
									</s:if>
									<s:if test="%{!yubinErrorMessageList.size()==0}">
										<div class="error">
											<s:iterator value="yubinErrorMessageList">
												<s:property />
												<br>
											</s:iterator>
										</div>
									</s:if>
									<s:if test="%{!emailErrorMessageList.size()==0}">
										<div class="error">
											<s:iterator value="emailErrorMessageList">
												<s:property />
												<br>
											</s:iterator>
										</div>
									</s:if>
								</s:if>
								<table>
									<tbody>
										<tr>
											<th class="tab1">氏名<span>*</span></th>
											<td class="tab2"><s:textfield id="inform" name="name"
													title="全角で入力してください" value="%{name}" required="required" /></td>
										</tr>
										<tr>
											<th>郵便番号<span>*</span></th>
											<td><span id="email"><s:textfield id="inform"
														name="yubin" value="〒%{yubinNum}" required="required" /></span></td>
										</tr>
										<tr>
											<th>都道府県<span>*</span></th>
											<td><select id="inform" name="pref" class="selectable">
													<optgroup label="---">
														<option value="">---</option>
													</optgroup>
													<optgroup label="北海道">
														<option value="北海道">北海道</option>
													</optgroup>
													<optgroup label="東北">
														<option value="青森県">青森県</option>
														<option value="岩手県">岩手県</option>
														<option value="宮城県">宮城県</option>
														<option value="秋田県">秋田県</option>
														<option value="山形県">山形県</option>
														<option value="福島県">福島県</option>
													</optgroup>
													<optgroup label="関東">
														<option value="東京都">東京都</option>
														<option value="茨城県">茨城県</option>
														<option value="栃木県">栃木県</option>
														<option value="群馬県">群馬県</option>
														<option value="埼玉県">埼玉県</option>
														<option value="千葉県">千葉県</option>
														<option value="神奈川県">神奈川県</option>
													</optgroup>
													<optgroup label="北陸">
														<option value="富山県">富山県</option>
														<option value="石川県">石川県</option>
														<option value="福井県">福井県</option>
													</optgroup>
													<optgroup label="甲信越">
														<option value="新潟県">新潟県</option>
														<option value="山梨県">山梨県</option>
														<option value="長野県">長野県</option>
													</optgroup>
													<optgroup label="東海">
														<option value="岐阜県">岐阜県</option>
														<option value="静岡県">静岡県</option>
														<option value="愛知県">愛知県</option>
														<option value="三重県">三重県</option>
													</optgroup>
													<optgroup label="関西">
														<option value="滋賀県">滋賀県</option>
														<option value="京都府">京都府</option>
														<option value="大阪府">大阪府</option>
														<option value="兵庫県">兵庫県</option>
														<option value="奈良県">奈良県</option>
														<option value="和歌山県">和歌山県</option>
													</optgroup>
													<optgroup label="中四国">
														<option value="鳥取県">鳥取県</option>
														<option value="島根県">島根県</option>
														<option value="岡山県">岡山県</option>
														<option value="広島県">広島県</option>
														<option value="山口県">山口県</option>
														<option value="徳島県">徳島県</option>
														<option value="香川県">香川県</option>
														<option value="愛媛県">愛媛県</option>
														<option value="高知県">高知県</option>
													</optgroup>
													<optgroup label="九州">
														<option value="福岡県">福岡県</option>
														<option value="佐賀県">佐賀県</option>
														<option value="長崎県">長崎県</option>
														<option value="熊本県">熊本県</option>
														<option value="大分県">大分県</option>
														<option value="宮崎県">宮崎県</option>
														<option value="鹿児島県">鹿児島県</option>
													</optgroup>
													<optgroup label="沖縄">
														<option value="沖縄県">沖縄県</option>
													</optgroup>
											</select></td>
										</tr>
										<tr>
											<th>住所<span>*</span></th>
											<td><span id="email"><s:textfield id="inform"
														name="jusyo" value="%{jusyo}" required="required" /></span></td>
										</tr>
										<tr>
											<th>建物名</th>
											<td><span id="email"><s:textfield id="inform"
														value="%{tatemono}" name="tatemono" /></span></td>
										</tr>
										<tr>
											<th>Mail<span>*</span></th>
											<td><span id="email"><s:textfield id="inform"
														name="mail" value="%{mail}" required="required" /> </span></td>
										</tr>
										<tr>
											<th>要望欄</th>
											<td><s:textarea name="message" id="message"
													value="%{message}" /></td>
										</tr>
										<tr>
											<th>支払い方法</th>
											<td><label><input type="radio" name="payment"
													value="代金引換" required>代金引換</label> <label><input
													type="radio" name="payment" value="銀行振込" required>銀行振込</label></td>
										</tr>
									</tbody>
								</table>
								<br> <br> <input type="submit" value="購入する"
									class="button" id="submit" />
							</form>
						</div>
					</s:if>
					<s:else>
						<br>
						<br>
						<h1>カートが空です</h1>
						<br>
						<form action="ShopAction">
								<input type="submit" id="submit" value="買い物に戻る" />
							</form>
					</s:else>
				</div>
			</div>
		</div>
		<s:include value="footer.jsp" />
	</div>
</body>
</html>