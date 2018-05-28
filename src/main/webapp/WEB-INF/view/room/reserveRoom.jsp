<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap core CSS -->



<link href=<c:url value="static/vendor/bootstrap/css/bootstrap.min.css"/>
	rel="stylesheet">
<link href=<c:url value="static/css/business-frontpage.css"/> rel="stylesheet">


<!-- Custom styles for this template -->
<link href="<c:url value="static/css/modern-business.css"/>" rel="stylesheet">

<!-- Bootstrap core JavaScript -->
<script src="<c:url value="static/vendor/jquery/jquery.min.js"/>"></script>
<script src="<c:url value="static/vendor/bootstrap/js/bootstrap.bundle.min.js"/>" ></script>

<title>Insert title here</title>

<script src="<c:url value="/static/js/jquery-3.3.1.min.js"/>" type="text/javascript"></script>
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
	});
</script>




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
			<h5 class="card-header">${dRoom.title}</h5>
			<div class="card-body">
				<div class="form-group">
					<span> <strong>돈</strong> <em>시간</em>
				</div>
				<div>
					<h4>하우스카페 너디블루 그지같네</h4>
					<span> 
					</span>
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
						<tbody>
							<tr>
								<td>1</td>
								<td>2</td>
								<td>3</td>
								<td>4</td>
								<td>5</td>
								<td>6</td>
								<td>7</td>
							</tr>
							<tr>
								<td>8</td>
								<td>9</td>
								<td>10</td>
								<td>11</td>
								<td>12</td>
								<td>13</td>
								<td>14</td>
							</tr>
							<tr>
								<td>15</td>
								<td>16</td>
								<td>17</td>
								<td>18</td>
								<td>19</td>
								<td>20</td>
								<td>21</td>
							</tr>
							<tr>
								<td>22</td>
								<td>23</td>
								<td>24</td>
								<td>25</td>
								<td>26</td>
								<td>27</td>
								<td>28</td>
							</tr>
							<tr>
								<td>29</td>
								<td>30</td>
								<td>31</td>
								<td>32</td>
								<td>33</td>
								<td>34</td>
								<td>35</td>
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
							<li style="margin-right: 15px; width: 40px; float: left; text-decoration: none;">17</li>
							<li style="margin-right: 15px; width: 40px; float: left; text-decoration: none;">18</li>
							<li style="margin-right: 15px; width: 40px; float: left; text-decoration: none;">19</li>
							<li style="margin-right: 15px; width: 40px; float: left; text-decoration: none;">20</li>
							<li style="margin-right: 15px; width: 40px; float: left; text-decoration: none;">21</li>
							<li style="margin-right: 15px; width: 40px; float: left; text-decoration: none;">22</li>
							<li style="margin-right: 15px; width: 40px; float: left; text-decoration: none;">23</li>
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
									<input type="text" name="name" value="${sessionScope.__USER__.name}"
										required="required">
								</div>
							</dd>
						</dl>
						<dl>
							<dt>
								<label for="name">연락처</label>
							</dt>
							<dd>
								<div>
									<input type="text" name="phoneNumber" value="${sessionScope.__USER__.phone}" required="required">
								</div>
							</dd>
						</dl>
						<dl>
							<dt>
								<label for="name">이메일</label>
							</dt>
							<dd>
								<div>
									<input type="text" name="email" value="${sessionScope.__USER__.email}" required="required">
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
							<dd>너디 블루</dd>
						</dl>
						<dl>
							<dt>대표자명</dt>
							<dd>난 아냐</dd>
						</dl>
						<dl>
							<dt>소재지</dt>
							<dd>서울은 다 내 집</dd>
						</dl>
						<dl>
							<dt>사업자 번호</dt>
							<dd>478-55-11545</dd>
						</dl>
						<dl>
							<dt>연락처</dt>
							<dd>010-0000-0000</dd>
						</dl>
					</div>
				</div>
			</div>
			<div class="card my-4">
				<h5 class="card-header">시설안내</h5>
				<div class="card-body">
					<div class="form-group">
						<ul>
							<li>1</li>
							<li>2</li>
							<li>3</li>
							<li>4</li>
						</ul>
					</div>
				</div>
			</div>

			<div class="card my-4">
				<h5 class="card-header">예약시 주의사항</h5>
				<div class="card-body">
					<div class="form-group">
						<ul>
							<li>1</li>
							<li>2</li>
							<li>3</li>
							<li>4</li>
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


			<!-- Comments Form -->
			<div class="card my-4">
				<h5 class="card-header">이용 후기</h5>
				<div class="card-body">
					<div class="form-group">

						<!-- Comment with nested comments -->
						<div class="media mb-4">
							<img class="d-flex mr-3 rounded-circle"
								src="http://placehold.it/50x50" alt="">
							<div class="media-body">
								<h5 class="mt-0">Commenter Name</h5>
								Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
								scelerisque ante sollicitudin. Cras purus odio, vestibulum in
								vulputate at, tempus viverra turpis. Fusce condimentum nunc ac
								nisi vulputate fringilla. Donec lacinia congue felis in
								faucibus.

								<div class="media mt-4">
									<img class="d-flex mr-3 rounded-circle"
										src="http://placehold.it/50x50" alt="">
									<div class="media-body">
										<h5 class="mt-0">Commenter Name</h5>
										Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
										scelerisque ante sollicitudin. Cras purus odio, vestibulum in
										vulputate at, tempus viverra turpis. Fusce condimentum nunc ac
										nisi vulputate fringilla. Donec lacinia congue felis in
										faucibus.
									</div>
								</div>

								<div class="media mt-4">
									<img class="d-flex mr-3 rounded-circle"
										src="http://placehold.it/50x50" alt="">
									<div class="media-body">
										<h5 class="mt-0">Commenter Name</h5>
										Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
										scelerisque ante sollicitudin. Cras purus odio, vestibulum in
										vulputate at, tempus viverra turpis. Fusce condimentum nunc ac
										nisi vulputate fringilla. Donec lacinia congue felis in
										faucibus.
									</div>
								</div>

							</div>
						</div>
					</div>
					<form>
						<div class="form-group">
							<textarea class="form-control" rows="3"></textarea>
						</div>
						<button type="submit" class="btn btn-primary">Submit</button>
					</form>
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

	<!-- Portfolio Section -->
	<h2>같은 호스팅 룸</h2>

	<div class="row">
		<div class="col-lg-4 col-sm-6 portfolio-item">
			<div class="card h-100">
				<a href="#"><img class="card-img-top"
					src="http://placehold.it/700x400" alt=""></a>
				<div class="card-body">
					<h4 class="card-title">
						<a href="<c:url value="/roomdetail"/>">Project One</a>
					</h4>
					<p class="card-text">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Amet numquam aspernatur eum quasi sapiente
						nesciunt? Voluptatibus sit, repellat sequi itaque deserunt,
						dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!</p>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-sm-6 portfolio-item">
			<div class="card h-100">
				<a href="#"><img class="card-img-top"
					src="http://placehold.it/700x400" alt=""></a>
				<div class="card-body">
					<h4 class="card-title">
						<a href="#">Project Two</a>
					</h4>
					<p class="card-text">Lorem ipsum dolor sit amet, consectetur
						adipiscing elit. Nam viverra euismod odio, gravida pellentesque
						urna varius vitae.</p>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-sm-6 portfolio-item">
			<div class="card h-100">
				<a href="#"><img class="card-img-top"
					src="http://placehold.it/700x400" alt=""></a>
				<div class="card-body">
					<h4 class="card-title">
						<a href="#">Project Three</a>
					</h4>
					<p class="card-text">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Quos quisquam, error quod sed cumque, odio
						distinctio velit nostrum temporibus necessitatibus et facere atque
						iure perspiciatis mollitia recusandae vero vel quam!</p>
				</div>
			</div>
		</div>
	</div>
	<!-- /.row -->
</div>
<!-- /.container -->


<!-- Footer -->
<jsp:include page="/WEB-INF/view/template/footer.jsp" />



</html>