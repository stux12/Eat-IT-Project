<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>eat it : 테마별 맛집 추천</title>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ed569c66d15e26e2676b3d419b79379e"></script>
<link rel="stylesheet" type="text/css" href="CSS/Style_Detail.css?ver=1.2">
<script type="text/javascript">
	// 지도 로드
	window.onload = function() {
		
		var x = '<c:out value="${mapVo.geoX}"/>';
		var y = '<c:out value="${mapVo.geoY}"/>';
		
		var markerPosition = new daum.maps.LatLng(y, x);
		
		var mapDesign = {
			zoom : 15,
			level : 2,
			center : markerPosition,
			mapTypeId : daum.maps.MapTypeId.ROADMAP
		};
		
		var map = new daum.maps.Map(document.getElementById('map'), mapDesign);
		
		var marker = new daum.maps.Marker({
			position:markerPosition
		});
		
		marker.setMap(map);
	};
	
	// 리뷰쓰기버튼
	function reviewReg1() {
		var id1 ='<%= application.getAttribute("id1")%>';
		
		if(id1 == 'null') {
			document.getElementById("textarea").setAttribute("disabled", true);
			alert("로그인 후 리뷰를 등록할 수 있습니다.");
		} else {}
	}
	
	// 리뷰 등록버튼
	function reviewReg2() {
		var id1 ='<%= application.getAttribute("id1")%>';
		
		if(id1 == 'null') {
			document.getElementById("textarea").setAttribute("disabled", true);
			alert("로그인 후 리뷰를 등록할 수 있습니다.");
		} else {
			var form = document.getElementById("reviewForm");
			form.action = "reviewRegister.do";
			form.method = "POST";
			form.submit();
		}
	}
	
	// 찜버튼
	function Button1_Click(str) {
		if(str=="JJim"){
			var id1 ='<%= application.getAttribute("id1")%>';
			var mutual1 = '<c:out value="${vo.mutual}"/>';
			if(id1=='null'){
				alert('로그인 후 이용할 수 있습니다.');
			}else{
				// 가게정보를 mutual값으로 변경하면됨
			 	url="Client/Client_DibsListInsert.jsp?id1="+id1+"&mutual1="+mutual1;
				window.open(url,"post","width=500,height=300"); 
			}
		}
	}
</script>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
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
	// 화면 줄이면 메뉴바의 '테마별 추천 맛집', '로그인' 메뉴 사라지게 하기
	window.addEventListener("resize", homzzang);
	function homzzang() {
		var windowWidth = $(window).width();
		if (windowWidth < 750) {
			$('.dropbtn').css("visibility", "hidden");
			$('.dropdown-content a').css("display", "none");
			$('.dropdown-content hr').css("display", "none");
		} else {
			$('.dropbtn').css("visibility", "visible");
			$('.dropdown-content a').css("display", "block");
			$('.dropdown-content hr').css("display", "block");
		}
	}
