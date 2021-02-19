<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<%-- 메뉴바 스타일 --%>
<style>
/* 메뉴바 스타일 */
header {
	height: 60px;
	width: 100%;
}

body {
	margin: 0;
}

.logo {
	margin-top: 2px;
	background-image:
		url(https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FQvMBl%2FbtqWU73BhKO%2F5wu0ncSqNIH9pLpQ6A4Pm1%2Fimg.png);
	background-size: cover;
}

.logo a {
	display: block;
	width: 80px;
	height: 60px;
	cursor: pointer;
}

.menubar {
	position: fixed;
	z-index: 3;
	display: flex;
	width: 100%;
	height: 60px;
	border-bottom: 1px solid gray;
	background: white;
}

.menubar_menulist {
	right: 0px;
	display: inline;
}

.align-right {
	margin-left: auto;
	position: relative
}

.search {
	margin: auto;
	width: 500px;
	margin-left: 200px;
}

.searchImg {
	margin-left: 300px;
	margin-top: 13px;
	margin-right: -150px;
}

.dropdown {
	display: inline-block;
}

.dropbtn {
	color: black;
	background-color: transparent;
	padding: 16px;
	font-size: 1vw;
	border: none;
	cursor: pointer;
	outline: 0;
}

.dropdown-content {
	background-color: white;
	display: none;
	position: absolute;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
	border: 1px;
	width: 160px;
	text-align: center;
}

.dropdown-content hr {
	width: 160px;
	margin: auto;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	background: #ffffff4a;
}

.dropdown-content a:hover {
	background-color: #ddd;
}

.dropdown:hover .dropbtn {
	background-color: transparent;
}

.search_input {
	padding: 5px;
	width: 280px;
	height: 35px;
	border: 0;
	border-radius: 8px;
	font-size: 14pt;
}

.search_input:focus {
	outline: none;
}

.search_btn {
	padding: 5px;
	border: solid 5px #3450b4;
	font-weight: bold;
	font-size: 14pt;
	border-radius: 20px;
	color: white;
	background-color: #3450b4;
}

.nav-rec {
	width: 100%;
	height: 250px;
	background-color: #D8D8D8;
	opacity: 0.3;
	position: absolute;
	top: 61px;
}

.location {
	padding-top: 50px;
	font-weight: bold;
	font-size: 40pt;
	color: red;
}

.location-sub {
	font-size: 15pt;
	color: blue;
	padding-bottom: 10px;
	font-weight: bold;
}

.sel1 {
	margin-top: 260px;
	margin-left: 250px;
}

.repeat {
	margin-top: 20px;
	align: center;
}

.button1 {
	background: #5BB6FF;
	border: none;
	border-radius: 3px;
	color: #ffffff;
	display: block;
	width: 50px;
	height: 30px;
	font: 13px "Gulim", "Dotum", Georgia, "Times New Roman", Times, serif;
	margin: 0 0 0 0;
	padding: 1px 1px 1px 1px;
	text-shadow: 0px 0px 0px 0px #e7e7e7;
}

table {
	margin: 0 auto;
	border-spacing: 10px;
	width: 800px;
}

table tr {
	border-spacing: 10px;
}

hr {
	margin: 0 auto;
}

.sangho {
	font-size: 25px;
	font-weight: bold;
}

.juso {
	color: #D8D8D8;
	font-weight: bold;
}
</style>


</head>
<body>
<!-- 	<script src="http://code.jquery.com/jquery-1.9.1.js"></script> -->
	<script>
   // 드롭메뉴 스르륵 효과
   function fade() {
      $('.dropdown-content').show(520);
   }
   function fadeo() {
      $('.dropdown-content').hide(520);
   }
