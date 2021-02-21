<%@page import="DB_DAO.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
	String id1 = request.getParameter("id1");
	String pw1 = request.getParameter("pw1");
	String name = request.getParameter("name1");
	String idstr = null;
	String pwstr = null;
	DAO dao1 = new DAO();
	if (id1 != null) {
		idstr = id1;
	} else if (pw1 != null) {
		pwstr = pw1;
	}
%>

<html>
<head>
<meta charset="UTF-8">
<title>EAT iT - 정보 조회</title>
<link rel="shortcut icon" href="https://blog.kakaocdn.net/dn/k3HEx/btqXXkUK7Mn/C3fJjMv7RIoFzVxa3W9MU1/favicon%20%282%29.ico?attach=1&knm=tfile.ico">

<style>
.logo {
	background-image:
		url(https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FQvMBl%2FbtqWU73BhKO%2F5wu0ncSqNIH9pLpQ6A4Pm1%2Fimg.png);
	background-size: cover;
	cursor: pointer;
	width: 100px;
	height: 50px;
}

table {
	width: 100%;
	height: 100%;
	text-align: center;
	margin: auto;
	border: 3px solid #FFA500;
}

th, td {
	padding: 18px;
}

.title {
	margin-bottom: 19px;
	font-size: 30px;
	line-height: 1;
	font-weight: 900;
	text-align: center;
}

.button {
	width: 100px;
	background-color: #FFA500;
	color: #fff;
	padding: 15px 0;
	text-align: center;
	display: inline-block;
	font-size: 12px;
	margin: 10px;
	border-radius: 10px;
	cursor: pointer;
}
</style>


</head>
<body>
	<table>
		<tr>
			<td><a onClick="window.close();">
					<div class="logo"></div>
			</a></td>
		</tr>
		<tr>
			<td class="title">
				<%
					if(idstr!=null){
						out.println(name+"님께서 찾으신 정보는" + idstr + "입니다");
					}
					if(pwstr!=null){
						out.println("임시비밀번호는<br>"+pwstr+"입니다.<br> 로그인후 꼭 수정해주세요");
					}
				%>
			</td>
		</tr>
		<tr>
			<td><input type="button" class="button" value="닫기"
				onClick="window.close(); opener.close();"></td>
		</tr>
	</table>
</body>
</html>