</script>
</head>
<body>
	 <header>
      <div class="menubar">
         <div class="logo">
            <a href="main.jsp"></a>
         </div>
         <span class="searchImg">
            <img src="https://blog.kakaocdn.net/dn/clvEUU/btqWNcv5xUx/FlLiOLOK2VhzUAbT1nKrF0/img.png">
            </span>
         <div class="search">
            <form action="serve.do">
               <input class="search_input" type="text" name="search" placeholder="검색어를 입력하세요">
                                                  <!-- request.getParameter("search") -->
               <input class="search_btn" type="submit" value="검색">
            </form>
         </div>
         <div class="align-right">
            <div class="dropdown" onmouseenter="fade()" onmouseleave="fadeo()">
               <button class="dropbtn">테마별 맛집 추천</button>
               <div class="dropdown-content">
                  <a href="serve.do?address=강남">지역별</a>
                  <hr>
                   <a href="review.do">리뷰별</a>
                   <hr>
                   <a href="serve.do?kinds=일식">종류별</a>
               </div>
            </div>
            <div class="menubar_menulist">
                 <c:if test="${(id1!=null&&id1!='admin') ? true : false}">
                <a  href="ClientDibsListView.do"><button class="dropbtn">찜 리스트</button></a>
                  <a href="/ClientOneView.do"><button class="dropbtn">내정보</button></a>
                 </c:if>
                 <c:if test="${(id1=='admin') ? true : false }">
                 <a href="/ClientAllView.do"><button class="dropbtn">회원관리</button></a>
                 </c:if>
                  <c:if test="${(id1==null) ? true : false}">
                   <a href="Client/Client_Login.jsp" ><button class="dropbtn">로그인</button></a>
                   </c:if>
            </div>
         </div>
      </div>
   </header>
	<aside>
		<!-- 식당 이미지 -->
		<table id="img_table">
			<tr>
				<td><img src="${imgVo.firstimg}" style="max-width:100%;" height="400"></td>
				<td><img src="${imgVo.secondimg}" style="max-width:100%;" height="400"></td>
				<td><img src="${imgVo.thirdimg}" style="max-width:100%;" height="400"></td>
				<td><img src="${imgVo.fourthimg}" style="max-width:100%;" height="400"></td>
				<td><img src="${imgVo.fifthimg}" style="max-width:100%;" height="400"></td>
			</tr>
		</table>
	</aside>
	<section>
		<!-- 식당 상세 정보 -->
		<div class="align_center">
			<div id="restaurant_title">
				<span class="title">${vo.mutual }</span>
				<div id="restaurant_title_btn">
						<a href="#reviewArea"><input id="reviewbtn" type="button" value="리뷰쓰기" onclick="reviewReg1()"></a>
					<form action="#" style="float:right; margin-left:10px">
						<input id="jjimbtn" type="button" value="찜버튼" onclick="Button1_Click('JJim');">
					</form>
					
					
				</div>
			</div>
			<hr>
			<table id="retaurant_table">
				<tr>
					<td width="100px">주소</td>
					<td>${vo.address }</td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td>${vo.dial }</td>
				</tr>
				<tr>
					<td>음식 종류</td>
					<td>${vo.kinds }</td>
				</tr>
				<tr>
					<td>식당 소개</td>
					<td>${vo.introduce }</td>
				</tr>
			</table>
			<hr>
			<form id="reviewForm">
			<table id="review_table">
				<tr>
					<td colspan="2"><a name="reviewArea"></a>리뷰 (${countReview })</td>
				</tr>
				<tr>
					<td><textarea id="textarea" name="review" cols="86" rows="6" placeholder="리뷰를 작성하세요." maxlength="300" required style="resize:none;"></textarea></td>
					<td><input id="submitbtn" type="button" value="등록" onclick="reviewReg2()">
						<input type="hidden" name="mutual" value="${vo.mutual }">
						<input type="hidden" name="id" value="<%= application.getAttribute("id1") %>"></td>
				</tr>
				<tr>
					<td colspan="2"></td>
				</tr>
				<tr>
					<td colspan="2">
						<table id="review_table2">
						<c:forEach var="vo2" items="${reviewList }">
							<tr>
								<td>${vo2.id }</td>
								<td width="520">${vo2.review }</td>
								<td>${vo2.d }</td>
								<td>
								<input type="hidden" name="review_id" value="${vo2.review_id }">
								<input type="hidden" name="mutual" value="${vo.mutual }">
								<c:if test="${(id1 == vo2.id || id1 == 'admin')}" >
								<input type="button" value="삭제" style="border:none; outline:0; cursor:pointer;" onclick='location.href="reviewDelete.do?review_id=${vo2.review_id}&mutual=${vo.mutual }";'>
								</c:if></td>
							</tr>
						</c:forEach>
						</table>
					</td>
				</tr>
			</table>
			</form>
			<pre>
			</pre>
		</div>
	</section>
	<nav>
		<table id="nav_table">
			<tr>
				<td><div id="map"></div></td>
			</tr>
			<tr>
				<td id="ad_space"></td>
			</tr>
		</table>
	</nav>
	<footer>
		<!-- footer -->
		<%@ include file="../mainframe/footer.jsp" %>
	</footer>

</body>
</html>