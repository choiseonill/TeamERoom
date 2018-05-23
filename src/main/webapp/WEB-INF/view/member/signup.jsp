<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>

<script type="text/javascript">
	$().ready(function() {
						var green = "<img class='greenCheck' src='<c:url value='/static/img/greenCheck.PNG'/>' alt='yes' />";
						var red = "<img class='redCheck' src='<c:url value='/static/img/redCheck.PNG'/>' alt='yes' />";
						var Qred = "<img class='questionRedCheck' src='<c:url value='/static/img/redCheck.PNG'/>' alt='yes' />";

						function checkSymbol(id, check) {
							if ($(id).children(".redCheck").length == 0 && check == 1) {
								$(id).children(".greenCheck").remove();
								$(id).append(red);
								//no
							}
							if ($(id).children(".greenCheck").length == 0 && check == 2) {
								$(id).children(".redCheck").remove();
								$(id).append(green);
								//yes
							}
							if (check == 3) {
								$(id).children(".greenCheck").remove();
								$(id).children(".redCheck").remove();
							}

						}

						//////////////////회원 가입할때 Email check/////////////////////
						$("#RinputEmail").keyup(function() {
							var value = $(this).val();

							if (value != "") {

								$.post("<c:url value="/api/exists/email" />", {
									email : value
								}, function(response) {

									if (response.response) {
										checkSymbol("#idCheckDiv", 1);
									} else {
										checkSymbol("#idCheckDiv", 2);
									}
								});
							} else {
								checkSymbol("#idCheckDiv", 3);
							}

						});
						/////////////////////////////////////////////////////////

						///////////////////비밀번호 & 비밀번호 확인 check/////////////////
						function check() {
							var value = $("#RinputPassword-confirm").val();
							var password = $("#RinputPassword").val();
							if (value.length == 0) {
								checkSymbol("#passConfromDiv", 3);
							} else if (value != password) {
								checkSymbol("#passConfromDiv", 1);
							} else {
								checkSymbol("#passConfromDiv", 2);
							}
						}

						$("#RinputPassword").keyup(function() {
							var regex = /^[a-zA-Z0-9]{10,15}$/;
							//숫자와 영문자 조합으로 10~15자리
							var password = $("#RinputPassword").val();
							if (regex.test(password)) {
								checkSymbol("#passDiv", 2);
								$("#passWarn").css("display", "none");
							} else if (password.length == 0) {
								checkSymbol("#passDiv", 3);
								$("#passWarn").css("display", "none");
							}

							else {
								checkSymbol("#passDiv", 1);
								$("#passWarn").css("display", "block");
							}

							check();
						});

						$("#RinputPassword-confirm").keyup(function() {
							check();
						})
						//////////////////////////////////////////////////////////

						//////////////////////////////////////////////////////////
						function afterCheck(id) {

							if ($(id).children(".redCheck").length != 0 && $(id).children(".form-control").val() != "") {
								$(id).children(".redCheck").remove();
								$(id).append(green);

							}

							else if ($(id).children(".greenCheck").length != 0 && $(id).children(".form-control").val() == "") {
								$(id).children(".greenCheck").remove();
								$(id).append(red);
							}
						}

						$("#inputName").keyup(function() {
							afterCheck("#nameDiv");
						})

						$("#inputPhone").keyup(function() {
							afterCheck("#inputPhoneDiv");
						})

						$("#answer").keyup(function() {
							afterCheck("#answerDiv");
						})

						$("#BizName").keyup(function() {
							afterCheck("#BizNameDiv");
						})

						$("#BizNumber").keyup(function() {
							afterCheck("#BizNumberDiv");
						})

						//////////////////////////////////////////////////////////

						//회원 가입에 대한 jQuery(status)
						$("#nomal").click(function() {
							$("#status").val(0);
							$("#BizNameDiv").css("display", "none");
							$("#BizNumberDiv").css("display", "none");
						});
						$("#host").click(function() {
							$("#status").val(1);
							$("#BizNameDiv").css("display", "block");
							$("#BizNumberDiv").css("display", "block");
						});

						//회원가입 등록Btn
						$("#registBtn").click(function() {
											var invalidCheck = false;

											if ($("#RinputEmail").val() == "") {
												$("#RinputEmail").focus();
												checkSymbol("#idCheckDiv", 1);
												return false;
											}

											if ($("#RinputPassword").val() == "") {
												$("#RinputPassword").focus();
												checkSymbol("#passDiv", 1);
												return false;
											}
											if ($("#RinputPassword-confirm").val() == "") {
												$("#RinputPassword-confirm").focus();
												checkSymbol("#passConfromDiv", 1);
												return false;
											}
											if ($("#inputName").val() == "") {
												$("#inputName").focus();
												checkSymbol("#nameDiv", 1);
												return false;
											}
											if ($("#inputPhone").val() == "") {
												$("#inputPhone").focus();
												checkSymbol("#inputPhoneDiv", 1);
												return false;
											}

											if ($("#question").val() == null) {
												$("#question").focus();
												$("#questionDiv").children(
														".questionGreenCheck")
														.remove();
												$("#questionDiv").append(Qred);
												alert("tt");
												return false;
											}

											if ($("#answer").val() == "") {
												$("#answer").focus();
												checkSymbol("#answerDiv", 1);
												return false;
											}

											if ($("#status").val() == 1) {

												if ($("#BizName").val() == "") {
													$("#BizName").focus();
													checkSymbol("#BizNameDiv",
															1);
													return false;
												}

												if ($("#BizNumber").val() == "") {
													$("#BizNumber").focus();
													checkSymbol(
															"#BizNumberDiv", 1);
													return false;
												}

											}

											$("#registForm")
													.attr(
															{
																"method" : "post",
																"action" : "<c:url value="/signUp"/>"
															}).submit();

										});
					});
