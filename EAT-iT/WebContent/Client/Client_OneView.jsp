<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EAT iT - 내 정보 보기</title>
<link rel="shortcut icon" href="https://blog.kakaocdn.net/dn/k3HEx/btqXXkUK7Mn/C3fJjMv7RIoFzVxa3W9MU1/favicon%20%282%29.ico?attach=1&knm=tfile.ico">
<!-- 메뉴바 -->
<link href="/EAT-iT/CSS/Style_Client.css?after" rel="stylesheet"
	type="text/css">

<!-- section -->
<style>
.Login_Logo img {
	width: 400px;
	height: 300px;
	margin-bottom: -100px;
}

.Login_Logo {
	text-align: center;
	margin: 5px;
	padding: 5px;
}

.Table1 {
	margin-left: auto;
	margin-right: auto;
}

.Table1 td {
	padding: 5px;
	margin: 20px;
}

.Join {
	text-align: center;
}

.Join h3 {
	margin-top: -5px;
	margin-bottom: -5px;
}

.Id1 input, .Pw1 input, .Nick1 input, .Irum1 input {
	width: 200px;
	height: 30px;
}

.Tel1 input:nth-child(1) {
	width: 40px;
	height: 30px;
}

.Tel1 input:nth-child(n+2) {
	width: 64px;
	height: 30px;
}

.ButtonDiv {
	text-align: center;
	padding: 5px;
	margin: 10px;
}

.ButtonDiv input {
	width: 80px;
	height: 40px;
	background-color: #5882FA;
	color: white;
}


</style>


</head>
<body>
	<!-- 상단부분 -->
	<header>
		<div class="menubar">
			<div class="logo">
				<a href="/EAT-iT/main.jsp"></a>
			</div>
		</div>
	</header>



	<!-- 중간부분 -->
	<div class="Login_Logo">
		<img
			src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FQvMBl%2FbtqWU73BhKO%2F5wu0ncSqNIH9pLpQ6A4Pm1%2Fimg.png"
			alt="로고 이미지 크게 들어올곳" />
	</div>
	<section>
		<form method="post" name="Form">
			<table class="Table1">
				<tr>
					<td class="Join" colspan="3"><h3>EAT iT 정보조회</h3></td>
				</tr>
				<tr>
					<td class="Id">아이디</td>
					<td class="Id1"><input type="text" value="${vo1.id}"
						name="id1" readonly /></td>
				<tr>
					<td class="Pw">패스워드</td>
					<td class="Pw1"><input type="password" value="${vo1.pw}"
						name="pw1" maxlength="50" required
						pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{6,}$"
						title="8자이상 하나의 문자 숫자 특수기호를 포함해야합니다" /></td>
				</tr>
				<tr>
					<td class="Nick">닉네임</td>
					<td class="Nick1"><input type="text" value="${vo1.nick}"
						name="nick1" required maxlength="10" /></td>
				</tr>
				<tr>
					<td class="Irum">이름</td>
					<td class="Irum1"><input type="text" value="${vo1.name}"
						name="name1" maxlength="30" pattern="^([a-zA-Z가-힣]){0,30}$"
						title="특수기호 숫자는 불가능합니다." required /></td>
				</tr>
				<tr>
					<td class="Tel">전화번호</td>
					<td class="Tel1"><input type="tel" value="010" name="phone1"
						readonly />- <input type='tel' value="${vo1.phone2}"
						name='phone2' pattern="^([0-9]){4,4}$" maxlength="4"
						title="숫자만 가능합니다." required />- <input type='tel'
						value="${vo1.phone3}" name='phone3' pattern="^([0-9]){4,4}$"
						maxlength="4" title="숫자만 가능합니다." required /></td>
				</tr>
			</table>
			<input type="hidden" value="${vo1.d}" name="d1" />
			<div class="ButtonDiv">
				<input type="submit" value="수정" onclick="Button1_Click('Insert');" />
				<input type="submit" value="취소" onclick="Button1_Click('NoInsert')" /><br />
				<br /> 정말 <a href="ClientDelete.do"> 탈퇴</a> 하실건가요?
			</div>

		</form>
	</section>

	<br />
	<br />
	<br />


	<!-- 하단부분 -->
	<%@ include file="/mainframe/footer.jsp"%>

</body>

<!-- script부분 -->
<script>
	function Button1_Click(str) {
		if (str == "Insert") {
			Form.action = "ClientUpdate.do";
		} else if (str == "NoInsert") {
			Form.action = "/EAT-iT/main.jsp"
		}
	}

</script>

</html>