<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="<c:url value="/static/js/jquery-3.3.1.min.js"/>"
	type="text/javascript"></script>
<script type="text/javascript">
	$().ready(function() {
		$("#writeBtn").click(function() {
			var writeForm = $("#writeForm");
			writeForm.attr({
				"method" : "post",
				"action" : "<c:url value="/board/boardWrite"/>"
			});
			writeForm.submit();
		});

	});
</script>
<title>Insert title here</title>
</head>
<body>
	<head>	<jsp:include page="/WEB-INF/view/template/head.jsp"/></head>
	<!-- write 영역  -->
	<div class="container">
		<h1 class="mt-4 mb-3">글쓰기</h1>
		<table class="table table-bordered">
			<form:form modelAttribute="writeForm" enctype="multipart/form-data">
				<tbody>
					<tr>
						<th>제목:</th>
						<td><input type="text" placeholder="제목을 입력하세요. " name="title"
							id="title" class="form-control" value="${BoardVO.title}" /></td>
						<tr>
	                  <th>카테고리:</th>
		                  <td>
		                    <select type="int" id="type" name="type" list="list" style="width:20%;">
	                        <option value="1">1:1문의</option>
	                        <option value="2">공지사항</option>
	                        <option value="3">써본사람</option>
	                        <option value="4">이벤트</option>
	                      </datalist>
	                      </select>
		                  </td>
	               </tr>
					<tr>
						<th>내용:</th>
						<td><textarea cols="10" rows="10" placeholder="내용을 입력하세요. "
								name="body" id="body" class="form-control">${BoardVO.body}</textarea></td>
					</tr>
			 		<%-- <tr>
						<th>첨부파일:</th>
						<td class="filebox preview-image"><input class="upload-name" />
							<label for="file">업로드</label> <input type="file" id="file"
							name="file" value="${BoardVO.B_file}" /></td>
					</tr> --%>
					<tr>
						<td colspan="2"><button class="btn btn-primary" id="writeBtn">&nbsp;&nbsp;글쓰기&nbsp;&nbsp;</button>
							<a href="#" class="btn btn-primary">&nbsp;&nbsp;목록으로&nbsp;&nbsp;</a>
					</tr>
				</tbody>
			</form:form>
		</table>
		<!-- /write 영역  -->
</body>

</html>