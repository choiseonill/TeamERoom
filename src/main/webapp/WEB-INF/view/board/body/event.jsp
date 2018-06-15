		<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="<c:url value="/static/js/jquery-3.3.1.min.js"/>"
	type="text/javascript"></script>
<script type="text/javascript">
	$().ready(
			function() {
				$(".body").hide();
				$(".card-header").click(
						function() {
							$(this).toggleClass(".card-header").next('.body')
									.slideToggle('fast')
						});
			});
</script>
</head>
<!-- Page Heading/Breadcrumbs -->
<div class="container">
	<h1 class="mt-4 mb-3" style="margin-top: 80px;">이벤트</h1>
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
				<div class="card-header" role="tab" id="headingOne">
					<h5 class="mb-0">
						<a style="margin-right: 130px;">게시 일 : ${board.write_date}</a> <a
							style="margin-right: 130px;">제목 : ${board.title}</a> <a
							style="margin-right: 130px;">작성자 : ${board.ID }</a> <a
							style="margin-right: 20px;">조회수 : ${board.viewCount }</a>
					</h5>
				</div>
				<div id="body" class="body" role="tabpanel"
					aria-labelledby="headingOne"; >
					<table class="table table-condensed">
						<tr>
							<td colspan="2" height="130px">
								${board.body}
								<img src="C:\\Users\\Admin\\Desktop\\팀프로젝트 종합\\boardImage\\" + ${board.fileName} >
							</td>
						</tr>
						</tbody>
					</table>
					<table class="table table-condensed">
						<thead>
							<tr>
								<td class="card-footer"><span style='float: right'>
										<a href="/board/write" class="btn btn-primary"
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
				<div style="height: 3px;">
					</br>
				</div>
			</c:forEach>
		</div>
	</div>
</div>