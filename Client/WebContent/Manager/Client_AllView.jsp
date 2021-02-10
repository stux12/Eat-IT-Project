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
.Logo img{
	width: 100px;
	height: 75px;
	margin-left: -8px;
	margin-top: -1px;
}

.Login_Logo img {
	width: 400px;
	height: 300px;
	margin-top: -85px;
	margin-bottom: -100px;
}

.Login_Logo {
	text-align: center;
	margin: 5px;
	padding: 5px;
}

.Table1{
	margin-left: auto;
	margin-right: auto;
}

.Table1 td{
	padding: 5px;
	margin: 20px;
	border: 1px solid;
}

.Join{
	text-align: center;
}

.Join h3{
	margin-top: -5px;
	margin-bottom: -5px;
}

.Id1 input, .Irum1 input{
	width: 162px; 
	border-radius: 5px;
}

.Id1 , .Irum1{
	width: 150px;
}

.ButtonDiv{
	text-align: center;
	padding: 5px;
	margin: 10px;
}

.ButtonDiv input{
	width: 150px; 
	border-radius: 15px;
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
		<div class="menubar">
			<div class="Logo">
				<a href="/Client/MainPage.jsp"><img src="img/EATit.png" alt="로고 이미지 크게 들어올곳" /></a>
			</div>
		</div>
	</header>



	<!-- 중간부분 -->
	<section>
		<div class="Login_Logo">
			<img src="img/EATit.png" alt="로고 이미지 크게 들어올곳" />
		</div>
		<table class="Table1">
			<tr>
				<td class="Join" colspan="2"><h3>EAT iT 정보 전체조회</h3></td>
			</tr>
			<tr>
				<td class="Id">아이디</td>
				<td class="irum">이름</td>
			</tr>
			<c:forEach var="i" items="${alist1}">
				<tr>
					<td class="Id1"><a href="ClientDeleteManager.do?id1=${i.id}">${i.id}</a></td>
					<td class="Irum1">${i.name}</td>
				</tr>
			</c:forEach>
				<tr>
				</tr>
		</table>
		<div class="ButtonDiv">
			<input type="button" value="이전으로 돌아가기" onclick="location.href='/Client/MainPage.jsp'" />
		</div>
	</section>
	
	<br />
	<br />
	<br />
	
	<!-- 하단부분 -->
	<footer> 여기는 상세정보가 통일되서 들어올 공간입니다. </footer>
</body>
</html>