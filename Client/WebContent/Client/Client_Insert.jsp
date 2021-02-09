<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
* {
	padding: 0;
	margin: 0;
}

header>h2 {
	align-content: center;
	text-align: center;
	border: 1px solid;
	background-color: aqua;
}



.login_logo{
	text-align: center;
	margin: 5px;
	padding: 5px;
}

table{
	margin-left: auto;
	margin-right: auto;
}

td{
	padding: 5px;
	margin: 20px;
}

.button{
	text-align: center;
	padding: 5px;
	margin: 10px;
}

footer {
	text-align: center;
	border: 1px solid;
	background-color: aqua;
}
</style>

</head>
<body>

	<!-- 상단부분 -->
	<header>
		<h2>메뉴바가 들어올 공간입니다.</h2>
	</header>


	<br />
	<br />
	<br />



	<!-- 중간부분 -->
	<section>
		<div class="login_logo">
			<img src="" alt="로고 이미지 크게 들어올곳" />
		</div>
		<form action="ClientInsert.do" method="post">
			<table>
				<tr>
					<td colspan="2" style="text-align: center;"><h3>EAT iT 회원가입</h3></td>
				</tr>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id1" style="width: 162px; border-radius: 5px" required/> </td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pw1" style="width: 162px; border-radius: 5px" required/> </td>
				</tr>
				<tr>
					<td>비밀번호확인</td>
					<td><input type="password" name="pw2" style="width: 162px; border-radius: 5px" required /></td>
				</tr>
				<tr>
					<td>닉네임</td>
					<td><input type="text" name="nick1" style="width: 162px; border-radius: 5px" required/> </td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="irum1" style="width: 162px; border-radius: 5px" required/> </td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td>
						<input type='tel' name='phone1' style="width: 30px; border-radius: 5px" value="010" readonly required/>-
						<input type='tel' name='phone2' style="width: 50px; border-radius: 5px" maxlength="4" required/>- 
						<input type='tel' name='phone3' style="width: 50px; border-radius: 5px" maxlength="4" required/>
					</td>
				</tr>
				<tr>
					<td colspan="2"><input type="checkbox" /> 개인정보수집에 동의하십니까?</td>
				</tr>
			</table>
			<div class="button">
				<input type="submit" value="가입" style="width: 100px; border-radius: 15px"/>
				<input type="button"  value="취소" style="width: 100px; border-radius: 15px" onclick="location.href='/Client/Client/Client_Login.jsp'"/>
			</div>	
		</form>
	</section>


	<br />
	<br />
	<br />



	<!-- 하단부분 -->
	<footer> 여기는 상세정보가 통일되서 들어올 공간입니다. </footer>

</body>
</html>