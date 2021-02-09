<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="../CSS/Style.css" rel="stylesheet" type="text/css">

<style>
.login_logo img {
	width: 400px;
	height: 300px;
	margin-bottom: -100px;
}
</style>

</head>
<body>
	<!-- 상단부분 -->
	<header>
		<div class="menubar">
			<div class="logo">
				<a href="#"></a>
			</div>
		</div>
	</header>



	<!-- 중간부분 -->
	<section>
		<div class="login_logo">
			<img src="../img/EATit.png" alt="로고 이미지 크게 들어올곳" />
		</div>
		<table border="2">
			<tr>
				<td>아이디</td>
				<td>이름</td>
			</tr>
			<c:forEach var="i" items="${alist1}">
				<tr>
					<td><a href="ClientDeleteManager.do?id1=${i.id}">${i.id}</a></td>
					<td>${i.name}</td>
				</tr>
			</c:forEach>
			<table border="0">
				<tr>
				</tr>
			</table>

			<input type="button" value="이전으로 돌아가기"
				onclick="location.href='../MainPage.jsp'" />
			</section>
</body>
</html>