</script>


<title>Insert title here</title>
<style>
.card-container.card {
	display: inline-block;
	width: 50%;
}

.card {
	display: inline-block;
}

.btn {
	font-weight: 700;
	height: 36px;
	-moz-user-select: none;
	-webkit-user-select: none;
	user-select: none;
	cursor: default;
}

/*
 * Card component
 */
.signupcard {
	display: inline-block;
	background-color: #F7F7F7;
	/* just in case there no content*/
	padding: 20px 25px 30px;
	margin: 0 auto 25px;
	margin-top: 50px;
	/* shadows and rounded borders */
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	-moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	-webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
}

.profile-img-card {
	width: 96px;
	height: 96px;
	margin: 0 auto 10px;
	display: block;
	-moz-border-radius: 50%;
	-webkit-border-radius: 50%;
	border-radius: 50%;
}

/*
 * Form styles
 */
.profile-name-card {
	font-size: 16px;
	font-weight: bold;
	text-align: center;
	margin: 10px 0 0;
	min-height: 1em;
}

.reauth-email {
	display: block;
	color: #404040;
	line-height: 2;
	margin-bottom: 10px;
	font-size: 14px;
	text-align: center;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}

.form-signin #inputEmail, .form-signin #inputPassword {
	direction: ltr;
	height: 44px;
	font-size: 16px;
}

.form-signin input[type=email], .form-signin input[type=password],
	.form-signin input[type=text], .form-signin button {
	width: 100%;
	display: block;
	margin-bottom: 10px;
	z-index: 1;
	position: relative;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}

.form-signin .form-control:focus {
	border-color: rgb(104, 145, 162);
	outline: 0;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px
		rgb(104, 145, 162);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px
		rgb(104, 145, 162);
}

.btn.btn-signin {
	/*background-color: #4d90fe; */
	background-color: rgb(104, 145, 162);
	/* background-color: linear-gradient(rgb(104, 145, 162), rgb(12, 97, 33));*/
	padding: 0px;
	font-weight: 700;
	font-size: 14px;
	height: 36px;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	border-radius: 3px;
	border: none;
	-o-transition: all 0.218s;
	-moz-transition: all 0.218s;
	-webkit-transition: all 0.218s;
	transition: all 0.218s;
}

.btn.btn-signin:hover, .btn.btn-signin:active, .btn.btn-signin:focus {
	background-color: rgb(12, 97, 33);
}

.forgot-password {
	color: rgb(104, 145, 162);
}

.forgot-password:hover, .forgot-password:active, .forgot-password:focus
	{
	color: rgb(12, 97, 33);
}

#BizNameDiv {
	display: none;
}

#BizNumberDiv {
	display: none;
}

