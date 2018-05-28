<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="<c:url value="static/vendor/jquery/jquery.min.js"/>"></script>
<script src="<c:url value="static/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
<!-- Bootstrap core CSS -->
<link href="<c:url value="static/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value="static/css/modern-business.css"/>" rel="stylesheet">
<title>Insert title here</title>
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

	<!-- write 영역  -->
	<div class="container">
	      <h1 class="mt-4 mb-3">
		글쓰기
      </h1>
		<table class="table table-bordered">
		
			<tbody>
					<tr>
						<th>제목:</th>
						<td><input type="text" placeholder="제목을 입력하세요. " name="title"
							id="title" class="form-control" value="${communityModify.title}"/></td>
					</tr>
					<tr>
						<th>카테고리:</th>
						<td> 
						<select class="form-control" style="width: 100px;">
			        		<option>1:1문의</option>
			        		<option>공지사항</option>
			        		<option>이벤트</option>
			        		<option>써본사람</option>
			        		
	      		  		</select>
	      		  </td>
					</tr>
					<tr>
						<th>내용:</th>
						<td><textarea cols="10" rows="10" placeholder="내용을 입력하세요. " name="body"
								id="body" class="form-control">${communityModify.body}</textarea></td>
					</tr>
					<tr>
						<th>첨부파일:</th>
						<td class="filebox preview-image"><input class="upload-name"/> <label for="file">업로드</label>
							<input type="file" id="file" name="file"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
						<a href="#" class="btn btn-primary">&nbsp;&nbsp;글쓰기&nbsp;&nbsp;</a>
						<a href="#" class="btn btn-primary">&nbsp;&nbsp;목록으로&nbsp;&nbsp;</a>
					</tr>
			</tbody>
		</table>
		<!-- /write 영역  -->
		
		<input type="hidden" id="memberId" name="memberId" value="${sessionScope.__USER__.memberId}"/>
						
		
	</div>


    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2018</p>
      </div>
      <!-- /.container -->
    </footer>



	
</body>
</html>