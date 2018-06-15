<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이벤트</title>

<script src="<c:url value="static/vendor/jquery/jquery.min.js"/>"></script>
<script src="<c:url value="static/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
<!-- Bootstrap core CSS -->
<link href="static/vendor/bootstrap/css/bootstrap.min.css"rel="stylesheet">

<!-- Custom styles for this template -->
<link href="static/css/modern-business.css" rel="stylesheet">
</head>
  <body>

    <!-- Navigation -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="index.html">Start Bootstrap</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="about.html">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="services.html">Services</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="contact.html">Contact</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Portfolio
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                <a class="dropdown-item" href="portfolio-1-col.html">1 Column Portfolio</a>
                <a class="dropdown-item" href="portfolio-2-col.html">2 Column Portfolio</a>
                <a class="dropdown-item" href="portfolio-3-col.html">3 Column Portfolio</a>
                <a class="dropdown-item" href="portfolio-4-col.html">4 Column Portfolio</a>
                <a class="dropdown-item" href="portfolio-item.html">Single Portfolio Item</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Blog
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                <a class="dropdown-item" href="blog-home-1.html">Blog Home 1</a>
                <a class="dropdown-item" href="blog-home-2.html">Blog Home 2</a>
                <a class="dropdown-item" href="blog-post.html">Blog Post</a>
              </div>
            </li>
            <li class="nav-item active dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Other Pages
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                <a class="dropdown-item" href="full-width.html">Full Width Page</a>
                <a class="dropdown-item" href="sidebar.html">Sidebar Page</a>
                <a class="dropdown-item active" href="faq.html">FAQ</a>
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

      <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3">
		공지사항
      </h1>
         <div class="card mb-4">
            <div class="card-body">
              <div class="input-group">
              <span style="margin-right: 10px;">
	              <select class="form-control" id="sel1">
	        		<option>예약자명</option>
	        		<option>예약자명</option>
	        		<option>예약자명</option>
	        		<option>예약자명</option>
	      		  </select>
              </span>
                <input type="text" class="form-control" placeholder="Search for...">
                <span class="input-group-btn" style="margin-left: 10px;">
                  <button class="btn btn-secondary" type="button">Go!</button>
                </span>
              </div>
            </div>
            </div>
	  
      <div class="mb-4" id="accordion" role="tablist" aria-multiselectable="true">
        <div class="card">
          <div class="card-header" role="tab" id="headingOne">
            <h5 class="mb-0">
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne" style="margin-right: 130px;">게시 일: 2018.02.02</a>
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne" style="margin-right: 130px;">제목 : 용관이네방</a>
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne" style="margin-right: 130px;">작성자 : 이용관</a>
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne" style="margin-right: 20px;">조회수 : 0</a>
            </h5>
          </div>

          <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne">
               <table class="table table-condensed">
					<thead>
						<tr>
							<td>제목</td>
							<td>${communitydetail.writeDate}
							
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>작성일</td>
							<td>${communitydetail.writeDate}
							<span style='float: right'>조회수 : 123</span></td>
						</tr>
						<tr>
							<td>글쓴이</td>
								<td>${communitydetail.memberVO.nickname}
							</td>
						</tr>
						
				
						<tr>
							<td colspan="2" height="130px">
								<p>본문 내용 들어갈곳</p>
							</td>
						</tr>
					</tbody>
				</table>
				<table class="table table-condensed">
					<thead>
						<tr>
							<td class="card-footer">
								<span style='float: right' >
									<a href="#" class="btn btn-primary">&nbsp;&nbsp;수정&nbsp;&nbsp;</a>
									<a href="#" class="btn btn-primary">&nbsp;&nbsp;삭제&nbsp;&nbsp;</a>
									<a href="#" class="btn btn-primary">&nbsp;&nbsp;저장&nbsp;&nbsp;</a>
								</span>
							</td>
						</tr>
					</thead>
				</table>
				<!-- /게시판 부분 -->
          </div>
        </div>
        <div class="card">
          <div class="card-header" role="tab" id="headingTwo">
            <h5 class="mb-0">
            <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="#collapseTwo" style="margin-right: 130px;">게시 일: 2018.02.02</a>
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="#collapseTwo" style="margin-right: 130px;">제목: 용관이네방</a>
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="#collapseTwo" style="margin-right: 130px;">작성자: 이용관</a>
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="#collapseTwo" style="margin-right: 20px;">조회수: 0</a>
            </h5>
          </div>
          <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo">
                <table class="table table-condensed">
					<thead>
						<tr>
							<td>제목</td>
							<td>${communitydetail.writeDate}
							
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>작성일</td>
							<td>${communitydetail.writeDate}
							<span style='float: right'>조회수 : 123</span></td>
						</tr>
						<tr>
							<td>글쓴이</td>
								<td>${communitydetail.memberVO.nickname}
							</td>
						</tr>
						
				
						<tr>
							<td colspan="2" height="130px">
								<p>본문 내용 들어갈곳</p>
							</td>
						</tr>
					</tbody>
				</table>
				<table class="table table-condensed">
					<thead>
						<tr>
							<td class="card-footer">
								<span style='float: right' >
									<a href="#" class="btn btn-primary">&nbsp;&nbsp;수정&nbsp;&nbsp;</a>
									<a href="#" class="btn btn-primary">&nbsp;&nbsp;삭제&nbsp;&nbsp;</a>
									<a href="#" class="btn btn-primary">&nbsp;&nbsp;저장&nbsp;&nbsp;</a>
								</span>
							</td>
						</tr>
					</thead>
				</table>
				<!-- /게시판 부분 -->
          </div>
        </div>
        <div class="card">
          <div class="card-header" role="tab" id="headingThree">
            <h5 class="mb-0">
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseThree" style="margin-right: 130px;">게시 일: 2018.02.02</a>
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseThree" style="margin-right: 130px;">제목: 용관이네방</a>
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseThree" style="margin-right: 130px;">작성자: 이용관</a>
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseThree" style="margin-right: 20px;">조회수: 0</a>
            </h5>
          </div>
          <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree">
           <table class="table table-condensed">
					<thead>
						<tr>
							<td>제목</td>
							<td>${communitydetail.writeDate}
							
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>작성일</td>
							<td>${communitydetail.writeDate}
							<span style='float: right'>조회수 : 123</span></td>
						</tr>
						<tr>
							<td>글쓴이</td>
								<td>${communitydetail.memberVO.nickname}
							</td>
						</tr>
						
				
						<tr>
							<td colspan="2" height="130px">
								<p>본문 내용 들어갈곳</p>
							</td>
						</tr>
					</tbody>
				</table>
				<table class="table table-condensed">
					<thead>
						<tr>
							<td class="card-footer">
								<span style='float: right' >
									<a href="#" class="btn btn-primary">&nbsp;&nbsp;수정&nbsp;&nbsp;</a>
									<a href="#" class="btn btn-primary">&nbsp;&nbsp;삭제&nbsp;&nbsp;</a>
									<a href="#" class="btn btn-primary">&nbsp;&nbsp;저장&nbsp;&nbsp;</a>
								</span>
							</td>
						</tr>
					</thead>
					
				</table>
				<!-- /게시판 부분 -->
				
          </div>
        <div>
        <a href="#" class="btn btn-primary" style="float: right; margin-top: 10px; margin-bottom: 10px;">&nbsp;&nbsp;글쓰기&nbsp;&nbsp;</a>
        </div>
      </div>
      </div>
    </div>
    
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2018</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>