<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Bootstrap core CSS -->
<link href="static/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="static/css/modern-business.css" rel="stylesheet">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


<!-- Bootstrap core JavaScript -->
<script src="static/vendor/jquery/jquery.min.js"></script>
<script src="static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<script type="text/javascript">
	$().ready(function() {

		$("#tt").click(function() {
			$(".hide").toggle();
		});

	})
</script>

<!-- Navigation -->
<nav
	class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
	<div class="container">
		<a class="navbar-brand" href="<c:url value="/main" />">Team E Room</a>

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

				<li class="nav-item dropdown">
				
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						검색 
					</a>
						
						
					<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
						<a class="dropdown-item" href="full-width.html">Full Width Page</a> 
						<a class="dropdown-item" href="sidebar.html">Sidebar Page</a> 
						<a class="dropdown-item" href="faq.html">FAQ</a> 
						<a class="dropdown-item" href="404.html">404</a> 
						<a class="dropdown-item" href="pricing.html">Pricing Table</a>
					</div>
				</li>

				<li>
				   <img id="tt" alt="myButton" src="<c:url value="/static/img/menu.png"/>" 
				   style="height:20px; width:20px; margin-top:8px"/>
				</li>

			</ul>
		</div>
	</div>
</nav>
