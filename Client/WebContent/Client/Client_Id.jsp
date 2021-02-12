<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 메뉴바 -->
<link href="/Client/CSS/Style_Client.css?after" rel="stylesheet" type="text/css">

<!-- section -->
<style>
.Login_Logo {
	text-align: center;
	margin: 5px;
	padding: 5px;
}

.Login_Logo img {
	width: 400px;
	height: 300px;
	margin-bottom: -100px;
}

.Table1 {
	margin-left: auto;
	margin-right: auto;
}

.Table1 td {
	padding: 5px;
	margin: 20px;
}

.FindId { 
	text-align: center;
}

.Irum1 input{
	width: 162px; 
	border-radius: 5px;
}

.Tel1 input:nth-child(1){
	width: 30px; 
	border-radius: 5px;
}
.Tel1 input:nth-child(n+2){
	width: 50px;
	border-radius: 5px;
}

.ButtonDiv {
	text-align: center;
	padding: 5px;
	margin: 10px;
}

.ButtonDiv input{
	width: 100px; 
	border-radius: 15px;
}

footer {
	text-align: center;
	border: 1px solid;
	background-color: aqua;
}
</style>

<!-- footer -->


<!-- script -->
<script>
	function Button1_Click(){
		location.href='../Client/Client_Login.jsp';
	}
</script>

</head>
<body>

	<!-- 상단부분 -->
	<header>
		<div class="menubar">
			<div class="logo">
				<a href="/Client/MainPage.jsp"></a>
			</div>
		</div>
	</header>

	<!-- 중간부분 -->
	<section>
		<div class="Login_Logo">
			<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FQvMBl%2FbtqWU73BhKO%2F5wu0ncSqNIH9pLpQ6A4Pm1%2Fimg.png" alt="로고 이미지 크게 들어올곳" />
		</div>
		<form action="ClientFindId.do" method="post">
			<table class="Table1">
				<tr>
					<td class="FindId" colspan="2"><h3>EAT iT 아이디 찾기</h3></td>
				</tr>
				<tr>
					<td class="Irum">이름</td>
					<td class="Irum1"><input type="text" name="irum1" required /></td>
				</tr>
				<tr>
					<td class="Tel">전화번호</td>
					<td class="Tel1">
						<input type='tel' name='phone1' value="010" readonly />- 
						<input type='tel' name='phone2' required maxlength="4" />-
						<input type='tel' name='phone3' required maxlength="4"/>
					</td>
				</tr>
			</table>
			<div class="ButtonDiv">
				<input type="submit" value="찾기"/> 
				<input type="button" value="취소" onclick="Button1_Click()" />
			</div>
		</form>
	</section>

	<br />
	<br />
	<br />

	<!-- 하단부분 -->
	<footer> 여기는 상세정보가 통일되서 들어올 공간입니다. </footer>

</body>
</html>