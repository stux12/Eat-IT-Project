<%@page import="DB_DAO.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% 
	String id1= request.getParameter("id1");
	String mutual1 = request.getParameter("mutual1");
	String likes1 = "1";
	DAO dao1 = new DAO();
	boolean overlapcheck = dao1.Client_OverlapCheck(id1,mutual1,likes1);
	boolean check = false;
	if(!overlapcheck){
		check = dao1.Client_DibsListInsert(id1, mutual1, likes1);	
	}
%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		if(check){
			out.println("찜목록에 넣었습니다.");
		}else{
			out.println("찜목록에 이미 들어있습니다.");
			
		}
	%>
	<%= id1 %>
	<%= mutual1 %>
</body>
</html>