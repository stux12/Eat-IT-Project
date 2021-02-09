<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="Client/Client_Login.jsp">로그인</a><br />
	
	
	<br /><br /><br />
	
	
	회원정보보기 및 업데이트 및 삭제
	<form action="ClientOneView.do" method="get">
		<input type="hidden" name="id1" value="admin"/>
		<input type="submit" value="보자" />
	</form><br>
	
	
	<a href="/Client/MainPage.jsp">로그아웃</a>
	
	<br />
	
	<form action="ClientAllView.do">
		<input type="submit" value="전체보기"  />
	</form>
	
	
</body>
</html>