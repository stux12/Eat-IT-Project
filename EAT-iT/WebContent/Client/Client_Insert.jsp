<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EAT iT - 회원가입</title>
<link rel="shortcut icon" href="https://blog.kakaocdn.net/dn/k3HEx/btqXXkUK7Mn/C3fJjMv7RIoFzVxa3W9MU1/favicon%20%282%29.ico?attach=1&knm=tfile.ico">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="http://code.jquery.com/jquery-1.9.1.js"></script>

<!-- 메뉴바 -->
<link href="/EAT-iT/CSS/Style_Client.css?after" rel="stylesheet"
	type="text/css">

<!-- section -->
<style>
.Login_Logo {
	text-align: center;
	margin: 5px;
	padding: 5px;
}

.Login_Logo img {
	width: 400px;
	height: 300px;
	margin-bottom: -100px;
}

.Table1 {
	margin-left: auto;
	margin-right: auto;
}

.Table1 td {
	padding: 5px;

}

.Insert {
	text-align: center;
}

.Id1 input, .Pw1 input, .PwCheck1 input, .Nick1 input, .Irum1 input {
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

.Check1 input {
	margin-top: 10px;
	zoom: 1.2;
}

.PwChecked, .IdChecked {
	color: red;
	font-size: 10px;
}


.Text {
	font-size: 20px;
}

.ButtonDiv {
	text-align: center;
	padding: 5px;
	margin: 10px;
}

.ButtonDiv input {
	width: 80px;
	height: 50px;
	border-radius: 5px;
	background-color: #5882FA;
	color: white;
}
</style>

<!-- footer -->

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
	<section>
		<div class="Login_Logo">
			<img
				src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FQvMBl%2FbtqWU73BhKO%2F5wu0ncSqNIH9pLpQ6A4Pm1%2Fimg.png"
				alt="로고 이미지 크게 들어올곳" />
		</div>
		<form method="post" name="Form">
			<table class="Table1">
				<tr>
					<td class="Insert" colspan="2"><h1>회원가입</h1></td>
				</tr>
				<tr></tr>
				<tr>
					<td class="Id">아이디</td>
					<td class="Id1"><input type="text" name="id1" id="id1"
						maxlength="12" pattern="^([a-z0-9]){6,12}$"
						title="영문소문자, 숫자포함 6자리이상 필요합니다" required onkeyup="IdCheck();" /></td>
				</tr>
				<tr>
					<td></td>
					<td id="IdChecked" ></td>
				</tr>
				<tr>
					<td class="Pw">비밀번호</td>
					<td class="Pw1"><input type="password" name="pw1" id="pwc1"
						maxlength="30"
						pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,30}$"
						title="8자이상 하나의 문자 숫자 특수기호를 포함해야합니다" required /></td>
				</tr>
				<tr>
					<td class="PwCheck">비밀번호 확인</td>
					<td class="PwCheck1"><input type="password" name="pw2" id=pwc2
						maxlength="30"
						pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,30}$"
						title="8자이상 하나의 문자 숫자 특수기호를 포함해야합니다" required onkeyup="PwCheck();" /></td>
				</tr>
				<tr>
					<td></td>
					<td id="PwChecked" ></td>
				</tr>
				<tr>
					<td class="Nick">닉네임</td>
					<td class="Nick1"><input type="text" name="nick1" required />
					</td>
				</tr>
				<tr>
					<td class="Irum">이름</td>
					<td class="Irum1"><input type="text" name="irum1"
						maxlength="30" pattern="^([a-zA-Z가-힣]){0,30}$"
						title="특수기호 숫자는 불가능합니다." required /></td>
				</tr>
				<tr>
					<td class="Tel">전화번호</td>
					<td class="Tel1"><input type='tel' name='phone1' value="010" readonly />
					- <input type='tel' name='phone2' pattern="^([0-9]){4,4}$" maxlength="4" title="숫자만 가능합니다." required />
					- <input type='tel' name='phone3' pattern="^([0-9]){4,4}$" maxlength="4" title="숫자만 가능합니다." required /></td>
				</tr>
				<tr>
					<td class="Check1" colspan="2"><input type="checkbox"
						id="check1" /> <b class="Text">개인 정보 수집에 동의 하십니까?</b></td>
				</tr>
			</table>
			<div class="ButtonDiv">
				<input type="submit" value="가입" onclick="Button1_Click('Insert');" />
				<input type="button" value="취소" onclick="Button1_Click('NoInsert');" />
			</div>
		</form>
	</section>

	<br />
	<br />
	<br />

	<!-- 하단부분 -->
	<%@ include file="/mainframe/footer.jsp"%>

</body>

<!-- script -->
<script>

	function IdCheck() {
		var userID = $('#id1').val();
		if(userID.length<6){
			$('#IdChecked').html('<p class="IdChecked">영문소문자 숫자포함 6자이내 입력하세요</p>');
		}else{
			$.ajax({
				type:'POST',
				url: './IdCheck.do',
				data:{userID: userID},
				success : function (result) {
					if(result==1){
						$('#IdChecked').html('<p class="IdChecked">사용할 수 있는 아이디 입니다.</p>');
					}else{
						$('#IdChecked').html('<p class="IdChecked">이미 사용중인 아이디 입니다.</p>');
					}
				}
			});
		}
	}

	function PwCheck() {
		var p1 = document.getElementById('pwc1').value;
		var p2 = document.getElementById('pwc2').value;
		if (p1 == p2) {
			document.getElementById("PwChecked").innerHTML = "<p class='PwChecked'> 비밀번호가 일치합니다.</p>";
		} else {
			document.getElementById("PwChecked").innerHTML = "<p class='PwChecked'> 비밀번호가 일치하지 않습니다.</p>";
		}
	}

	function Button1_Click(str) {
		if (str == "Insert") {
			var id1 = document.getElementById("id1").value;
			var p1 = document.getElementById('pwc1').value;
			var p2 = document.getElementById('pwc2').value;
			if ($(check1).prop("checked")) {
				Form.action = "ClientInsert.do";
			} else if (id1 != "" && p1 != "" && p2 != "") {
				url = "Client_CheckBox.jsp";
				window.open(url, "post", "width=500,height=300");
			}

		}
		if (str == "NoInsert") {
			location.href = "/EAT-iT/Client/Client_Login.jsp";
		}
		if (str == "IdCheck") {
			var id1 = document.getElementById('id1').value;
			if (id1.match("^([a-z0-9]){6,12}$") != null) {
				url = "Client_IdCheck.jsp?id1=" + id1;
				window.open(url, "post", "width=500,height=300");
			} else {
				alert("영문소문자, 숫자포함 6자리이상 필요합니다");
			}
		}
	}
</script>

</html>