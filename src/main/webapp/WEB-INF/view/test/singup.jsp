<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Bootstrap core CSS -->
<link href="static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap core JavaScript -->
<script src="static/vendor/jquery/jquery.min.js"></script>

<script src="static/vendor/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$().ready(function() {
		
		$("#nomal").click(function() {
			$("#status").val(0);
		});
		$("#host").click(function() {
			$("#status").val(1);
		});   
		
		$("#registBtn").click(function() {
			
			$("#registForm").attr({
				"method" : "post",
				"action" : "<c:url value="/signUp"/>"
			}).submit();
			
			
			
		});
		
		
		
		
		
	});
</script>

 
<title>Insert title here</title>
<style>

.card-container.card {
	display:inline-block;
    width:50%;
}
.card {
	display : inline-block;
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
	display:inline-block;
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

.form-signin #inputEmail,
.form-signin #inputPassword {
    direction: ltr;
    height: 44px;
    font-size: 16px;
}

.form-signin input[type=email],
.form-signin input[type=password],
.form-signin input[type=text],
.form-signin button {
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
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgb(104, 145, 162);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgb(104, 145, 162);
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

.btn.btn-signin:hover,
.btn.btn-signin:active,
.btn.btn-signin:focus {
    background-color: rgb(12, 97, 33);
}

.forgot-password {
    color: rgb(104, 145, 162);
}

.forgot-password:hover,
.forgot-password:active,
.forgot-password:focus{
    color: rgb(12, 97, 33);
}
</style>
</head>
<body>
    <div class="container" style=" margin-bottom: 200px; width:400px; display:inline-block;">
    	
        <div class="card card-container" style="width:400px;">
		  <div>	
			<div class="nbutton" style="display:inline-block; margin-left:10%;">
			    <label for="nomal">일반</label>
			    <input type="radio" id="nomal" name="select" />
			</div>
			<div class="rbutton" style="display:inline-block; verticl-align:top; margin-left:30%;" >   
			    <label for="host">사업자</label>
			    <input type="radio" id="host" name="select" />
			</div>    
		</div>
            <p id="profile-name" class="profile-name-card"></p>
            <form:form class="form-signin" modelAttribute="registForm" enctype="multipart/form-data">
                <span id="reauth-email" class="reauth-email"></span>
                <input type="text" id="RinputEmail" class="form-control" name="email" placeholder="Email address" required autofocus/>
                <input type="password" id="RinputPassword" class="form-control" name="password" placeholder="Password" required/>
               	<hr>
                <input type="text" id="inputName" class="form-control" name="name" placeholder="name" required/>
                <input type="text" id="inputPhone" class="form-control" name="phone" placeholder="phone" required/>
                <hr>
                <input type="file" id="profilePhoto" class="form-control" title="프로필 사진" name="file" placeholder="profile"/>
                <hr>
                <input type="hidden" id="status" name="status" value="0"  />
                
                
                <hr>
                
                
                
                
                
                
                
                <button id="registBtn" class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Sign in</button>
            </form:form><!-- /form -->
        </div><!-- /card-container -->
    </div><!-- /container -->
</body>
</html>