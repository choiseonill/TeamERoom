<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>세부공간등록페이지
</title>
<!-- Bootstrap core CSS -->


<link href="static/css/modern-business.css" rel="stylesheet">
<link href="static/css/checkbox.css" rel="stylesheet">

<style>
@import url(http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css);

.spinner input {
  text-align: right;
}

.input-group-btn-vertical {
  position: relative;
  white-space: nowrap;
  width: 2%;
  vertical-align: middle;
  display: table-cell;
}

.input-group-btn-vertical > .btn {
  display: block;
  float: none;
  width: 100%;
  max-width: 100%;
  padding: 8px;
  margin-left: -1px;
  position: relative;
  border-radius: 0;
}

.input-group-btn-vertical > .btn:first-child {
  border-top-right-radius: 4px;
}

.input-group-btn-vertical > .btn:last-child {
  margin-top: -2px;
  border-bottom-right-radius: 4px;
}

.input-group-btn-vertical i {
  position: absolute;
  top: 0;
  left: 4px;
}

.add_section {
    position: relative;
    padding-top: 12px;
    border-bottom: 1px solid #d8d8d8;
    margin: 0 16px 11px;
}

.add_section .icon {
    position: absolute;
    top: 4px;
    right: 0;
    width: 26px;
    height: 26px;
    background: url(../images/common/icon_plmi.png) no-repeat;
}

</style>

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="<c:url value="/static/js/jquery-3.3.1.min.js"/>"></script>

<!--최대,최소 예약 시간 인원 등 숫자 설정 -->
<script>

$(function(){

    $('.spinner .btn:first-of-type').on('click', function() {
      var btn = $(this);
      var input = btn.closest('.spinner').find('input');
      if (input.attr('max') == undefined || parseInt(input.val()) < parseInt(input.attr('max'))) {    
        input.val(parseInt(input.val(), 10) + 1);
      } else {
        btn.next("disabled", true);
      }
    });
    $('.spinner btn:last-of-type').on('click', function() {
      var btn = $(this);
      var input = btn.closest('.spinner').find('input');
      if (input.attr('min') == undefined || parseInt(input.val()) > parseInt(input.attr('min'))) {    
        input.val(parseInt(input.val(), 10) - 1);
      } else {
        btn.prev("disabled", true);
      }
    });
    
    
    $("#button").click(function(){
    	
       var test= $(".card").first().clone().appendTo($(".card").last().prev());
        console.log(test);
    });  
    

})

/* /* /* /* /* /* 	hidde을 first로 잡고 해보기 */ 
</script>

