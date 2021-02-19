<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EAT iT - 관리자 페이지</title>
<link rel="shortcut icon" href="https://blog.kakaocdn.net/dn/k3HEx/btqXXkUK7Mn/C3fJjMv7RIoFzVxa3W9MU1/favicon%20%282%29.ico?attach=1&knm=tfile.ico">
<link href="/EAT-iT/CSS/Style_Client.css?after" rel="stylesheet"
	type="text/css">

<style>
.Login_Logo img {
	width: 400px;
	height: 300px;
	margin-bottom: -100px;
}

.Login_Logo {
	text-align: center;
	margin: 5px;
	padding: 5px;
}

.Table1 {
	margin-left: auto;
	margin-right: auto;
}

.Table1 td {
	padding: 5px;
	margin: 20px;
	border: 1px solid;
}

.Join {
	text-align: center;
}

.Join h3 {
	margin-top: -5px;
	margin-bottom: -5px;
}

.Id1 input, .Irum1 input {
	width: 162px;
	border-radius: 5px;
}

.Id1, .Irum1 {
	width: 150px;
}

.ButtonDiv {
	text-align: center;
	padding: 5px;
	margin: 10px;
}

.ButtonDiv input {
	width: 150px;
	border-radius: 15px;
}


</style>

</head>
<body>
	<!-- 상단부분 -->
	<header>
		<div class="menubar">
			<div class="logo">
				<a href="/EAT-iT/main.jsp"></a>
			</div>
		</div>
	</header>



	<!-- 중간부분 -->
	<section>
		<div class="Login_Logo">
			<img
				src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FQvMBl%2FbtqWU73BhKO%2F5wu0ncSqNIH9pLpQ6A4Pm1%2Fimg.png"
				alt="로고 이미지 크게 들어올곳" />
		</div>
		<table class="Table1">
			<tr>
				<td class="Join" colspan="4"><h3>EAT iT 정보 전체조회</h3></td>
			</tr>
			<tr>
				<td class="Count">NO.</td>
				<td class="Id">아이디</td>
				<td class="irum">이름</td>
				<td class="out">BAN</td>
			</tr>
			<c:forEach var="i" items="${alist1}">
				<c:set var="count" value="1" />
				<tr>
					<td class="Count1">${count}.</td>
					<td class="Id1">${i.id}</td>
					<td class="Irum1">${i.name}</td>
					<td class="Button"><input type="button" value="BAN"
						onclick="location.href='ClientDeleteManager.do?id1=${i.id}'" /></td>
				</tr>
				<c:set var="count" value="${count + 1}" />
			</c:forEach>
			<tr>
			</tr>
		</table>
		<div class="ButtonDiv">
			<input type="button" value="이전으로 돌아가기"
				onclick="location.href='/EAT-iT/main.jsp'" />
		</div>
	</section>

	<br />
	<br />
	<br />

	<!-- 하단부분 -->
	<%@ include file="/mainframe/footer.jsp"%>
</body>
</html>