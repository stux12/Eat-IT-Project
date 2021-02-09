<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<table border="2">
		<tr>
			<td>아이디</td>
			<td>이름</td>
		</tr>
		<c:forEach var="i" items="${array}">
		<tr>
			<td>${i.id}</td>
			<td><a href="telSearchone.do?name=${i.name}">${i.name}</a></td>
		</tr>
		</c:forEach>
		<table border="0">
			<tr>
			</tr>
	</table>
	
	
	
	
	
</body>
</html>