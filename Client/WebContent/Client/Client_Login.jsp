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
.Login_Logo img{
	width: 400px;
	height: 300px;
	margin-bottom: -100px;
}

.Line{
	margin-top: 0.5em;
	margin-bottom: 0.5em;
	margin-left: auto;
	margin-right: auto;
	border: 2px;
	text-align: center;
	width: 300px;
	height: 10px;
	box-shadow: 0 10px 10px -10px aqua inset;
}

.Login_IdPw input{
	width: 300px; 
	border-radius: 5px;
	margin: 10px;
}

.Login_Button input{
	width: 150px;
	height: 50px; 
	border-radius: 15px;
}

.Login_Logo, .Login_IdPw, .Login_Button, .Id_Join, .PassWord_Join {
	text-align: center;
	margin: 5px;
	padding: 5px;
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
	function Button1_Click() {
		location.href='/Client/Client/Client_Insert.jsp';
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
		<hr class="Line">
		<form action="LoginCheck.do" method="post">
			<div class="Login_IdPw">
				<input type="text" name="id1" placeholder="아이디"/><br>
				<input type="password" name="pw1" placeholder="비밀번호"/>
			</div>
			<div class="Login_Button">
				<input type="submit" value="로그인"/> 
				<input type="button" value="회원가입" onclick="Button1_Click()" />
			</div>
			<div class="Id_Join">
				<a href="/Client/Client/Client_Id.jsp">EAT iT 아이디를 잃어버리셨나요??</a>
			</div>
			<div class="PassWord_Join">
				<a href="/Client/Client/Client_Password.jsp">아니면 EAT iT 암호를 잃어버리셨나요??</a>
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