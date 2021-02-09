<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 메뉴바 -->
<link href="../CSS/Style.css" rel="stylesheet" type="text/css">

<!-- section -->
<style>
.login_logo{
	text-align: center;
	margin: 5px;
	padding: 5px;
}

.login_logo img{
	width: 400px;
	height: 300px;
	margin-bottom: -100px;
}

.Table1{
	margin-left: auto;
	margin-right: auto;
}

.Table1 td{
	padding: 5px;
	margin: 20px;
}

.Insert{
	text-align: center;
}

.Id1 input, .Pw1 input, .PwCheck1 input, .Nick1 input, .Irum1 input{
	width: 162px; 
	border-radius: 5px
}

.Tel1 input:nth-child(1){
	width: 30px; 
	border-radius: 5px;
}
.Tel1 input:nth-child(n+2){
	width: 50px;
	border-radius: 5px;
}

.Check1 input{
	zoom:1.2;
}

.ButtonDiv{
	text-align: center;
	padding: 5px;
	margin: 10px;
}

.ButtonDiv input{
	width: 100px; 
	border-radius: 15px
}

footer {
	text-align: center;
	border: 1px solid;
	background-color: aqua;
}
</style>

<!-- footer -->


<!-- script -->
<script>

	function IdCheck() {
		var IdCheck = document.getElementById("IdCheck");
		
		location.href="ClientIdCheck.do";
	}
	
	function Button1_Click() {
		location.href='../Client/Client_Login.jsp';
	}
	
</script>


</head>
<body>

	<!-- 상단부분 -->
	<header>
		<div class="menubar">
			<div class="logo">
				<a href="../MainPage.jsp"></a>
			</div>
		</div>
	</header>

	<!-- 중간부분 -->
	<section>
		<div class="login_logo">
			<img src="../img/EATit.png" alt="로고 이미지 크게 들어올곳" />
		</div>
		<form action="ClientInsert.do" method="post">
			<table class="Table1">
				<tr>
					<td class="Insert" colspan="2"><h3>EAT iT 회원가입</h3></td>
				</tr>
				<tr>
					<td class="Id">아이디</td>
					<td class="Id1"><input type="text" name="id1" pattern="^([a-z0-9_]){6,50}$"/> </td>
					<td class="IdCheck"><input id="IdCheck" type="button" value="중복확인" onclick="IdCheck()"/></td>
				</tr>
				<tr>
					<td class="Pw">비밀번호</td>
					<td class="Pw1"><input type="password" name="pw1" pattern="^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%^&*()_-+=[]{}~?:;`|/]).{6,50}$"/> </td>
				</tr>
				<tr>
					<td class="PwCheck">비밀번호확인</td>
					<td class="PwCheck1"><input type="password" name="pw2" pattern="^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%^&*()_-+=[]{}~?:;`|/]).{6,50}$" /></td>
				</tr>
				<tr>
					<td class="Nick">닉네임</td>
					<td class="Nick1"><input type="text" name="nick1" pattern="^(가-힣a-zA-Z0-9)"/> </td>
				</tr>
				<tr>
					<td class="Irum">이름</td>
					<td class="Irum1"><input type="text" name="irum1" pattern="(가-힣a-zA-Z0-9)"/> </td>
				</tr>
				<tr>
					<td class="Tel">전화번호</td>
					<td class="Tel1">
						<input type='tel' name='phone1' value="010" readonly/>-
						<input type='tel' name='phone2' minlength="4" maxlength="4" pattern="[0-9]+" />- 
						<input type='tel' name='phone3' minlength="4" maxlength="4" pattern="[0-9]+" />
					</td>
				</tr>
				<tr>
					<td class="Check1" colspan="2"><input type="checkbox"/> 개인 정보 수집에 동의 하십니까?</td>
				</tr>
			</table>
			<div class="ButtonDiv">
				<input type="submit" value="가입" />
				<input type="button" value="취소" onclick="Button1_Click()"/>
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