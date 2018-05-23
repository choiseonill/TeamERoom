<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap core CSS -->
<link href="static/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="static/css/business-frontpage.css" rel="stylesheet">


<!-- Custom styles for this template -->
<link href="static/css/modern-business.css" rel="stylesheet">

<!-- Bootstrap core JavaScript -->
<script src="static/vendor/jquery/jquery.min.js"></script>
<script src="static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<title>Insert title here</title>

<script src="<c:url value="/static/js/jquery-3.3.1.min.js"/>"
	type="text/javascript"></script>
<!-- <script type="text/javascript">
$().ready(function() {

	// 기존 css에서 플로팅 배너 위치(top)값을 가져와 저장한다.
	var floatPosition = parseInt($("#card").css('top'));
	// 250px 이런식으로 가져오므로 여기서 숫자만 가져온다. parseInt( 값 );

	$(window).scroll(function() {
		// 현재 스크롤 위치를 가져온다.
		var scrollTop = $(window).scrollTop();
		var newPosition = scrollTop + floatPosition + "px";

		/* 애니메이션 없이 바로 따라감
		 $("#floatMenu").css('top', newPosition);
		 */

		$("#card").stop().animate({
			"top" : newPosition
		}, 500);

	}).scroll();

});
</script> -->

<script>
	$(function() {
		$(window).scroll(function() { //스크롤이 움직일때마다 이벤트 발생 
			var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.
			$(id).stop().animate({
				top : position + "px"
			}, 1); //해당 오브젝트 위치값 재설정
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
			<h1 class="display-3 text-center text-white mt-4">main img</h1>
		</div>
	</div>
</div>
</header>



<!-- Page Content -->
<div class="container">

	<!-- Page Heading/Breadcrumbs -->
	<h1 class="mt-4 mb-3">
		Post Title <small>by <a href="#">Start Bootstrap</a>
		</small>
	</h1>

	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="index.html">Home</a></li>
		<li class="breadcrumb-item active">Blog Home 2</li>
	</ol>

	<div class="row">

		<!-- Post Content Column -->
		<div class="col-lg-8">

			<!-- Preview Image -->
			<img class="img-fluid rounded" src="http://placehold.it/900x300"
				alt="">

			<hr>

			<!-- Date/Time -->
			<p>Posted on January 1, 2017 at 12:00 PM</p>

			<hr>

			<!-- Post Content -->
			<p class="lead">Lorem ipsum dolor sit amet, consectetur
				adipisicing elit. Ducimus, vero, obcaecati, aut, error quam sapiente
				nemo saepe quibusdam sit excepturi nam quia corporis eligendi eos
				magni recusandae laborum minus inventore?</p>

			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut,
				tenetur natus doloremque laborum quos iste ipsum rerum obcaecati
				impedit odit illo dolorum ab tempora nihil dicta earum fugiat.
				Temporibus, voluptatibus.</p>

			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos,
				doloribus, dolorem iusto blanditiis unde eius illum consequuntur
				neque dicta incidunt ullam ea hic porro optio ratione repellat
				perspiciatis. Enim, iure!</p>

			<blockquote class="blockquote">
				<p class="mb-0">Lorem ipsum dolor sit amet, consectetur
					adipiscing elit. Integer posuere erat a ante.</p>
				<footer class="blockquote-footer">Someone famous in <cite
					title="Source Title">Source Title</cite> </footer>
			</blockquote>

			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
				Error, nostrum, aliquid, animi, ut quas placeat totam sunt tempora
				commodi nihil ullam alias modi dicta saepe minima ab quo voluptatem
				obcaecati?</p>

			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
				Harum, dolor quis. Sunt, ut, explicabo, aliquam tenetur ratione
				tempore quidem voluptates cupiditate voluptas illo saepe quaerat
				numquam recusandae? Qui, necessitatibus, est!</p>

			<hr>

			<!-- Comments Form -->
			<div class="card my-4">
				<h5 class="card-header">공간소개</h5>
				<div class="card-body">
					<div class="form-group">공간확보</div>
				</div>
			</div>

			<!-- Comments Form -->
			<div class="card my-4">
				<h5 class="card-header">시설안내</h5>
				<div class="card-body">
					<div class="form-group">공간확보</div>
				</div>
			</div>

			<!-- Comments Form -->
			<div class="card my-4">
				<h5 class="card-header">예약시 주의사항</h5>
				<div class="card-body">
					<div class="form-group">공간확보</div>
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

			<div id="scroll" style="position: absolute; right: 0; top: 0;">
				<table>
					<tr>
						<td>■■■■■■■■■■■</td>
					</tr>
					<tr>
						<td>■■■■b1ix■■■■</td>
					</tr>
					<tr>
						<td>■■■■■■■■■■■</td>
					</tr>
				</table>
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