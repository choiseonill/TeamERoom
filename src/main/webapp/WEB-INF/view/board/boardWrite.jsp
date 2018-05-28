<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="static/vendor/jquery/jquery.min.js"></script>
<script src="static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" 
		src="<c:url value="static/js/jquery-3.3.1.min.js"/>">
</script>
<script type="text/javascript">
	$().ready(function() {
		$("#writeBtn").click(function() {
			var writeForm = $("#writeForm");
			writeForm.attr({
				"method" : "post",
				"action" : "/write"
			});
			writeForm.submit();
		});
		
	});
</script>
<!-- Bootstrap core CSS -->
<link href="static/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="static/css/modern-business.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="/WEB-INF/view/template/head.jsp"/>
	<!-- Page Content -->

	<!-- write 영역  -->
	<div class="container">
		<h1 class="mt-4 mb-3">글쓰기</h1>
		<table class="table table-bordered">
			<form:form modelAttribute="writeForm" enctype="multipart/form-data">
				<tbody>
					<tr>
						<th>제목:</th>
						<td><input type="text" placeholder="제목을 입력하세요. " name="title"
							id="title" class="form-control" value="${BoardVO.B_title}" /></td>
					</tr>
					<tr>
						<th>카테고리:</th>
						<td><select class="form-control" style="width: 100px;"${BoardVO.type}">
								<option>1:1문의</option>
								<option>공지사항</option>
								<option>이벤트</option>
								<option>써본사람</option>
						</select></td>
					</tr>
					<tr>
						<th>내용:</th>
						<td><textarea cols="10" rows="10" placeholder="내용을 입력하세요. "
								name="body" id="body" class="form-control">${BoardVO.B_body}</textarea></td>
					</tr>
					<tr>
						<th>첨부파일:</th>
						<td class="filebox preview-image"><input class="upload-name" />
							<label for="file">업로드</label> <input type="file" id="file"
							name="file" value="${BoardVO.B_file}" /></td>
					</tr>
					<tr>
						<td colspan="2"><button id="writeBtn" >&nbsp;&nbsp;글쓰기&nbsp;&nbsp;</button>
							<a href="#" class="btn btn-primary">&nbsp;&nbsp;목록으로&nbsp;&nbsp;</a>
					</tr>
				</tbody>
			</form:form>
		</table>
		<!-- /write 영역  -->

		<input type="hidden" id="memberId" name="memberId"
			value="${sessionScope.__USER__.memberId}" />


	</div>


	<!-- Footer -->
	<footer class="py-5 bg-dark">
	<div class="container">
		<p class="m-0 text-center text-white">Copyright &copy; Your
			Website 2018</p>
	</div>
	<!-- /.container --> </footer>




</body>
</html>