</head>

	<jsp:include page="/WEB-INF/view/template/head.jsp"/> 
	
	 
	 
	 
	 
		<div class="container">
		<h2 class="mt-4 mb-3">세부공간등록</h2>
      <ol class="breadcrumb">
        <li class="breadcrumb-item active">등록하고 하시는 장소의 예약유형을 설정해 주세요.</li>
      </ol>
	
	    <!-- Page Content -->
    <div class="container">
 
      <div class="mb-4" id="accordion" role="tablist" aria-multiselectable="true">
        <div class="card">
          <div class="card-header" role="tab" id="headingOne">
            <h5 class="mb-0">
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne" style="margin-right: 130px;">세부공간명을 입력해주세요</a>
            </h5>
          </div>

          <div id="collapseOne" class="collapse" role="tabpanel" aria-labelledby="headingOne">
            <div class="card-body">
              
              	
		
		<h4 class="mt-4 mb-3">세부공간소개</h4>
      <ol class="breadcrumb">
        <li class="breadcrumb-item active"></li>
      </ol>
              <div class="controls">
                <label>세부공간명</label>
                <input type="text" class="form-control" id="name">
              </div>
  
              <div class="controls">
                <label>세부공간유형</label>
                <input type="text" class="form-control" id="name">
              </div>
              
              <div class="controls">
                <label>세부공간소개</label>
                <textarea class="form-control" id="name" data-validation-required-message="세부공간명을 입력해주세요" rows="3"></textarea>
                
              </div>
              
              <hr>
              <div class="controls">
										<h4><label>세부공간이미지</label></h4>
										
										<p class="help-block"></p>
									</div>
									<div class="controls">
										<label>대표이미지</label>
										<div class="container">
											<div class="row">
												<!-- image-preview-filename input [CUT FROM HERE]-->
												<div class="input-group image-preview">
													<input type="text"
														class="form-control image-preview-filename"
														disabled="disabled">
													<!-- don't give a name === doesn't send on POST/GET -->
													<span class="input-group-btn"> <!-- image-preview-clear button -->
														<button type="button"
															class="btn btn-default image-preview-clear"
															style="display: none;">
															<span class="glyphicon glyphicon-remove"></span> Clear
														</button> <!-- image-preview-input -->
														<div class="btn btn-default image-preview-input">
															<span class="glyphicon glyphicon-folder-open"></span> <input
																type="file" accept="image/png, image/jpeg, image/gif"
																name="input-file-preview" />
															<!-- rename it -->
														</div>
													</span>
												</div>
												<!-- /input-group image-preview [TO HERE]-->
											</div>

										</div>
										<p class="help-block"></p>
									</div>
								<div class="controls">
										<label>추가이미지</label>
										<div class="container">
											<div class="row">
												<!-- image-preview-filename input [CUT FROM HERE]-->
												<div class="input-group image-preview">
													<input type="text"
														class="form-control image-preview-filename"
														disabled="disabled">
													<!-- don't give a name === doesn't send on POST/GET -->
													<span class="input-group-btn"> <!-- image-preview-clear button -->
														<button type="button"
															class="btn btn-default image-preview-clear"
															style="display: none;">
															<span class="glyphicon glyphicon-remove"></span> Clear
														</button> <!-- image-preview-input -->
														<div class="btn btn-default image-preview-input">
															<span class="glyphicon glyphicon-folder-open"></span> <input
																type="file" accept="image/png, image/jpeg, image/gif"
																name="input-file-preview" />
															<!-- rename it -->
														</div>
													</span>
												</div>
												<!-- /input-group image-preview [TO HERE]-->
											</div>

										</div>
										<p class="help-block"></p>
									</div>
									<hr>
              						<div class="controls">
										<h4><label>예약허용</label></h4>
										
										<p class="help-block"></p>
									</div>
              						<div class="controls">
										<label>최소예약시간</label>
										   <div class="input-group spinner">
										    <input type="text" class="form-control" value="1" min="1" max="5">
										    <div class="input-group-btn-vertical">
										      <button class="btn btn-default" type="button"><i class="fa fa-caret-up"></i></button>
										      <button class="btn btn-default" type="button"><i class="fa fa-caret-down"></i></button>
										    </div>
										  </div>
										
										<p class="help-block"></p>
									</div>
              						<div class="controls">
										<label>최소예약인원</label>
										   <div class="input-group spinner">
											<input type="text" class="form-control" value="1" min="1" max="5">
										    <div class="input-group-btn-vertical">
										      <button class="btn btn-default" type="button"><i class="fa fa-caret-up"></i></button>
										      <button class="btn btn-default" type="button"><i class="fa fa-caret-down"></i></button>
										    </div>
										  </div>
										  </div>
										
										<p class="help-block"></p>
									
									<div class="controls">
										<label>최대예약인원</label>
										   <div class="input-group spinner">
											<input type="text" class="form-control" value="1" min="1" max="5">
										    <div class="input-group-btn-vertical">
										      <button class="btn btn-default" type="button"><i class="fa fa-caret-up"></i></button>
										      <button class="btn btn-default" type="button"><i class="fa fa-caret-down"></i></button>
										    </div>
										  </div>
									</div>
								    <p class="help-block"></p>
									
 								<hr>
								<div class="controls">
										<h4><label>세부공간가격설정</label></h4>
										
										<p class="help-block"></p>
									</div>
									<div class="controls">
                <label>주중기본</label>
                <input type="text" class="form-control" id="name" required="" data-validation-required-message="세부공간명을 입력해주세요">
                <p class="help-block"></p>
              </div>
              <div class="controls">
                <label>주말/휴일기본</label>
                <input type="text" class="form-control" id="name" required="" data-validation-required-message="세부공간명을 입력해주세요">
                <p class="help-block"></p>
              </div>
				
				<hr>
			  
			  <div class="controls">
				<h4><label>공간옵션추가</label></h4>
				<!-- <button id="button" onclick="duplicate()">+</button> -->
			 </div>
			 <div id="duplicater">
			 <div class="controls">
                <label>이동</label>
                <input type="text" class="form-control" id="name" required="" data-validation-required-message="세부공간명을 입력해주세요">
                <p class="help-block"></p>
              </div>
			 <div class="controls">
										<label>수량</label>
											<div class="input-group spinner">
											<input type="text" class="form-control" value="1" min="1" max="5">
										    <div class="input-group-btn-vertical">
										      <button class="btn btn-default" type="button"><i class="fa fa-caret-up"></i></button>
										      <button class="btn btn-default" type="button"><i class="fa fa-caret-down"></i></button>
										    </div>
										  </div>
										
										<p class="help-block"></p>
									</div>
              <div class="controls">
                <label>설명</label>
                <input type="text" class="form-control" id="name" required="" data-validation-required-message="세부공간명을 입력해주세요">
                <p class="help-block"></p>
              </div>
				<div class="form-group">
              <label for="username">가격</label>
              <div class="input-group">
                <input type="tel" class="form-control" id="username" placeholder="- 없이 입력해 주세요">
                <span class="input-group-btn">
                  <button class="btn btn-primary">원</button>
                </span>
              </div>
            </div>
            <div class="controls">
										<label>이미지</label>
										<div class="container">
											<div class="row">
												<!-- image-preview-filename input [CUT FROM HERE]-->
												<div class="input-group image-preview">
													<input type="text"
														class="form-control image-preview-filename"
														disabled="disabled">
													<!-- don't give a name === doesn't send on POST/GET -->
													<span class="input-group-btn"> <!-- image-preview-clear button -->
														<button type="button"
															class="btn btn-default image-preview-clear"
															style="display: none;">
															<span class="glyphicon glyphicon-remove"></span> Clear
														</button> <!-- image-preview-input -->
														<div class="btn btn-default image-preview-input">
															<span class="glyphicon glyphicon-folder-open"></span> <input
																type="file" accept="image/png, image/jpeg, image/gif"
																name="input-file-preview" />
															<!-- rename it -->
														</div>
													</span>
												</div>
												<!-- /input-group image-preview [TO HERE]-->
											</div>

										</div>
										<p class="help-block"></p>
									</div>
					</div>

			
			
			</div>
        </div>
			  
		
    

			  
			  
			  
           	   
			  
            </div>
          </div>
          
        </div>
        
        
        
        <div class="container">
        <div class="card">
          <div class="card-header" role="tab" id="headingTwo">
            <h5 class="mb-0">
            <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo" style="margin-right: 130px;">세부공간명2</a>
            </h5>
          </div>
          <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo">
            <div class="card-body">
              Anim pehawigh life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
            </div>
          </div>
        </div>
        </div>
        </div>
      
		<div class ="container">
		
		<div class="add_section" id="copy">
                    <p> 더 추가해야 할 공간이 있으면 추가 해주세요.</p>
                    <a href="javascript:addRow();" class="icon"></a>
     
	   <button id="button">+</button>   
		
        </div>
		</div>
		
	<jsp:include page="/WEB-INF/view/template/footer.jsp"/>