input.invalid {
	background-color: #ecb9d1;
	color: #000040;
}

input.valid {
	background-color: #a2eca7;
	color: #74a879;
}

.greenCheck, .redCheck {
	width: 25px;
	height: 25px;
	position: absolute;
	z-index: 100;
	right: 4px;
	top: 5px;
}

.inputDiv {
	position: relative;
}

.questionRedCheck, .questionGreenCheck {
	width: 25px;
	height: 25px;
	position: absolute;
	z-index: 100;
	right: 20px;
	top: 5px;
}

#passWarn {
	display: none;
	color: #DB0000;
	font-size: 14px;
	margin-bottom: 8px;
	margin-top: 0;
}


 
	


</style>
</head>

	<div class="container"
		style="margin-bottom: 200px; width: 400px; display: inline-block;">
		<div class="card card-container" style="width: 400px;">
			<div>
				<div class="nbutton" style="display: inline-block; margin-left: 10%;">
					<label for="nomal">일반</label> 
					<input type="radio" id="nomal" name="select" checked="checked" />
				</div>
				<div class="rbutton" style="display: inline-block; verticl-align: top; margin-left: 30%;">
					<label for="host">사업자</label> 
					<input type="radio" id="host" name="select" />
				</div>
			</div>
			<p id="profile-name" class="profile-name-card"></p>


			<form:form class="form-signin" modelAttribute="registForm" enctype="multipart/form-data">


				<!-- <span id="reauth-email" class="reauth-email"></span> -->
				<div id="idCheckDiv" class="inputDiv">
					<input type="text" id="RinputEmail" class="form-control" name="email" placeholder="Email address"
						   style="display: inline-block;" required autofocus />
				</div>


				<div id="passDiv" class="inputDiv">
					<input type="password" id="RinputPassword" class="form-control"
						   name="password" placeholder="Password"
						   style="display: inline-block;" required />
				</div>
				<div id="passWarn">
					숫자와 영문자 조합으로 10~15자리 로 작성하세요.
				</div>


				<div id="passConfromDiv" class="inputDiv">
					<input type="password" id="RinputPassword-confirm" class="form-control" name="password-confirm"
						   placeholder="Password-Confirm" style="display: inline-block;" required />
				</div>

				<hr>
				<div id="nameDiv" class="inputDiv">
					<input type="text" id="inputName" class="form-control" name="name"
						   placeholder="name" style="display: inline-block;" required />
				</div>

				<div id="inputPhoneDiv" class="inputDiv">
					<input type="text" id="inputPhone" class="form-control"
						   name="phone" placeholder="phone" style="display: inline-block;" required />
				</div>
				<hr>

				<div id="questionDiv" class="inputDiv ">
					<select id="question" class="form-control" name="question" style="display: inline-block;">
						<option value="1" disabled selected>아이디/비번 찾기 질문</option>
						<option>자주 가는 곳은?</option>
						<option>내 보물 1호는?</option>
						<option>가장 친한 친구 이름은?</option>
						<option>내가 나온 초등학교는?</option>
						<option>영빈이가 지금까지 마신 소주병의 갯수는?</option>
					</select>
				</div>


				<div id="answerDiv" class="inputDiv">
					<input type="text" id="answer" class="form-control" title="answer"
						   name="answer" placeholder="Answer" style="display: inline-block" required />
				</div>


				<input type="hidden" id="status" name="status" value="0" />
				<hr>

				<div id="BizNameDiv" class="inputDiv">
					<input type="text" id="BizName" class="form-control"
						   title="BizName" name="bizName" placeholder="사업장 명"
						   style="display: inline-block" required />
				</div>

				<div id="BizNumberDiv" class="inputDiv">
					<input type="text" id="BizNumber" class="form-control"
						   title="BizNumber" name="bizNumber" placeholder="사업자 번호 "
						   style="display: inline-block" required />
				</div>


				<hr>

				<input type="file" id="profilePhoto" class="form-control" title="프로필 사진" name="file" required />


				<button id="registBtn" class="btn btn-lg btn-primary btn-block btn-signin" type="submit">
				    Sign in
				</button>
			</form:form>
			<!-- /form -->


		</div>
		<!-- /card-container -->
	</div>
	<!-- /container -->

</html>