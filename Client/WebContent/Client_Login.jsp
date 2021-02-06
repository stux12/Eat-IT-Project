<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
* {
	padding: 0;
	margin: 0;
}

header>h2 {
	align-content: center;
	text-align: center;
	border: 1px solid;
	background-color: aqua;
}

.login_logo, .login_id, .login_pw, .login_button, .password_join {
	text-align: center;
	margin: 5px;
	padding: 5px;
}

hr {
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

footer {
	text-align: center;
	border: 1px solid;
	background-color: aqua;
}
</style>

</head>
<body>

	<!-- 상단부분 -->
	<header>
		<h2>메뉴바가 들어올 공간입니다.</h2>
	</header>


	<br />
	<br />
	<br />
	<br />
	<br />
	<br />


	<!-- 중간부분 -->
	<section>
		<div class="login_logo">
			<img src="" alt="로고 이미지 크게 들어올곳" />
		</div>
		<hr>
		<form action="LoginCheck.do">
			<div class="login_id">
				<input type="text" name="id1" placeholder="아이디"
					style="width: 300px; border-radius: 5px" />
			</div>
			<div class="login_pw">
				<input type="password" name="pw1" placeholder="비밀번호"
					style="width: 300px; border-radius: 5px" />
			</div>
			<div class="login_button">
				<input type="submit" value="로그인"
					style="width: 150px; height: 50px; border-radius: 15px" /> 
				<input type="button" value="회원가입"
					style="width: 150px; height: 50px; border-radius: 15px"
					onclick="location.href='Client_Insert.jsp'" />
			</div>
			<div class="password_join">
				<a href="Client_Password.jsp">EAT iT 암호를 잃어버리셨나요??</a>
			</div>
		</form>
	</section>


	<br />
	<br />
	<br />
	<br />
	<br />
	<br />


	<!-- 하단부분 -->
	<footer> 여기는 상세정보가 통일되서 들어올 공간입니다. </footer>

</body>
</html>