<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>2 Col Portfolio - Start Bootstrap Template</title>

<!-- Bootstrap core CSS -->
<link href="<c:url value="static/css/modern-business.css"/>" rel="stylesheet">
<link href="<c:url value="static/css/checkbox.css"/>" rel="stylesheet">


</head>

<jsp:include page="/WEB-INF/view/template/head.jsp"/> 


    <!-- Page Content -->
    <div class="container">
      <!-- Page Heading/Breadcrumbs -->
      <h2 class="mt-4 mb-3">어떤 공간인가요?</h2>
      <ol class="breadcrumb">
        <li class="breadcrumb-item active">등록하고 하시는 장소의 유형을 설정해 주세요</li>
      </ol>
      
		<div class="container">
    <div class="funkyradio">
	    <div>
	        <div class="funkyradio-primary" style="display: inline-block;">
	            <input type="checkbox" name="checkbox" id="checkbox1" checked/>
	            <label for="checkbox1" style="width: 300px;">다목적실</label>
	        </div>
	        <div class="funkyradio-primary" style="display: inline-block;">
	            <input type="checkbox" name="checkbox" id="checkbox2" checked/>
	            <label for="checkbox2" style="width: 300px;">회의실</label>
	        </div>
	         <div class="funkyradio-primary" style="display: inline-block;">
	            <input type="checkbox" name="checkbox" id="checkbox3" checked/>
	            <label for="checkbox3" style="width: 300px;">스터디룸</label>
	        </div>
	     </div> 
	     
	      <div>
	        <div class="funkyradio-primary" style="display: inline-block;">
	            <input type="checkbox" name="checkbox" id="checkbox4" checked/>
	            <label for="checkbox4" style="width: 300px;">카페</label>
	        </div>
	        <div class="funkyradio-primary" style="display: inline-block;">
	            <input type="checkbox" name="checkbox" id="checkbox5" checked/>
	            <label for="checkbox5" style="width: 300px;">연습실</label>
	        </div>
	         <div class="funkyradio-primary" style="display: inline-block;">
	            <input type="checkbox" name="checkbox" id="checkbox6" checked/>
	            <label for="checkbox6" style="width: 300px;">공연장</label>
	        </div>
	     </div> 
      </div>
      
      </div>
         <ol class="breadcrumb">
        <li class="breadcrumb-item active">장소명과 장소소개를 등록해주세요</li>
      </ol>
      	<div class="col-md-6 col-md-offset-3">
		<div class="control-group form-group">
              <div class="controls">
                <label>장소명</label>
                <input type="text" class="form-control" id="name" required="" data-validation-required-message="장소명을 입력해주세요">
                <p class="help-block"></p>
              </div>
        </div>
        <div class="control-group form-group">
              <div class="controls">
                <label>장소소개</label>
                <input type="text" class="form-control" id="name" required="" data-validation-required-message="장소를 소개해 주세요">
                <p class="help-block"></p>
              </div>
        </div>
        </div>
           
      <!-- Page Heading/Breadcrumbs -->
      <h2 class="mt-4 mb-3">무엇을 쓸수 있나요? </h2>
      <ol class="breadcrumb">
        <li class="breadcrumb-item active">등록하고 하시는 장소의 기본옵션을 설정해 주세요</li>
      </ol>
      
      <div class="container">
    <div class="funkyradio">
	    <div>
	        <div class="funkyradio-primary" style="display: inline-block;">
	            <input type="checkbox" name="checkbox" id="checkbox7" checked/>
	            <label for="checkbox7" style="width: 300px;">다목적실</label>
	        </div>
	        <div class="funkyradio-primary" style="display: inline-block;">
	            <input type="checkbox" name="checkbox" id="checkbox8" checked/>
	            <label for="checkbox8" style="width: 300px;">회의실</label>
	        </div>
	         <div class="funkyradio-primary" style="display: inline-block;">
	            <input type="checkbox" name="checkbox" id="checkbox9" checked/>
	            <label for="checkbox9" style="width: 300px;">스터디룸</label>
	        </div>
	     </div> 
	     
	      <div>
	        <div class="funkyradio-primary" style="display: inline-block;">
	            <input type="checkbox" name="checkbox" id="checkbox10" checked/>
	            <label for="checkbox10" style="width: 300px;">카페</label>
	        </div>
	        <div class="funkyradio-primary" style="display: inline-block;">
	            <input type="checkbox" name="checkbox" id="checkbox11" checked/>
	            <label for="checkbox11" style="width: 300px;">연습실</label>
	        </div>
	         <div class="funkyradio-primary" style="display: inline-block;">
	            <input type="checkbox" name="checkbox" id="checkbox12" checked/>
	            <label for="checkbox12" style="width: 300px;">공연장</label>
	        </div>
	     </div> 
      </div>
      
      </div>
      
                  <!-- Page Heading/Breadcrumbs -->
      <h2 class="mt-4 mb-3">영업시간 </h2>
      <ol class="breadcrumb">
        <li class="breadcrumb-item active">등록하고 하시는 장소의 기본옵션을 설정해 주세요</li>
      </ol>
	
		<div class="container">
		
			<div class="col-md-5" style="display: inline-block;">
			<select class="form-control">
				  <option>1</option>
				  <option>2</option>
				  <option>3</option>
				  <option>4</option>
				  <option>5</option>
	        </select>
	        	</div>
	       
	        	<label>부터</label>
	        	
	        	
	       <div class="col-md-5" style="display: inline-block;">
	       <select class="form-control">
				  <option>1</option>
				  <option>2</option>
				  <option>3</option>
				  <option>4</option>
				  <option>5</option>
	        </select>
	        </div>
        	<label>까지</label>

        
        </div>
        
      
            <!-- Page Heading/Breadcrumbs -->
      <h2 class="mt-4 mb-3">정기휴무 </h2>
      <ol class="breadcrumb">
        <li class="breadcrumb-item active">등록하고 하시는 장소의 기본옵션을 설정해 주세요</li>
      </ol>
      		
		<div class="container">
			       <div class="col-md-6" style="display: inline-block;">
	       <select class="form-control">
				  <option>휴무 없음</option>
			  <option>월요일</option>
			  <option>화요일</option>
			  <option>수요일</option>
			  <option>목요일</option>
			  <option>금요일</option>
			  <option>토요일</option>
			  <option>일요일</option>
			
	        </select>
	        </div>
		</div>
      
      
      
      <!-- Page Heading/Breadcrumbs -->
      <h2 class="mt-4 mb-3">이미지 등록</h2>
      <ol class="breadcrumb">
        <li class="breadcrumb-item active">등록하고 하시는 장소의 유형을 설정해 주세요</li>
      </ol>
      	<div class="col-md-6 col-md-offset-3">
		<div class="control-group form-group">
              <div class="controls">
                <label>대표이미지</label>
                <input type="file" class="form-control" id="name" required="" data-validation-required-message="장소명을 입력해주세요">
                <p class="help-block"></p>
              </div>
        </div>
        <div class="control-group form-group">
              <div class="controls">
                <label>추가이미지</label>
                <input type="file" class="form-control" id="name" required="" data-validation-required-message="장소를 소개해 주세요">
                <p class="help-block"></p>
              </div>
        </div>
        </div>
      
      
      
      <!-- Page Heading/Breadcrumbs -->
      <h2 class="mt-4 mb-3">공간정보</h2>
      <ol class="breadcrumb">
        <li class="breadcrumb-item active">등록하고 하시는 장소의 유형을 설정해 주세요</li>
      </ol>
      	<div class="col-md-6 col-md-offset-3">
          <form role="form">
            <div class="form-group">
              <label for="username">Email</label>
              <div class="input-group">
                <input type="tel" class="form-control" id="username" placeholder="- 없이 입력해 주세요">
                <span class="input-group-btn">
                  <button class="btn btn-primary">중복확인</button>
                </span>
              </div>
            </div>
            <div class="form-group">
              <label for="username">휴대폰</label>
              <div class="input-group">
                <input type="tel" class="form-control" id="username" placeholder="- 없이 입력해 주세요">
                <span class="input-group-btn">
                  <button class="btn btn-primary">등록자와 일치</button>
                </span>
              </div>
            </div>
            <div class="form-group">
              <label for="username">주소</label>
              <div class="input-group">
                <input type="tel" class="form-control" id="username" placeholder="- 없이 입력해 주세요">
                <span class="input-group-btn">
                  <button class="btn btn-primary">주소검색</button>
                </span>
              </div>
              <input type="tel" class="form-control" id="username" placeholder="상세주소">
            </div>
          </form>
        </div>	
      
      <!-- Page Heading/Breadcrumbs -->
      <h2 class="mt-4 mb-3">통장정보</h2>
      <ol class="breadcrumb">
        <li class="breadcrumb-item active">등록하고 하시는 장소의 유형을 설정해 주세요</li>
      </ol>
      <div class="col-md-6 col-md-offset-3">
        		<form role="form">
						<div class="form-group">
							<label for="username">예금주</label>
							<div class="input-group">
								<input type="tel" class="form-control" id="username"
									placeholder="- 없이 입력해 주세요"> <span
									class="input-group-btn">
									<button class="btn btn-primary">등록자와 일치</button>
								</span>
							</div>
						</div>
						<div class="form-group">
							<label for="username">계좌번호</label>
							<div class="input-group">
								<input type="tel" class="form-control" id="username"
									placeholder="- 없이 입력해 주세요"> <span
									class="input-group-btn">
									<button class="btn btn-primary">은행명</button>
								</span>
							</div>
						</div>

					</form>
					</div>
      
      	<div class="form-group" style="margin-top: 100px;">
          <div class="col-sm-12 text-center">
            <button class="btn btn-primary" type="submit">이전</button>
            <button class="btn btn-primary" type="submit">완료</button>
          </div>
        </div>
      
      
      
      
      
      </div>
    <!— /.container —>
      
    
      

<jsp:include page="/WEB-INF/view/template/footer.jsp"/>