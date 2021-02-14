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

	<script>
	
		function Button1_Click(str) {
			if(str=="JJim"){
				
				var id1 ='<%= application.getAttribute("id1")%>';
				<%-- var mutual1 = '<%= request.getAttribute("mutual1")%>';--%>
				if(id1=='null'){
					alert('로그인부터 해주세용~~');
				}else{
					// 가게정보를 mutual값으로 변경하면됨
				 	url="Client/Client_DibsListInsert.jsp?id1="+id1+"&mutual1=호가양꼬치";
					window.open(url,"post","width=500,height=300"); 
				}
			}
		}
	
	</script>

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
	
	
	
	
	
	<form action="#">
		<input type="button" value="찜찜찜찜찜해물찜" onclick="Button1_Click('JJim');" />
	</form>
	
	
	
	
	<form action="ClientDibsListView.do">
		<input type="submit" value="보러가장~" />
	</form>
	
	
</body>
</html>