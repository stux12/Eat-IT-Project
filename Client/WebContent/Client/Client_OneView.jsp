<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 메뉴바 -->
<link href="../CSS/Style.css" rel="stylesheet" type="text/css">

<!-- section -->
<style>
.Logo img{
	width: 100px;
	height: 75px;
	margin-left: -8px;
	margin-top: -1px;
}

.Login_Logo img {
	width: 400px;
	height: 300px;
	margin-top: -85px;
	margin-bottom: -100px;
}

.Login_Logo {
	text-align: center;
	margin: 5px;
	padding: 5px;
}

.Table1{
	margin-left: auto;
	margin-right: auto;
}

.Table1 td{
	padding: 5px;
	margin: 20px;
}

.Join{
	text-align: center;
}

.Join h3{
	margin-top: -5px;
	margin-bottom: -5px;
}

.Id1 input, .Pw1 input, .Nick1 input, .Irum1 input{
	width: 162px; 
	border-radius: 5px
}

.Tel1 input:nth-child(1){
	width: 32px; 
	border-radius: 5px;
}
.Tel1 input:nth-child(n+2){
	width: 45px;
	border-radius: 5px;
}

.ButtonDiv{
	text-align: center;
	padding: 5px;
	margin: 10px;
}

.ButtonDiv input{
	width: 60px; 
	border-radius: 15px
}

footer {
	text-align: center;
	border: 1px solid;
	background-color: aqua;
}
</style>

<script>
	function Button1_Click(str) {
		if(str=="Insert"){
			Form.action="ClientUpdate.do";
		}else if(str=="Delete"){
			Form.action="ClientDelete.do";
		}else if(str=="NoInsert"){
			Form.action="/Client/MainPage.jsp"
		}
	}
	
</script>

</head>
<body>
	<!-- 상단부분 -->
	<header>
		<div class="menubar">
			<div class="Logo">
				<a href="/Client/MainPage.jsp"><img src="img/EATit.png" alt="로고 이미지 크게 들어올곳" /></a>
			</div>
		</div>
	</header>



	<!-- 중간부분 -->
	<div class="Login_Logo">
		<img src="img/EATit.png" alt="로고 이미지 크게 들어올곳" />
	</div>
	<section>
	<form method="post" name="Form">
		<table class="Table1">
			<tr>
				<td class="Join" colspan="3"><h3>EAT iT 정보조회</h3></td>
			</tr>
			<tr>
				<td class="Id">아이디</td>
				<td class="Id1"><input type="text" value="${vo1.id}" name="id1" readonly /></td>
			<tr>
				<td class="Pw">패스워드</td>
				<td class="Pw1"><input type="password" value="${vo1.pw}" name="pw1" maxlength="50" 
								pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{6,}$" title="8자이상 하나의 문자 숫자 특수기호를 포함해야합니다"/></td>
			</tr>
			<tr>
				<td class="Nick">닉네임</td>
				<td class="Nick1"><input type="text" value="${vo1.nick}" name="nick1" required maxlength="10"/></td>
			</tr>
			<tr>
				<td class="Irum">이름</td>
				<td class="Irum1"><input type="text" value="${vo1.name}" name="name1" maxlength="30"
				pattern="^([a-zA-Z가-힣]){0,30}$" title="특수기호 숫자는 불가능합니다."/></td>
			</tr>
			<tr>
				<td class="Tel">전화번호</td>
				<td class="Tel1">
					<input type="tel" value="010" name="phone1" readonly />-
					<input type='tel' value="${vo1.phone2}" name='phone2' pattern="^([0-9]){4,4}$" maxlength="4" title="숫자만 가능합니다." />-
					<input type='tel' value="${vo1.phone3}" name='phone3' pattern="^([0-9]){4,4}$" maxlength="4" title="숫자만 가능합니다."/>
				</td>
			</tr>
		</table>	
		<input type="hidden" value="${vo1.d}" name="d1" />
		<div class="ButtonDiv">
				<input type="submit" value="수정" onclick="Button1_Click('Insert');" />
				<input type="submit" value="삭제" onclick="Button1_Click('Delete');"/>
				<input type="submit" value="취소" onclick="Button1_Click('NoInsert')"/>
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