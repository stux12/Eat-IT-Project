<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="Telinsert.do">
		<table border="1">
			<tr>
				<td>사번 : <input type="number" name="id1" /></td>
			</tr>
			<tr>
				<td>이름 : <input type="text" name="name1" /></td>
			</tr>
			<tr> 
				<td>전화번호 : <input type="text" name="tel1" /></td>
			</tr>
			<tr>
				<td>입사일 : <input type="date" name="d1" placeholder/></td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="insert~" />
					<input type="reset" value="취소" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>