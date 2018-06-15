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
<link href="<c:url value="static/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value="static/css/modern-business.css"/>" rel="stylesheet">

<!-- Bootstrap core JavaScript -->
<script src="<c:url value="static/vendor/jquery/jquery.min.js"/>"></script>
<script src="<c:url value="static/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>

</head>
<jsp:include page="/WEB-INF/view/template/head.jsp" />
    <!-- Page Content -->
    <div class="container">

      <h1 class="my-4" style="text-align:center;">써 본 사람</h1>

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
<jsp:include page="/WEB-INF/view/template/footer.jsp" />
</body>
</html>