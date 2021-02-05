<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Spring에서는 ojdbc.jar를 톰캣에 넣어줘야함  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
	MVC2 하는방법
	1) input => servlet => output
	2) input, output을 한파일로 하는 방법
	3) 모두 하나의 servlet으로 처리 하는 방법 ======> 나중에는 이걸로 해야함!!!!!!!!!!!!!!!!!!!!!!
	4) servlet을 여러개 만들어서 즉, controller를 여러개 만들어서 처리 하는 방법
	 -->
	<h1>사원 전체보기</h1>
	<table border="2">
		<tr>
			<td colspan="4">
				<form action="getAllInfo.do">
					<input type="submit" value="가자" />
				</form>
			</td>
		</tr>
		
		 
	<!-- output부분(출력만 하면됨) -->
		<tr>
			<td>사번</td>
			<td>이름</td>
			<td>전화</td>
			<td>입사일</td>
		</tr>
		<c:forEach var="i" items="${alist1}">
		<tr>
			<td>${i.id}</td>
			<td><a href="telSearchone.do?name=${i.name}">${i.name}</a></td>
			<td>${i.tel}</td>
			<td>${i.d}</td>
		</tr>
		</c:forEach>
		<table border="0">
			<tr>
				<td><a href="sawonInsert.jsp">[입력]</a></td>
				<td><a href="getAllInfo.do">[모두보기]</a></td>
			</tr>
		</table>
	</table>
	


</body>
</html>