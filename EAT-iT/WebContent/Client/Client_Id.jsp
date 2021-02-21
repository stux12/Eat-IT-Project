<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String X = request.getParameter("popupX");
	String Y = request.getParameter("popupY");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EAT iT - 아이디 찾기</title>
<link rel="shortcut icon" href="https://blog.kakaocdn.net/dn/k3HEx/btqXXkUK7Mn/C3fJjMv7RIoFzVxa3W9MU1/favicon%20%282%29.ico?attach=1&knm=tfile.ico">

<!-- section -->
<style>
* {
   margin:0px;
   padding:0px;
   list-style:none;
   text-decoration:none;
   border-collapse:collapse;
}

.Login_Logo img {
	width: 400px;
	height: 300px;
	margin-top: -70px;
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

.FindId, .Pw_Join {
	text-align: center;
}

.Irum1 input {
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

<!-- footer -->


</head>
<body>



	<!-- 중간부분 -->
	<section>
		<div class="Login_Logo">
			<img
				src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FQvMBl%2FbtqWU73BhKO%2F5wu0ncSqNIH9pLpQ6A4Pm1%2Fimg.png"
				alt="로고 이미지 크게 들어올곳" />
		</div>
		<form action="ClientFindId.do" method="post">
			<table class="Table1">
				<tr>
					<td class="FindId" colspan="2"><h1>아이디 찾기</h1></td>
				</tr>
				<tr>
					<td class="Irum">이름</td>
					<td class="Irum1"><input type="text" name="irum1" required /></td>
				</tr>
				<tr>
					<td class="Tel">전화번호</td>
					<td class="Tel1"><input type='tel' name='phone1' value="010"
						readonly />- <input type='tel' name='phone2' required
						maxlength="4" />- <input type='tel' name='phone3' required
						maxlength="4" /></td>
				</tr>
			</table>
			<input type="hidden" name="X" value=<%=X%>/>
			<input type="hidden" name="Y" value=<%=Y%>/>
			<div class="ButtonDiv">
				<input type="submit" value="찾기" />
				<input type="button" value="취소" onclick="Button1_Click()" />
			</div>
			<div class="Pw_Join">
				EAT iT 암호를 잊어버린 경우 <a href="/EAT-iT/Client/Client_Password.jsp?popupX=<%=X%>&popupY=<%=Y %>">암호 찾기</a>
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
	function Button1_Click() {
		window.close();
	}
</script>

</html>