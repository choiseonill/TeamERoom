<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- Bootstrap core CSS -->
    <link href="static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="static/css/modern-business.css" rel="stylesheet">
    
    <!-- Bootstrap core JavaScript -->
<script src="static/vendor/jquery/jquery.min.js"></script>
<script src="static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


<style>

.form-reservation {
 
	width:100%;
  padding: 6px 12px;
  font-size: 14px;
  line-height: 1.42857143;
  color: #555;
  background-color: #fff;
  background-image: none;
  border: 1px solid #ccc;
  border-radius: 4px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
  -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
       -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
          transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
</style>
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
            <li class="nav-item active">
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
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Other Pages
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

      <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3">관리용 맴버 관리 페이지</h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.html">Home</a>
        </li>
        <li class="breadcrumb-item active">About</li>
      </ol>

      <!-- Intro Content -->
      <div class="row">
        <div class="col-lg-6">
        <div class="card-body">
              <div class="input-group">
              <span style="margin-right: 10px;">
	              <select class="form-control" id="sel1">
	        		<option>이름</option>
	        		<option>전화번호</option>

	      		  </select>
              </span>
                <input type="text" class="form-control" placeholder="Search for...">
                <span class="input-group-btn" style="margin-left: 10px;">
                  <button class="btn btn-secondary" type="button">Go!</button>
                </span>
              </div>
            </div>
            <div style="overflow:scroll; width:550px; height:300px; padding:10px;">
           
          		 <table class="table table-striped">
			<thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>전화번호</th>
					<th>구분</th>
				</tr>
			</thead>
				<tbody>
					<tr>
						<td>0</td>
						<td>한 솔</td>
						<td>010-3158-3521</td>
						<td>사용자</td>
					</tr>
					<tr>
						<td>1</td>
						<td>최 선 일</td>
						<td>010-7600-0241</td>
						<td>사용자</td>
					</tr>
					<tr>
						<td>2</td>
						<td>이 용 관</td>
						<td>010-1231-0241</td>
						<td>호스트</td>
					</tr>
					<tr>
						<td>3</td>
						<td>안 대 원</td>
						<td>010-1231-0241</td>
						<td>호스트</td>
					</tr>
					<tr>
						<td>4</td>
						<td>이 진 항</td>
						<td>010-1231-0241</td>
						<td>호스트</td>
					</tr>
					<tr>
						<td>5</td>
						<td>김 문 기</td>
						<td>010-1231-0241</td>
						<td>사용자</td>
					</tr>
					<tr>
						<td>6</td>
						<td>김 혜 승</td>
						<td>010-1231-0241</td>
						<td>호스트</td>
					</tr>
					
				</tbody>
				<tfoot>
				<tr>
				  <td colspan="4" class="card-footer"></td>
				</tr>
				</tfoot>
		</table>        
		</div>
		</div>
        <div class="col-lg-6">
        <div class="col-lg-6" style="height: 78px;"></div>
         		<table class="table table-condensed" >
			<thead>
				<tr>
					<th colspan="2">구분: 호스트</th>
					<th colspan="2"></th>
				</tr>
			</thead>
				<tbody>
					<tr>
						<th>이메일</th>
						<th><input type="text" class="form-reservation"></th>
						<th colspan="2"></th>
					</tr>
					<tr>
						<th>이름</th>
						<th><input type="text" class="form-reservation"></th>
						<th colspan="2"></th>
					</tr>
					<tr>
						<th>전화번호</th>
						<th><input type="text" class="form-reservation"></th>
						<th colspan="2"></th>
					</tr>
					<tr>
						<th>상태구분</th>
						<td>
							<select class="form-control" id="sel1">
		        				<option>호스트</option>
		        				<option>호스트승인대기</option>
		        				<option>사용자</option>
		      		 		 </select>
		      		 		 <th colspan="2"></th>
	      		 		</td>
					</tr>
					<tr>
						<th>가입날짜</th>
						<th><input type="text" class="form-reservation"></th>
						<th colspan="2"></th>
					</tr>
					<tr>
						<th>예금주</th>
						<th><input type="text" class="form-reservation"></th>
						<th>은행</th>
						<th><input type="text" class="form-reservation"></th>
						
					</tr>
					<tr>
						<th>계좌번호</th>
						<th colspan="3"><input type="text" class="form-reservation"></th>
					</tr>
					<tr>
						<th>사업장명</th>
						<th colspan="3">
							<select class="form-control" id="sel1">
		        				<option>201호</option>
		        				<option>202호</option>
		        				<option>203호</option>
		      		 		 </select>
					</tr>
					<tr>
						<th>사업자번호</th>
						<th colspan="3"><input type="text" class="form-reservation"></th>
					</tr>
					<tr>
						<th>사업장주소</th>
						<th colspan="3"><input type="text" class="form-reservation"></th>
					</tr>
					
				</tbody>
				<tfoot>
					<tr class="card-footer">
					  <td colspan="3"></td>
					  <td><a href="#" class="btn btn-primary" style="float: right;">&nbsp;&nbsp;저장&nbsp;&nbsp;</a></td>
					</tr>
				</tfoot>
				</table>
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