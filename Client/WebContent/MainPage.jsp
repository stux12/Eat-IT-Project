<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>eat it : 테마별 맛집 추천</title>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<link rel="stylesheet" type="text/css" href="/Client/CSS/Style_Main.css?after">

</head>
<body>
  <!-- 로그인되었을때  -->
	<c:if test="${(id1!=null&&id1!='admin') ? true : false}">
		<form action="ClientOneView.do" method="post">
			<input type="submit" value="보자" />
		</form>
		<form action="LogOut.do">
			<input type="submit" value="로그아웃" /> <br />
		</form>
		<br>
	</c:if>

<!-- 로그인 안되었을때 -->
	<c:if test="${(id1==null) ? true : false}">
		<a href="/Client/Client/Client_Login.jsp">로그인</a>
		<br />
	</c:if>

<!-- admin 관리자일 경우 -->
	<c:if test="${id1=='admin'}">
		<form action="ClientAllView.do" method="get">
			<input type="submit" value="전체보기" />
		</form>
		<form action="LogOut.do">
			<input type="submit" value="로그아웃" /> <br />
		</form>
	</c:if>
</body>
</html>