<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="<c:url value="static/vendor/jquery/jquery.min.js"/>"></script>
<script src="<c:url value="static/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
<!-- Bootstrap core CSS -->
<link href="<c:url value="static/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">


<!-- Custom styles for this template -->
<link href="<c:url value="static/css/modern-business.css"/>" rel="stylesheet">
<!-- modal css -->

<link href="<c:url value="static/css/modal.css"/>" rel="stylesheet">

<script src="<c:url value="/static/js/modal.js"/>"
	type="text/javascript"></script>




<style>
.form-reservation {
 

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
		호스트 예약관리
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
            <div style="margin-bottom: 10px; text-align: center;" >
           		 <button class="btn btn-secondary" type="button" style="margin-left: 10px; margin-right: 10px;">당일</button>
           		 <button class="btn btn-secondary" type="button" style="margin-left: 10px; margin-right: 10px;">일주일</button>
           		 <button class="btn btn-secondary" type="button" style="margin-left: 10px; margin-right: 10px;">1개월</button>
           		 <button class="btn btn-secondary" type="button" style="margin-left: 10px; margin-right: 10px;">3개월</button>
           		 <button class="btn btn-secondary" type="button" style="margin-left: 10px; margin-right: 10px;">6개월</button>
           		 <button class="btn btn-secondary" type="button" style="margin-left: 10px; margin-right: 10px;">1년</button>
            </div>
          </div>
      <div class="mb-4" id="accordion" role="tablist" aria-multiselectable="true">
        <div class="card">
          <div class="card-header" role="tab" id="headingOne">
            <h5 class="mb-0">
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne" style="margin-right: 130px;">예약 날짜: 2018.02.02</a>
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne" style="margin-right: 130px;">예약 룸명: 용관이네방</a>
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne" style="margin-right: 130px;">예약자명: 이용관</a>
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne" style="margin-right: 20px;">예약 상태: 승인대기</a>
            </h5>
          </div>

          <div id="collapseOne" class="collapse" role="tabpanel" aria-labelledby="headingOne">
            <div class="card-body">
              <div style="margin-bottom: 20px;" class="card-header">
              	<div style="display: inline-block; width: 500px; text-align: center;">호스트</div>
              	<div style="display: inline-block; width: 500px; text-align: center;">예약자</div>
              </div>
              <div style="margin-bottom: 10px;">
             	 
 				 <div style="display: inline-block;"><span style="margin-right: 10px;">사업장명 : </span><input type="text" class="form-reservation" disabled></div>
 				 <div style="display: inline-block; margin-right: 10px;">호스트명 : <input type="text" class="form-reservation" disabled></div>
 				 
             	 <div style="display: inline-block; margin-right: 10px;"><span style="margin-right: 10px;">예약자명 &nbsp; : </span><input type="text" class="form-reservation"></div>
             	 <div style="display: inline-block; margin-right: 20px;" ><span style="margin-right: 10px;">&nbsp; &nbsp;이메일 &nbsp;: </span><input type="text" class="form-reservation"></div>
          
              </div>
              <div style="margin-bottom: 10px;">
		      	
		      	<div style="display: inline-block;"><span style="margin-right: 10px;">전화번호 : </span><input type="text" class="form-reservation"></div>
		      	<div style="display: inline-block; margin-right: 10px;">&nbsp;&nbsp; 주소 &nbsp; : &nbsp; <input type="text" class="form-reservation"></div>
		      	
		      	<div style="display: inline-block; margin-right: 10px;"><span style="margin-right: 10px;">예약날짜 &nbsp; : </span><input type="text" class="form-reservation"></div>
		      	<div style="display: inline-block; margin-right: 20px;"><span style="margin-right: 10px;">예약시간 &nbsp;: </span> <input type="text" class="form-reservation"></div>
		      
		      </div>
		      <div style="margin-bottom: 10px;">
		      	
		      	<div style="display: inline-block;"><span style="margin-right: 10px;">&nbsp;&nbsp; 예금주 &nbsp;: </span><input type="text" class="form-reservation"></div>
		      	<div style="display: inline-block; margin-right: 10px;">&nbsp;&nbsp; 은행 &nbsp; :&nbsp; <input type="text" class="form-reservation"></div>
		      	
		      	<div style="display: inline-block; margin-right: 10px;"><span style="margin-right: 10px;">전화번호 &nbsp; : </span><input type="text" class="form-reservation"></div>
		      	<div style="display: inline-block; margin-right: 20px;"><span style="margin-right: 10px;">예약상태 &nbsp;: </span><input type="text" class="form-reservation"></div>
		      
		      </div>
		      <div style="margin-bottom: 10px;">
		      	<div style="display: inline-block;"><span style="margin-right: 10px;">계좌번호 : </span><input type="text" class="form-reservation" style="width: 420px; margin-right: 10px;"></div>
		      	
		      	<div style="display: inline-block; margin-right: 10px;"><span style="margin-right: 10px;">예약공간명 :</span><input type="text" class="form-reservation"></div>
		      	<div style="display: inline-block; margin-right: 20px;">상세공간명 :&nbsp; <input type="text" class="form-reservation"></div>
		     
		      </div>
		      <div style="margin-bottom: 10px; margin-left: 510px;" >
		      	<div style="display: inline-block; vertical-align: top;"><span style="margin-right: 10px;">요청사항 &nbsp; :</span></div>
			 	<div style="display: inline-block;"><textarea rows="5" cols="58" class="form-reservation"></textarea></div>
			  </div>
			  
			  <!-- Trigger/Open The Modal -->
			   <div class="card-footer">
             		 <a href="#" class="btn btn-primary">예약 승인</a>
             		 <a href="#" class="btn btn-primary" id="myBtn2">예약 수정</a>
             		 <a href="#" class="btn btn-primary" id="myBtn">예약 취소</a>
           	   </div>
           	   <!-- /Trigger/Open The Modal -->
           	   
				<!-- The Modal -->
				<div id="myModal" class="modal">
				
				  <!-- Modal content -->
				  <div class="modal-content">
				   <span class="close">&times;</span>
				   <div class="card-header" style="text-align: center;"> <h3>해당공간예약을 취소하시겠습니까?</h3></div>
				   <div class="card-body" style="height: 200px; text-align: center;">취소된 내용 노출 자리~</div>
				    <div style="text-align: center;">
				   		 <div class="card-footer" id="myBtn">
             		 		<a href="#" class="btn btn-primary">&nbsp;&nbsp;예약취소&nbsp;&nbsp;</a>
             		 		<a href="#" class="btn btn-primary">&nbsp;&nbsp;뒤로가기&nbsp;&nbsp;</a>
           	   			 </div>
				    </div>
				  </div>
				</div>
			  <!-- /The Modal -->
			  
			  <!-- The Modal -->
				<div id="myModal2" class="modal">
				
				  <!-- Modal content -->
				  <div class="modal-content">
				   <span class="close">&times;</span>
				   <div class="card-header" style="text-align: center;"> <h3>해당공간예약 내용을 수정 하시겠습니까?</h3></div>
				   <div class="card-body" style="height: 200px; text-align: center;">수정된 내용 노출 자리~</div>
				    <div style="text-align: center;">
				   		 <div class="card-footer" id="myBtn2">
             		 		<a href="#" class="btn btn-primary">&nbsp;&nbsp;수정완료&nbsp;&nbsp;</a>
             		 		<a href="#" class="btn btn-primary">&nbsp;&nbsp;뒤로가기&nbsp;&nbsp;</a>
           	   			 </div>
				    </div>
				  </div>
				</div>
			  <!-- /The Modal -->
			  
            </div>
          </div>
        </div>
        <div class="card">
          <div class="card-header" role="tab" id="headingTwo">
            <h5 class="mb-0">
            <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo" style="margin-right: 130px;">예약 날짜: 2018.02.02</a>
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo" style="margin-right: 130px;">예약 룸명: 용관이네방</a>
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo" style="margin-right: 130px;">예약자명: 이용관</a>
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo" style="margin-right: 20px;">예약 상태: 승인대기</a>
            </h5>
          </div>
          <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo">
            <div class="card-body">
              Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
            </div>
          </div>
        </div>
        <div class="card">
          <div class="card-header" role="tab" id="headingThree">
            <h5 class="mb-0">
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseThree" style="margin-right: 130px;">예약 날짜: 2018.02.02</a>
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseThree" style="margin-right: 130px;">예약 룸명: 용관이네방</a>
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseThree" style="margin-right: 130px;">예약자명: 이용관</a>
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseThree" style="margin-right: 20px;">예약 상태: 승인대기</a>
            </h5>
          </div>
          <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree">
            <div class="card-body">
              Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
            </div>
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


  </body>

</html>