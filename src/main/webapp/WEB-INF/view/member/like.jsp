<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Insert title here</title>
<!-- Bootstrap core CSS -->
<link href="static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="static/css/modern-business.css" rel="stylesheet">

<!-- Bootstrap core JavaScript -->
<script src="static/vendor/jquery/jquery.min.js"></script>
<script src="static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</head>
<body>


    <!-- Navigation -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="<c:url value="/main" />">Team E Room</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="about.html">추천장소</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<c:url value="/roomComments"/>">써 본 사람</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="contact.html">공간등록하기</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <div class="container">

      <h1 class="my-4" style="text-align:center;">찜 목록</h1>

      <div class="row">
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="<c:url value="/roomdetail"/>">방이름 : </a>
              </h4>
              <div><p class="card-text">한줄소개 : </p></div>
              <div><p class="card-text">금액 : </p><p>댓글수, 좋아요</p></div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="<c:url value="/roomdetail"/>">방이름 : </a>
              </h4>
              <div><p class="card-text">한줄소개 : </p></div>
              <div><p class="card-text">금액 : </p><p>댓글수, 좋아요</p></div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="<c:url value="/roomdetail"/>">방이름 : </a>
              </h4>
              <div><p class="card-text">한줄소개 : </p></div>
              <div><p class="card-text">금액 : </p><p>댓글수, 좋아요</p></div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="<c:url value="/roomdetail"/>">방이름 : </a>
              </h4>
              <div><p class="card-text">한줄소개 : </p></div>
              <div><p class="card-text">금액 : </p><p>댓글수, 좋아요</p></div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="<c:url value="/roomdetail"/>">방이름 : </a>
              </h4>
              <div><p class="card-text">한줄소개 : </p></div>
              <div><p class="card-text">금액 : </p><p>댓글수, 좋아요</p></div>
            </div>
          </div>
        </div>
      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2018</p>
      </div>
      <!-- /.container -->
    </footer>




</body>
</html>