<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap core CSS -->



<link
	href="<c:url value="/static/vendor/bootstrap/css/bootstrap.min.css"/>"
	rel="stylesheet">
<link href="<c:url value="/static/css/business-frontpage.css"/>"
	rel="stylesheet">


<!-- Custom styles for this template -->
<link href="<c:url value="/static/css/modern-business.css"/>"
	rel="stylesheet">

<!-- Bootstrap core JavaScript -->
<script src="<c:url value="/static/vendor/jquery/jquery.min.js"/>"></script>
<script
	src="<c:url value="/static/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>

<title>Insert title here</title>

<script src="<c:url value="/static/js/jquery-3.3.1.min.js"/>"
	type="text/javascript"></script>
<script type="text/javascript">
	$().ready(function() {
		var scrollTop = $(window).scrollTop();
		if (scrollTop < 500) {
			$("#card").css('top', 0);
		} else {
			$("#card").css('top', (scrollTop - 500) + 'px');
		}

		$(window).scroll(function() {
			scrollTop = $(window).scrollTop();
			if (scrollTop < 500) {

				$("#card").stop().animate({
					"top" : 0
				}, 500);
			}

			else {
				$("#card").stop().animate({
					"top" : (scrollTop - 500) + 'px'
				}, 500);
			}
		});
	
	
		$("#nextBtn").click(function() {
			if($("#month").html() == ${calendar.get(1)}){
				$("#year").html(${calendar.get(5)});	
				$("#month").html(${calendar.get(6)});
				$("#firstMonth").css("display", "none");	
				$("#nxtMonth").css("display", "block");				
			}

			else if($("#month").html() == ${calendar.get(6)}){
				alert(" 예약은 오늘 날짜로 부터 한달 후 까지만 가능합니다. ")
			}
		});
	  
		$("#beforeBtn").click(function() {
			
			if($("#month").html() == ${calendar.get(6)}){				
				$("#year").html(${calendar.get(0)});	
				$("#month").html(${calendar.get(1)});
				$("#nxtMonth").css("display", "none");
				$("#firstMonth").css("display", "block");
				
			}
			else if($("#month").html() == ${calendar.get(1)}){
				alert(" 예약은 오늘 날짜로 부터 한달 후 까지만 가능합니다. ")
			}
		});
	});
	
	  
	
	
	  
	  
	
	 
	
</script>
<style>
.days {
	width: 95px;
	height: 50px;
	background-color: #3ddad7;
	margin: 1px;
	display: inline-block;
}

#firstMonth {
	display: block;
}

#nxtMonth {
	display: none;
}
</style>



</head>

<jsp:include page="/WEB-INF/view/template/head.jsp" />

<!-- Header with Background Image -->
<header class="business-header">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="display-3 text-center text-white mt-4">main img</h1>
			</div>
		</div>
	</div>
</header>



