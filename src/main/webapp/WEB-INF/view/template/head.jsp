<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="../static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="../static/css/style3.css">
<link rel="stylesheet" 
	href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">

<script src="../static/js/jquery-3.3.1.min.js"></script>
<script src="<c:url value="../static/vendor/bootstrap/js/bootstrap.min.js"/>"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.concat.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$("#sidebar").mCustomScrollbar({
			theme : "minimal"
		});

		$('#dismiss, .overlay').on('click', function() {
			$('#sidebar').removeClass('active');
			$('.overlay').fadeOut();
		});

		$('#sidebarCollapse').on('click', function() {
			$('#sidebar').addClass('active');
			$('.overlay').fadeIn();
			$('.collapse.in').toggleClass('in');
			$('a[aria-expanded=true]').attr('aria-expanded', 'false');
		});
	});
</script>
 <style>
.userImg {
	width: 100px;
	height: 100px;
	border-radius: 50%;
}
</style>	
   

</head>
<body>
	<div class="wrapper">
		<!-- Sidebar Holder -->
		<nav id="sidebar">
			<div id="dismiss">
				<i class="glyphicon glyphicon-arrow-left"></i>
			</div>

			<div class="sidebar-header">
				<h3>Bootstrap Sidebar</h3>
			</div>

			<ul class="list-unstyled components">

				<!-- TODO 세션체크 -->

				<c:if test="${empty sessionScope.__USER__ }">
					<img class="userImg"
						src="<c:url value="/static/img/defaultUser.png"/>"
						alt="default Img" />
				</c:if>

				<c:if test="${not empty sessionScope.__USER__}">
					<img class="userImg"
						src="<c:url value="/getPic/${sessionScope.__USER__.id}" />"
						alt="User's Img" />
				</c:if>

				<li class="active"><a href="#">예약내역 리스트</a></li>
				<li><a href="#">내가 가고 싶은 공간</a></li>
				<li><a href="#">공지사항</a></li>
				<li><a href="#">이벤트</a></li>
				<li><a href="">1:1문의사항</a></li>
			</ul>

			<ul class="list-unstyled CTAs">
				<c:if test="${empty sessionScope.__USER__ }">
					<li><a class="download" style="color: black;" href="<c:url value="/login"/>"       >
						로그인
					</a></li>
				</c:if>


				<c:if test="${not empty sessionScope.__USER__}">
					<li><a class="download" style="color: black;" href="<c:url value="/logout"/>">
						로그아웃
					</a></li>
				</c:if>


			</ul>

		</nav>

		<!-- Page Content Holder -->
		<div style="height:15%;">

			<nav
				class="navbar fixed-top navbar-expand-lg navbar-dark bg-darks1 fixed-top">
				<div class="container">
					<a class="navbar-brand" href="<c:url value="/main" />">Team E
						Room</a>

					<button class="navbar-toggler navbar-toggler-right" type="button"
						data-toggle="collapse" data-target="#navbarResponsive"
						aria-controls="navbarResponsive" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>

					<div class="collapse navbar-collapse" id="navbarResponsive">
						<ul class="navbar-nav ml-auto">
							<li class="nav-item"><a class="nav-link" href="about.html">추천장소</a>
							</li>
							<li class="nav-item"><a class="nav-link"
								href="<c:url value="/roomComments"/>">써 본 사람</a></li>

							<li class="nav-item"><a class="nav-link" href="contact.html">공간등록하기</a>
							</li>

							<li>
								<button type="button" id="sidebarCollapse"
									class="btn btn-info navbar-btn">
									<i class="glyphicon glyphicon-align-left"></i> <span>OpenSidebar</span>
								</button>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</div>

	<div class="overlay"></div>