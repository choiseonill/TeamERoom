<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="<c:url value="../static/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
<script src="<c:url value="/static/js/jquery-3.3.1.min.js"/>"
	type="text/javascript"></script>

<script type="text/javascript">
	$().ready(
			function() {
				$(".body").hide();
				$(".trigger").click(function() {
					alert("dsadsadsa");
					$(this).toggleClass(".card-header").next('.body').slideToggle('slow')});
			});
</script>
</head>
<body>
<head><jsp:include page="/WEB-INF/view/template/head.jsp" /></head>

<!-- Page Content -->
<div class="container">

	<!-- Page Heading/Breadcrumbs -->
	<h1 class="mt-4 mb-3">이벤트</h1>
	<div class="card mb-4">
		<div class="card-body">
			<div class="input-group">
				<span style="margin-right: 10px;"> <select
					class="form-control" id="sel1">
						<option>예약자명</option>
						<option>예약자명</option>
						<option>예약자명</option>
						<option>예약자명</option>
				</select>
				</span> <input type="text" class="form-control" placeholder="Search for...">
				<span class="input-group-btn" style="margin-left: 10px;">
					<button class="btn btn-secondary" type="button">Go!</button>
				</span>
			</div>
		</div>
	</div>
	<div class="mb-4" id="accordion" role="tablist"
		aria-multiselectable="true">
		<div class="card">
			<c:forEach items="${boardList}" var="board">
				<a class="trigger" href="javascript:void(0); onfocus="this.blur();"><div
						class="card-header" role="tab" id="headingOne">
				<h5 class="mb-0">
					<a style="margin-right: 130px;">게시 일 : ${board.write_date}</a> <a
						style="margin-right: 130px;">제목 : ${board.title}</a> <a
						style="margin-right: 130px;">작성자 : ${board.ID }</a> <a
						style="margin-right: 20px;">조회수 : ${board.viewCount }</a>
				</h5>
		</div></a>
		<!--  
          -->
		<div id="body" class="body" role="tabpanel"
			aria-labelledby="headingOne"; >
			<table class="table table-condensed">
				<tr>
					<td colspan="2" height="130px">${board.body }</td>
				</tr>
				</tbody>
			</table>
			<table class="table table-condensed">
				<thead>
					<tr>
						<td class="card-footer"><span style='float: right'> <a
								href="/board/boardWrite" class="btn btn-primary"
								style="float: right;">&nbsp;&nbsp;글쓰기&nbsp;&nbsp;</a>
						</span> <span style='float: left'> <a href="#"
								class="btn btn-primary">&nbsp;&nbsp;수정&nbsp;&nbsp;</a> <a
								href="#" class="btn btn-primary">&nbsp;&nbsp;삭제&nbsp;&nbsp;</a>
								<a href="#" class="btn btn-primary">&nbsp;&nbsp;저장&nbsp;&nbsp;</a>
						</span></td>
					</tr>
				</thead>
			</table>
			<!-- /게시판 부분 -->
		</div>
		</c:forEach>
	</div>

</div>
</div>
</div>

<!-- /.container -->

<!-- Footer -->
<footer class="py-5 bg-dark">
<div class="container">
	<p class="m-0 text-center text-white">Copyright &copy; Your Website
		2018</p>
</div>
<!-- /.container --> </footer>

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>