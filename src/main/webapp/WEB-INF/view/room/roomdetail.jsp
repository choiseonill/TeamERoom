<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap core CSS -->
<link href="<c:url value="static/vendor/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="static/css/business-frontpage.css"/>" rel="stylesheet">



<!-- Custom styles for this template -->
<link href="<c:url value="static/css/modern-business.css"/>" rel="stylesheet">

<!-- Bootstrap core JavaScript -->
<script src="<c:url value="static/vendor/jquery/jquery.min.js"/>"></script>
<script src="<c:url value="static/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>

<title>Insert title here</title>

<script src="<c:url value="/static/js/jquery-3.3.1.min.js"/>"
	type="text/javascript"></script>

<style>
#card {
	position: relative;
	display: -webkit-box;
	display: -ms-flexbox;
	/* -webkit-box-orient: vertical; */
	-webkit-box-direction: normal;
	-ms-flex-direction: column;
	flex-direction: column;
	min-width: 0;
	word-wrap: break-word;
	background-color: #fff;
	background-clip: border-box;
	border: 1px solid rgba(0, 0, 0, .125);
	border-radius: .25rem;
}

.link {
	display: inline-block;
	width: 49%;
}
</style>

<script>
	
	function reserveClick (id) {
		$("#reserve").prop("href", "<c:url value="/reserveRoom/?id="/>" + id );
	} 

	$(function() {
		var scrollTop = $(window).scrollTop();
		if (scrollTop < 500) {
			$("#card").css('top', 0);
		} else {
			$("#card").css('top', (scrollTop - 500) + 'px');
		}

		$(window).scroll(function() {
			scrollTop = $(window).scrollTop();
			if (scrollTop < 500) {

				$("#card").stop().animate({
					"top" : 0
				}, 500);
			}

			else {
				$("#card").stop().animate({
					"top" : (scrollTop - 500) + 'px'
				}, 500);
			}
		});
		
	});
</script>




</head>

<jsp:include page="/WEB-INF/view/template/head.jsp" />

<!-- Header with Background Image -->
<header class="business-header">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="display-3 text-center text-white mt-4">
					<%-- <img src="<c:url value="/getRoomImg/${room.roomImage}" />" alt="User's Img" /> --%>
				</h1>
			</div>
		</div>
	</div>
</header>