</script>

	<script>
	function Button1_Click(str) {
		if(str != null){
				
			var id1 ='<%=application.getAttribute("id1")%>';
			console.log(id1);
			console.log(str);
				if (id1 == 'null') {
					alert('로그인부터 해주세용~~');
				} else {
					// 가게정보를 mutual값으로 변경하면됨
					url = "Client/Client_DibsListInsert.jsp?id1=" + id1
							+ "&mutual1="+ str;							
					window.open(url, "post", "width=500,height=300");
				}
			}
		}
	</script>

	<header class="header">
		<div class="menubar">
			<div class="logo">
				<a href="main.jsp"></a>
			</div>

			<div class="search">
				<form action="Mutual_allinfo_search.do">

					<input class="search_input" type="text" name="search"
						placeholder="검색어를 입력하세요">
					<!-- request.getParameter("search") -->
					<input class="search_btn" type="submit" value="검색">
				</form>
			</div>

			<div class="align-right">
				<div class="dropdown" onmouseenter="fade()" onmouseleave="fadeo()">
					<button class="dropbtn">테마별 맛집 추천</button>
					<div class="dropdown-content" >
                  <a href="Mutual_allinfo_add.do?address=강남">지역별 </a>
				<hr>
				<a href="Mutual_allinfo_review.do">리뷰별 </a>
				<hr>
				<a href="Mutual_allinfo_kind.do?kinds=일식">종류별 </a>
               </div>
				</div>
				<div class="menubar_menulist">

					<c:if test="${(id1!=null&&id1!='admin') ? true : false}">
						<a href="ClientDibsListView.do"><button class="dropbtn">찜
								리스트</button></a>
						<a href="ClientOneView.do"><button class="dropbtn">내정보</button></a>
						<a href="LogOut.do"><button class="dropbtn">로그아웃</button></a>
					</c:if>
					<c:if test="${(id1=='admin') ? true : false }">
						<a href="ClientAllView.do"><button class="dropbtn">회원관리</button></a>
					</c:if>
					<c:if test="${(id1==null) ? true : false}">
						<a href="/EAT-iT/Client/Client_Login.jsp"><button
								class="dropbtn">로그인</button></a>

					</c:if>
				</div>
			</div>
		</div>
	</header>

	<nav>
		<div class="nav-rec">
			<div class="nav-text">
				<h1 class="location" align="center">종류별 맛집 TOP</h1>
				<p class="location-sub" align="center">종류별로는 무슨 맛집이 있을까?</p>
			</div>
		</div>
	</nav>




	<section class="sect1">
		<div class="repeat">
			<form action="Mutual_allinfo_kind.do">
				<select name="kinds" onChange="window.open(value,'_self');"
					class="sel1">
					<option value="Mutual_allinfo_kind.do?kinds=일식">선택</option>
					<option value="Mutual_allinfo_kind.do?kinds=일식">일식</option>
					<option value="Mutual_allinfo_kind.do?kinds=양식">양식</option>
					<option value="Mutual_allinfo_kind.do?kinds=한식">한식</option>
					<option value="Mutual_allinfo_kind.do?kinds=이태리">이태리</option>
					<option value="Mutual_allinfo_kind.do?kinds=브런치">브런치</option>
					<option value="Mutual_allinfo_kind.do?kinds=기타">기타</option>
				</select>
			</form>
			<form action="#">
				<c:forEach var="i" items="${alist2}">
					<table>
						<tr>
							<td rowspan=5><a href="detail.do?mutual=${i.mutual}"><img src="${i.firstimg}"
								style="width: 300px; height: 250px; padding: 35px;"></a></td>
							<td class="sangho">상호명: ${i.mutual}</td>

						</tr>
						<tr>
							<td>종류: ${i.kinds}</td>
						</tr>
						<tr>
							<td class="juso">주소: ${i.address}</td>
						</tr>
						<tr>
							<td>소개: ${i.introduce}</td>
						</tr>
						<tr>
							<td><input type="hidden" value='${i.mutual}' name="mutual1"></td>
							<td><input type="button" value="찜" class="button1"
								onclick="Button1_Click('${i.mutual}')" /></td>
						</tr>
					</table>
					<br>
					<hr style="width: 800px">
					<br>
				</c:forEach>
			</form>
		</div>
	</section>

	<%@ include file="../mainframe/footer.jsp"%>


</body>
</html>