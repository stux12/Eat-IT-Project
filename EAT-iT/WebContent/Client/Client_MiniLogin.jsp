<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EAT iT - 로그인ㄴ</title>
<link rel="shortcut icon" href="https://blog.kakaocdn.net/dn/k3HEx/btqXXkUK7Mn/C3fJjMv7RIoFzVxa3W9MU1/favicon%20%282%29.ico?attach=1&knm=tfile.ico">
</head>
<body>

	<form name="User_Input" action="LoginCheck.do" method="post">
			<table class="Table1">
				<tr>
					<td class="Login_Check" colspan="">
							<%  
							String check = (String) request.getAttribute("check");
							if (check == "false") {	
								%><pre class="Login_CheckColor"><%
								out.print("해당 정보는 없는 정보입니다!! \n확인후 다시 로그인해주세요.");
								%></pre>
								<% } %>
						</td>
				</tr>
				<tr class="Login_IdPw">
					<td><input type="text" name="id1" id="id1"
						placeholder="EAT iT ID" onkeyup="IdKeyUp();" /></td>
				</tr>
				<tr>
					<td id="Id_No"></td>
				</tr>
				<tr class="Login_IdPw">
					<td><input type="password" name="pw1" id="pw1"
						placeholder="암호" onkeyup="PwKeyUp();" onkeypress="PwKeyUp();" /></td>
				</tr>
				<tr>
					<td id="Pw_No"></td>
				</tr>
				<tr class="Login_Button">
					<td><input type="button" value="로그인" onclick="Login();" /></td>
				</tr>
				<tr class="PassWord_Join">
					<td><a href="/EAT-iT/Client/Client_Password.jsp">EAT iT
							ID또는 암호를 잊어버리셨나요??</a></td>
				</tr>
				<tr class="Clinet_Insert">
					<td><a href="/EAT-iT/Client/Client_Insert.jsp">EAT iT ID가
							아직 없으신가요??</a></td>
				</tr>
			</table>
		</form>


</body>
</html>