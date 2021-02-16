<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



</head>
<body>
	<table>
	
		<c:forEach var="i" items="${alist1}">
			<tr>
				<td><img src="${i.img}" alt="" /></td>
				<td>${i.mutual}</td>
				<td>
					<form action="ClientDibsListDelete.do">
						<input type="submit" value="찜목록해제" onclick="Button1_Click('mutual')"/>
						<input type="hidden" value='${i.mutual}' name="mutual1" />
					</form>
				</td>
			</tr>
		</c:forEach>

	</table>
	

</body>
</html>