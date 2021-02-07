<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="ClientUpdate.do">
		<table border="1" style="border-collapse: collapse;">
			<tr>
				<th>아이디</th>
				<th>패스워드</th>
				<th>닉네임</th>
				<th>이름</th>
				<th>폰번호</th>
			</tr>
			<tr>
				<td><input type="text" value="${vo1.id}" name="id1" readonly /></td>
				<td><input type="text" value="${vo1.pw}" name="pw1" required /></td>
				<td><input type="text" value="${vo1.nick}" name="nick1"
					required /></td>
				<td><input type="text" value="${vo1.name}" name="name1"
					required /></td>
				<td><input type="tel" value="010" name="phone1"
					style="width: 50px; border-radius: 5px" maxlength="4" required />-
					<input type='tel' value="${vo1.phone2}" name='phone2'
					style="width: 50px; border-radius: 5px" maxlength="4" required />-
					<input type='tel' value="${vo1.phone3}" name='phone3'
					style="width: 50px; border-radius: 5px" maxlength="4" required /></td>
			</tr>
			<tr>
				<td colspan="5"><input type="submit" value="수정" /></td>
			</tr>
		</table>


	</form>
	<form action="ClientDelete.do">
		<input type="submit" value="삭제" /> <input type="hidden"
			value="${vo1.id}" name="id1" />
	</form>
</body>
</html>