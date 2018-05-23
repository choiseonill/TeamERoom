<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
<link href="static/vendor/bootstrap/css/login.css" rel="stylesheet">
<script type="text/javascript" src="<c:url value="/static/js/jquery-3.3.1.min.js" />"></script>
<script type="text/javascript">
	$().ready( function(){
		$("#loginBtn").click( function(){
			
			$("#loginForm").attr({
				"action" : "<c:url value="/login"/>",
				"method" : "post"
			}).submit();
			
		});
		
		
		
		
	});
</script>

</head>

	<jsp:include page="/WEB-INF/view/template/head.jsp" />
	
	<div>
		<div class="container" style="margin: 200px; display: inline-block;">
			<div class="Login" style="display: inline-block;">
				<div class="card1 card-container" style="display: inline-block; width: 400px; margin-bottom: 200px; margin-left: 200px;">
					<!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
					<img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
					<p id="profile-name" class="profile-name-card"></p>
					
					
					<form:form modelAttribute="loginForm"  class="form-signin">
                  			<span id="reauth-email" class="reauth-email"></span> 
                  			<input type="email" id="inputEmail" name="email" class="form-control" placeholder="Email address" > 
                  			<input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password" >
                  			<button id="loginBtn" class="btn btn-lg btn-primary btn-block btn-signin" type="submit">log in</button>
              		</form:form>

					<!-- /form -->
					<a href="<c:url value="/singup" />" class="forgot-password"> 
						Forgot the password? 
					</a>
				</div>
				<!-- /card-container -->
			</div>
			
			<div class="Regist">
					<jsp:include page="signup.jsp" />
			</div>
		</div>
		<!-- /container -->
	</div>

 	
	<jsp:include page="/WEB-INF/view/template/footer.jsp" />
</html>