<!-- Page Content -->
<div class="container">
	<div class="row">
		<div class="col-lg-8">
			<h5 class="card-header">${dRoom.title}/${room.roomTitle}</h5>
			<div class="card-body">
				<div class="form-group">
					<span> <strong>돈</strong> <em>시간</em>
				</div>
				<div>
					<h4>하우스카페 너디블루 그지같네</h4>
					<span> </span>
					<p>내용 설명</p>
				</div>
				<ul>
					<li><span>공간 유형</span> <span>파티룸, 카페</span></li>
					<li><span>예약 시간</span> <span>최소 2시간부터</span></li>
					<li><span>예약 인원</span> <span>최소 1명 ~ 최대 20명</span></li>
					<li><span>예약 결제</span> <span>...</span></li>
				</ul>
			</div>
			<div>
				<h5 class="card-header">날짜 선택</h5>
				<div class="card-body">
					<table>
						<colgroup>
							<col style="width: auto;" span="7">
						</colgroup>
						<div>

							<input type="button" id="beforeBtn" name="beforeBtn" value="<"/>

							<span id="yearNmonth" style="margin-left: 40%;"> <span
								id="year">${calendar.get(0)}</span>. <span id="month">${calendar.get(1)}</span>.
							</span> <input style="margin-left: 43%;" type="button" id="nextBtn"
								name="nextBtn" value=">" />
						</div>
						<thead>
							<tr>
								<th>SUN</th>
								<th>MON</th>
								<th>TUE</th>
								<th>WED</th>
								<th>THU</th>
								<th>FRI</th>
								<th>SAT</th>
							</tr>
						</thead>

						<tbody id="firstMonth">

							<%-- 달력 보여주기 --%>

							<%-- 7일 마다  잘라주기 위한 변수 --%>
							<c:set var="j" value="7" />

							<tr>
								<div>
									<%-- 그주의 토요일(달력상 마지막 날이 토요일이기때문에 그 부분에서 다름 줄로 넘긴다.) 구하는 공식 --%>
									<c:set var="firstSat" value="${7-calendar.get(4)}" />
									<c:set var="week" value="${firstSat%7}" />

									<tr>
										<c:forEach begin="1" end="${calendar.get(4)}">
											<td><div class="days">x</div></td>
										</c:forEach>

										<c:forEach begin="1" end="${calendar.get(3)}" var="i">
											<c:choose>

												<%-- 토요일은 파란색 --%>
												<c:when test="${i%j == week }">
													<td><div style="color: #0100FF" class="days"
															id="day${i}">${i}</div></td>
									</tr>
									<tr>
										</c:when>

										<%-- 일요일은 빨간색 --%>
										<c:when test="${i%j == week+1 }">
											<td><div style="color: #FF0000" class="days"
													id="day${i}">${i}</div></td>
										</c:when>

										<c:otherwise>
											<td><div class="days" id="day${i}">${i}</div></td>
											<c:if test="${i==calendar.get(3)}">
									</tr>
									</c:if>
									</c:otherwise>
									</c:choose>
									</c:forEach>
								</div>
							</tr>
						</tbody>

						<tbody id="nxtMonth">
							<tr>
								<div>
									<%-- 그주의 토요일(달력상 마지막 날이 토요일이기때문에 그 부분에서 다름 줄로 넘긴다.) 구하는 공식 --%>
									<c:set var="secondSat" value="${7-calendar.get(9)}" />
									<c:set var="week2" value="${secondSat%7}" />

									<tr>
										<c:forEach begin="1" end="${calendar.get(9)}">
											<td><div class="days">x</div></td>
										</c:forEach>

										<c:forEach begin="1" end="${calendar.get(8)}" var="q">
											<c:choose>

												<%-- 토요일은 파란색 --%>
												<c:when test="${q%j == week2 }">
													<td><div style="color: #0100FF" class="days"
															id="day${q}">${q}</div></td>
									</tr>
									<tr>
										</c:when>

										<%-- 일요일은 빨간색 --%>
										<c:when test="${q%j == week2+1 }">
											<td><div style="color: #FF0000" class="days"
													id="day${q}">${q}</div></td>
										</c:when>

										<c:otherwise>
											<td><div class="days" id="day${q}">${q}</div></td>
											<c:if test="${q==calendar.get(8)}">
									</tr>
									</c:if>
									</c:otherwise>
									</c:choose>
									</c:forEach>
								</div>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div>
				<h5 class="card-header">시간 선택</h5>
				<div class="card-body">
					<div>
						<ul
							style="padding-left: 15px; overflow: auto; white-space: nowrap; border: 1px solid; width: 700px; height: 55px; list-style: none; font-size: 30px;">
							<li
								style="margin-right: 15px; width: 40px; float: left; text-decoration: none;">0</li>
							<li
								style="margin-right: 15px; width: 40px; float: left; text-decoration: none;">1</li>
							<li
								style="margin-right: 15px; width: 40px; float: left; text-decoration: none;">2</li>
							<li
								style="margin-right: 15px; width: 40px; float: left; text-decoration: none;">3</li>
							<li
								style="margin-right: 15px; width: 40px; float: left; text-decoration: none;">4</li>
							<li
								style="margin-right: 15px; width: 40px; float: left; text-decoration: none;">5</li>
							<li
								style="margin-right: 15px; width: 40px; float: left; text-decoration: none;">6</li>
							<li
								style="margin-right: 15px; width: 40px; float: left; text-decoration: none;">7</li>
							<li
								style="margin-right: 15px; width: 40px; float: left; text-decoration: none;">8</li>
							<li
								style="margin-right: 15px; width: 40px; float: left; text-decoration: none;">9</li>
							<li
								style="margin-right: 15px; width: 40px; float: left; text-decoration: none;">10</li>
							<li
								style="margin-right: 15px; width: 40px; float: left; text-decoration: none;">11</li>
							<li
								style="margin-right: 15px; width: 40px; float: left; text-decoration: none;">12</li>
							<li
								style="margin-right: 15px; width: 40px; float: left; text-decoration: none;">13</li>
							<li
								style="margin-right: 15px; width: 40px; float: left; text-decoration: none;">14</li>
							<li
								style="margin-right: 15px; width: 40px; float: left; text-decoration: none;">15</li>
							<li
								style="margin-right: 15px; width: 40px; float: left; text-decoration: none;">16</li>
							<li
								style="margin-right: 15px; width: 40px; float: left; text-decoration: none;">17</li>
							<li
								style="margin-right: 15px; width: 40px; float: left; text-decoration: none;">18</li>
							<li
								style="margin-right: 15px; width: 40px; float: left; text-decoration: none;">19</li>
							<li
								style="margin-right: 15px; width: 40px; float: left; text-decoration: none;">20</li>
							<li
								style="margin-right: 15px; width: 40px; float: left; text-decoration: none;">21</li>
							<li
								style="margin-right: 15px; width: 40px; float: left; text-decoration: none;">22</li>
							<li
								style="margin-right: 15px; width: 40px; float: left; text-decoration: none;">23</li>
						</ul>
					</div>
				</div>
			</div>
			<div>
				<h5 class="card-header">인원수 선택</h5>
				<div class="card-body">
					<div class="input-group">
						<span class="input-group-btn">
							<button type="button" class="btn btn-default btn-number"
								disabled="disabled" data-type="minus" data-field="quant[1]">
								<span class="glyphicon glyphicon-minus"></span>
							</button>
						</span> <input type="text" name="quant[1]"
							class="form-control input-number" value="1" min="1" max="10">
						<span class="input-group-btn">
							<button type="button" class="btn btn-default btn-number"
								data-type="plus" data-field="quant[1]">
								<span class="glyphicon glyphicon-plus"></span>
							</button>
						</span>
					</div>
				</div>
			</div>

			<!-- Comments Form -->
			<div class="card my-4">
				<h5 class="card-header">예약자 정보</h5>
				<div class="card-body">
					<div class="form-group">
						<dl>
							<dt>
								<label for="name">예약자</label>
							</dt>
							<dd>
								<div>
									<input type="text" name="name"
										value="${sessionScope.__USER__.name}" required="required">
								</div>
							</dd>
						</dl>
						<dl>
							<dt>
								<label for="name">연락처</label>
							</dt>
							<dd>
								<div>
									<input type="text" name="phoneNumber"
										value="${sessionScope.__USER__.phone}" required="required">
								</div>
							</dd>
						</dl>
						<dl>
							<dt>
								<label for="name">이메일</label>
							</dt>
							<dd>
								<div>
									<input type="text" name="email"
										value="${sessionScope.__USER__.email}" required="required">
								</div>
							</dd>
						</dl>
					</div>
					<p>예약자 정보 어쩌구 저쩌구 확인해주세요 ㅇㅅㅇ</p>
				</div>
			</div>
			<div class="card my-4">
				<h5 class="card-header">호스트 정보</h5>
				<div class="card-body">
					<div class="form-group">
						<dl>
							<dt>공간 상호</dt>
							<dd>${host.bizName}</dd>
						</dl>
						<dl>
							<dt>대표자명</dt>
							<dd>${host.name}</dd>
						</dl>
						<dl>
							<dt>소재지</dt>
							<dd>${room.address}</dd>
						</dl>
						<dl>
							<dt>사업자 번호</dt>
							<dd>${host.bizNumber}</dd>
						</dl>
						<dl>
							<dt>연락처</dt>
							<dd>${room.roomPhone}</dd>
						</dl>
					</div>
				</div>
			</div>
			<div class="card my-4">
				<h5 class="card-header">시설안내</h5>
				<div class="card-body">
					<div class="form-group">
						<ul>

							<c:forEach items="${info}" var="info">
								<li>${info}</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>

			<div class="card my-4">
				<h5 class="card-header">예약시 주의사항</h5>
				<div class="card-body">
					<div class="form-group">
						<ul>
							<c:forEach items="${warn}" var="warn">
								<li>${warn}</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>

			<div class="card my-4">
				<h5 class="card-header">위치정보</h5>
				<div class="card-body">
					<div class="form-group">공간확보</div>
				</div>
			</div>



		</div>
		<!-- Sidebar Widgets Column -->
		<div class="col-md-4">
			<!-- Side Widget -->
			<div class="card my-4" id="card">
				<h5 class="card-header">세부공간 선택</h5>
				<div class="card-body">You can put anything you want inside of
					these side widgets. They are easy to use, and feature the new
					Bootstrap 4 card containers!</div>
			</div>

		</div>

	</div>
	<!-- /.row -->


	<!-- /.row -->
</div>
<!-- /.container -->

<!-- Footer -->
<jsp:include page="/WEB-INF/view/template/footer.jsp" />



</html>