<!-- Page Content -->
<div class="container">

	<!-- Page Heading/Breadcrumbs -->
	<h1 class="mt-4 mb-3">${room.roomTitle}</h1>

	<ol class="breadcrumb">
		<li class="breadcrumb-item">${room.intro}</li>
	</ol>

	<div class="row">

		<!-- Post Content Column -->
		<div class="col-lg-8">

			<!-- Preview Image -->
			<img class="img-fluid rounded"
				src="<c:url value="/getRoomImg/${room.roomImage}" />" alt="">

			<!-- Comments Form -->
			<div class="card my-4">
				<h5 class="card-header">공간소개</h5>

				<div class="card-body">
					<div class="form-group">${room.info}</div>
				</div>
			</div>

			<!-- Comments Form -->
			<div class="card my-4">
				<h5 class="card-header">시설안내</h5>
				<div class="card-body">
					<c:forEach items="${info}" var="info">
						<li>${info}</li>

					</c:forEach>



				</div>
			</div>

			<!-- Comments Form -->
			<div class="card my-4">
				<h5 class="card-header">예약시 주의사항</h5>
				<div class="card-body">
					<c:forEach items="${warn}" var="warn">
						<li>${warn}</li>

					</c:forEach>


				</div>
			</div>

			<!-- Comments Form -->
			<div class="card my-4">
				<h5 class="card-header">위치정보</h5>
				<div class="card-body">
					<div class="form-group">공간확보</div>
				</div>
			</div>


			<!-- Comments Form -->
			<div class="card my-4">
				<h5 class="card-header">이용 후기</h5>
				<div class="card-body">
					<div class="form-group">

						<!-- Comment with nested comments -->
						<div class="media mb-4">
							<img class="d-flex mr-3 rounded-circle"
								src="http://placehold.it/50x50" alt="">
							<div class="media-body">
								<h5 class="mt-0">Commenter Name</h5>
								Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
								scelerisque ante sollicitudin. Cras purus odio, vestibulum in
								vulputate at, tempus viverra turpis. Fusce condimentum nunc ac
								nisi vulputate fringilla. Donec lacinia congue felis in
								faucibus.

								<div class="media mt-4">
									<img class="d-flex mr-3 rounded-circle"
										src="http://placehold.it/50x50" alt="">
									<div class="media-body">
										<h5 class="mt-0">Commenter Name</h5>
										Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
										scelerisque ante sollicitudin. Cras purus odio, vestibulum in
										vulputate at, tempus viverra turpis. Fusce condimentum nunc ac
										nisi vulputate fringilla. Donec lacinia congue felis in
										faucibus.
									</div>
								</div>

								<div class="media mt-4">
									<img class="d-flex mr-3 rounded-circle"
										src="http://placehold.it/50x50" alt="">
									<div class="media-body">
										<h5 class="mt-0">Commenter Name</h5>
										Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
										scelerisque ante sollicitudin. Cras purus odio, vestibulum in
										vulputate at, tempus viverra turpis. Fusce condimentum nunc ac
										nisi vulputate fringilla. Donec lacinia congue felis in
										faucibus.
									</div>
								</div>

							</div>
						</div>
					</div>
					<form>
						<div class="form-group">
							<textarea class="form-control" rows="3"></textarea>
						</div>
						<button type="submit" class="btn btn-primary">Submit</button>
					</form>
				</div>
			</div>
		</div>

		<!-- Sidebar Widgets Column -->

		<div class="col-md-4">

			<!-- Side Widget -->
			<div class="card my-4" id="card">
				<h5 class="card-header">세부공간 선택</h5>

				<c:forEach items="${detailRoom}" var="detailRoom">
					<div>

						<input type="radio" id="${detailRoom.id}" name="select"
							onclick="reserveClick(${detailRoom.id})">
						${detailRoom.title} | ${detailRoom.pricePerTime} / 시간

					</div>
				</c:forEach>

				<div style="text-align: center;">
					<a href="#"> <span class="link">전화</span>
					</a> <a id="reserve"> <span class="link">예약신청</span>
					</a>
				</div>
			</div>


		</div>

	</div>
	<!-- /.row -->

	<!-- Portfolio Section -->
	<h2>같은 호스팅 룸</h2>

	<div class="row">
		<div class="col-lg-4 col-sm-6 portfolio-item">
			<div class="card h-100">
				<a href="#"><img class="card-img-top"
					src="http://placehold.it/700x400" alt=""></a>
				<div class="card-body">
					<h4 class="card-title">
						<a href="<c:url value="/roomdetail"/>">Project One</a>
					</h4>
					<p class="card-text">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Amet numquam aspernatur eum quasi sapiente
						nesciunt? Voluptatibus sit, repellat sequi itaque deserunt,
						dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!</p>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-sm-6 portfolio-item">
			<div class="card h-100">
				<a href="#"><img class="card-img-top"
					src="http://placehold.it/700x400" alt=""></a>
				<div class="card-body">
					<h4 class="card-title">
						<a href="#">Project Two</a>
					</h4>
					<p class="card-text">Lorem ipsum dolor sit amet, consectetur
						adipiscing elit. Nam viverra euismod odio, gravida pellentesque
						urna varius vitae.</p>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-sm-6 portfolio-item">
			<div class="card h-100">
				<a href="#"><img class="card-img-top"
					src="http://placehold.it/700x400" alt=""></a>
				<div class="card-body">
					<h4 class="card-title">
						<a href="#">Project Three</a>
					</h4>
					<p class="card-text">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Quos quisquam, error quod sed cumque, odio
						distinctio velit nostrum temporibus necessitatibus et facere atque
						iure perspiciatis mollitia recusandae vero vel quam!</p>
				</div>
			</div>
		</div>
	</div>
	<!-- /.row -->
</div>
<!-- /.container -->

<!-- Footer -->
<jsp:include page="/WEB-INF/view/template/footer.jsp" />


</html>