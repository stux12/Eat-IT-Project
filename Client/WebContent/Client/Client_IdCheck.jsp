<%@page import="DB_DAO.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%  //id값을 받아와서 id중복확인
 	String id1= request.getParameter("id1");
	DAO dao1 = new DAO();
	boolean check = dao1.Client_IdCheck(id1);
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
* {
   margin:0px;
   padding:0px;
   list-style:none;
   text-decoration:none;
   border-collapse:collapse;
}
.Logo{
	margin-top: -80px;
	text-align: center;
}
.Logo img{
	width: 400px;
	height: 300px;
	margin-bottom: -50px;
}
	
section{
	text-align: center;
}
</style>

</head>
<body >

	<div class="Logo">
		<img src="/Client/img/EATit.png" alt="" />
	</div>
	
	<section>
		<b><%=id1%></b>
		<%
			if(check){
				out.println("는 이미 사용중인 아이디 입니다.<p>");
			}else{
				out.println("는 사용가능한 아이디 입니다.<p>");
			}
		%>
		<br />
		<a href="#" onclick="self.close()">닫기</a>
	</section>
</body>
</html>