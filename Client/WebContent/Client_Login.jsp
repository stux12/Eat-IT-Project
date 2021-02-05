<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

.login_button{
	width: 300px;
	background-color: #E5FFCC;
	border: none;
	color: #fff;
	padding: 15px 0;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	margin: 2px;
	cursor: pointer;
	border-radius:10px;
}


hr {
	border: 2px;
	align-content: center;
	width: 300px;
	height: 10px;
	border: 0;
	box-shadow: 0 10px 10px -10px lime inset;
}
</style>

</head>
<body>

	<!-- 상단부분 -->
	<header> 메뉴바가 들어올 공간입니다. </header>

	<!-- 중간부분 -->
	<section>
		<div class="login_logo">
			<img src="로고 이미지 크게 들어올곳" />
		</div>
		<div class="login_text">회원로그인</div>
		<hr>
		<form action="LoginCheck.do">
			<div class="login_id">
				<input type="text" placeholder="아이디" />
			</div>
			<div class="login_pw">
				<input type="password" placeholder="비밀번호" />
			</div>
			<div class="login_button">
				<input type="submit" value="Login" />
			</div>
		</form>
	</section>


	<!-- 하단부분 -->
	<footer> 여기는 상세정보가 통일되서 들어올 공간입니다. </footer>

</body>
</html>