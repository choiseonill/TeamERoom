<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



<script type="text/javascript"
	src=" <c:url value="/static/js/jquery-3.3.1.min.js"/>">
	
</script>
<script type="text/javascript">
	$().ready(function() {
		$(".hover_jquery").hover(function() { //mouseover
			console.log("click!")
			$(this).addClass("mouseover");
		}, function() { //mouseout
			console.log("click2")
			$(this).removeClass("mouseover");
		});

		$("#back").click(function() {
			$(".hide").toggle();
		});

	});
</script>

<style>
A:link {
	TEXT-DECORATION: none
}

A:visited {
	TEXT-DECORATION: none
}

A:hover {
	TEXT-DECORATION: none
}

.menu:hover {
	text-size: 15pt;
	cursor: hand;
}

.mouseover {
	background-color: #0000ff;
}

#sideBar {
	width: 350px;
	display: inline-block;
	display : none;
	text-align: right;
	background-color: #FFFFFF;
	position: fixed;
	z-index: 1031;
	height: 100%;
	right: 0px;
	
}



#bigMenu {
	height: 200px;
}

.menu {
	height: 50px;
	text-align: left;
	font-size: 18px;
}

#userImg {
	width: 100px;
	height: 100px;
	border-radius: 50%;
}

.imgDiv {
	text-align: center;
	font-size: 18px;
}

#back {
	margin-right:20px;
	width: 40px;
	height: 20px;
}

.menuBtn{
	background: #343A40;
	width:355px;
	color: #FFFFFF;
}

</style>




<div id="sideBar" class="hide w3-animate-right">
	<div id="bigMenu">

		<div>
			<img id="back" alt="back Img" src="<c:url value="/static/img/back.png"/>">
		</div>

		<div class="imgDiv">
			<!-- TODO 세션체크 -->
			
			<c:if test="${empty sessionScope.__USER__ }">
					<img id="userImg"  src="<c:url value="/static/img/defaultUser.png"/>" alt="default Img"/>
			</c:if>
			
			 <c:if test="${not empty sessionScope.__USER__}">
				 	<img src="<c:url value="/getPic/${sessionScope.__USER__.id}" />" alt="User's Img" style="width:100px; height:100px"/>
			</c:if>  
		</div>

		<div class="imgDiv" style="margin-top:10px">
			<!-- TODO 세션체크 -->
			<a href="<c:url value="/login"/>">
				<button>로그인</button>
			</a>

			<%-- <c:if test="${empty sessionScope.__USER__} }">
				<a>로그아웃</a>
			</c:if> --%>

		</div>



	</div>


	<!-- TODO 세션 체크 -->
	
	<div class="menu">
		<a>
		<button class="menuBtn">호스트 전용 관리 리스트</button></a>
	</div>
	
	<div class="menu">
		<a><button class="menuBtn">예약 내역 리스트</button></a>
	</div>

	<div class="menu">
		<a><button class="menuBtn">내가 가고 싶은 공간</button></a>
	</div>

	<div class="menu">
		<a><button class="menuBtn">공지 사항</button></a>
	</div>

	<div class="menu">
		<a><button class="menuBtn">이벤트</button></a>
	</div>

	<div class="menu">
		<a><button class="menuBtn">1:1 문의사항</button></a>
	</div>




</div>



