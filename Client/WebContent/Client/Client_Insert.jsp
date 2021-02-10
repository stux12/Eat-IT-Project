<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="http://code.jquery.com/jquery-1.9.1.js"></script>

<!-- 메뉴바 -->
<link href="../CSS/Style.css" rel="stylesheet" type="text/css">

<!-- section -->
<style>
.Login_Logo{
	text-align: center;
	margin: 5px;
	padding: 5px;
}

.Login_Logo img{
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
	
	function Button1_Click(str) {
		if(str=="Insert"){
			var p1 = document.getElementById('pwc1').value;
			var p2 = document.getElementById('pwc2').value;
			if($(check1).prop("checked")){
				if(p1 != p2){
					alert("비밀번호가 일치하지 않습니다.");
				}else{
					Form.action="ClientInsert.do";
				}
			}else{
				url="Client_CheckBox.jsp";
				window.open(url,"post","width=500,height=300");
			}
			
		}
		if(str=="NoInsert"){
			location.href="../Client/Client_Login.jsp";
		}
		if(str=="IdCheck"){
			var id1 = document.getElementById('id1').value;
			if(id1.length<6){
				alert("영문소문자, 숫자포함 6자리이상 필요합니다");
			}else{
				url="Client_IdCheck.jsp?id1="+id1;
				window.open(url,"post","width=500,height=300");
			}
		}
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
		<div class="Login_Logo">
			<img src="../img/EATit.png" alt="로고 이미지 크게 들어올곳" />
		</div>
		<form method="post" name="Form">
			<table class="Table1">
				<tr>
					<td class="Insert" colspan="3"><h3>EAT iT 회원가입</h3></td>
				</tr>
				<tr></tr>
				<tr>
					<td class="Id">아이디</td>
					<td class="Id1"><input type="text" name="id1" id="id1" maxlength="12"
									pattern="^([a-z0-9]){6,12}$" title="영문소문자, 숫자포함 6자리이상 필요합니다"/> </td>
					<td><input type="button" value="중복확인" onclick="Button1_Click('IdCheck');"/></td>
				</tr>
				<tr>
					<td class="Pw">비밀번호</td>
					<td class="Pw1"><input type="password" name="pw1" id="pwc1" maxlength="30"
									pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,30}$" title="8자이상 하나의 문자 숫자 특수기호를 포함해야합니다"/> </td>
				</tr>
				<tr>
					<td class="PwCheck">비밀번호확인</td>
					<td class="PwCheck1"><input type="password" name="pw2" id=pwc2 maxlength="30"
										pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,30}$" title="8자이상 하나의 문자 숫자 특수기호를 포함해야합니다"/></td>
				</tr>
				<tr>
					<td class="Nick">닉네임</td>
					<td class="Nick1"><input type="text" name="nick1" required/> </td>
				</tr>
				<tr>
					<td class="Irum">이름</td>
					<td class="Irum1"><input type="text" name="irum1" maxlength="30"
									pattern="^([a-zA-Z가-힣]){0,30}$" title="특수기호 숫자는 불가능합니다."/> </td>
				</tr>
				<tr>
					<td class="Tel">전화번호</td>
					<td class="Tel1">
						<input type='tel' name='phone1' value="010" readonly/>-
						<input type='tel' name='phone2'  pattern="^([0-9]){4,4}$" maxlength="4" title="숫자만 가능합니다." />- 
						<input type='tel' name='phone3'  pattern="^([0-9]){4,4}$" maxlength="4" title="숫자만 가능합니다." />
					</td>
				</tr>
				<tr>
					<td class="Check1" colspan="2"><input type="checkbox" id="check1"/> 개인 정보 수집에 동의 하십니까?</td>
				</tr>
			</table>
			<div class="ButtonDiv">
				<input type="submit" value="가입" onclick="Button1_Click('Insert');" />
				<input type="button" value="취소" onclick="Button1_Click('NoInsert');"/>
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