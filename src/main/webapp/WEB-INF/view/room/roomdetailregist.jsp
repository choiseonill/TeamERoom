<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>roomdetailregist</title>

<link href="static/css/modal.css" rel="stylesheet">
<link href="static/css/checkbox.css" rel="stylesheet">
<link rel="stylesheet" href="static/css/font-awesome.min.css" media="screen" title="no title">

<script src="<c:url value="/static/js/modal.js"/>"
	type="text/javascript"></script>

<style>

.center{
	width: 150px;
  	margin: 40px auto;
  
}


.heading {
    padding-bottom: 24px;
    border-bottom-width: 4px;
}

.heading {
    display: table;
    position: relative;
    width: 100%;
    padding-bottom: 8px;
    border-bottom: 3px solid #104089;
}

.form-reservation {

  padding: 6px 12px;
  font-size: 14px;
  line-height: 1.42857143;
  color: #555;
  background-color: #fff;
  background-image: none;
  border: 1px solid #ccc;
  border-radius: 4px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
  -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
       -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
          transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}


.container{
    margin-top:20px;
}
.image-preview-input {
    position: relative;
    overflow: hidden;
	margin: 0px;    
    color: #333;
    background-color: #fff;
    border-color: #ccc;    
}
.image-preview-input input[type=file] {
	position: absolute;
	top: 0;
	right: 0;
	margin: 0;
	padding: 0;
	font-size: 20px;
	cursor: pointer;
	opacity: 0;
	filter: alpha(opacity=0);
}
.image-preview-input-title {
    margin-left:2px;
}

.input-group {
    /* position: relative; */
    display: table;
    /* border-collapse: separate; */
    width: 420px;
}




</style>


</head>
	
	
<jsp:include page="/WEB-INF/view/template/head.jsp"/> 
	
		
	<div class="container">
		<div class="heading">
			<h3 class="my-4">
				세부공간
			</h3>
		</div>
		<h4>등록하고자 하시는 장소의 예약유형을 설정해 주세요.</h4>
	
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
              
              	<div class="col-md-6 col-md-offset-3">
		<div class="control-group form-group">
		<div class="controls">
										<h4><label>세부공간소개</label></h4>
										
										<p class="help-block"></p>
									</div>
              <div class="controls">
                <label>세부공간명</label>
                <input type="text" class="form-control" id="name" required="" data-validation-required-message="세부공간명을 입력해주세요">
                <p class="help-block"></p>
              </div>
              <div class="controls">
                <label>세부공간소개</label>
                <input type="text" class="form-control" id="name" required="" data-validation-required-message="세부공간명을 입력해주세요">
                <p class="help-block"></p>
              </div>
              <div class="controls">
                <label>세부공간유형</label>
                <input type="text" class="form-control" id="name" required="" data-validation-required-message="세부공간명을 입력해주세요">
                <p class="help-block"></p>
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
											<div class="input-group">
												<span class="input-group-btn">
													<button type="button" class="btn btn-default btn-number"
														disabled="disabled" data-type="minus"
														data-field="quant[1]">
														<span class="glyphicon glyphicon-minus"></span>
													</button>
												</span> <input type="text" name="quant[1]"
													class="form-control input-number" value="1" min="1"
													max="10"> <span class="input-group-btn">
													<button type="button" class="btn btn-default btn-number"
														data-type="plus" data-field="quant[1]">
														<span class="glyphicon glyphicon-plus"></span>
													</button>
												</span>
											</div>
										
										<p class="help-block"></p>
									</div>
              						<div class="controls">
										<label>최소예약인원</label>
											<div class="input-group">
												<span class="input-group-btn">
													<button type="button" class="btn btn-default btn-number"
														disabled="disabled" data-type="minus"
														data-field="quant[1]">
														<span class="glyphicon glyphicon-minus"></span>
													</button>
												</span> <input type="text" name="quant[1]"
													class="form-control input-number" value="1" min="1"
													max="10"> <span class="input-group-btn">
													<button type="button" class="btn btn-default btn-number"
														data-type="plus" data-field="quant[1]">
														<span class="glyphicon glyphicon-plus"></span>
													</button>
												</span>
											</div>
										
										<p class="help-block"></p>
									</div>
									<div class="controls">
										<label>최대예약인원</label>
											<div class="input-group">
												<span class="input-group-btn">
													<button type="button" class="btn btn-default btn-number"
														disabled="disabled" data-type="minus"
														data-field="quant[1]">
														<span class="glyphicon glyphicon-minus"></span>
													</button>
												</span> <input type="text" name="quant[1]"
													class="form-control input-number" value="1" min="1"
													max="10"> <span class="input-group-btn">
													<button type="button" class="btn btn-default btn-number"
														data-type="plus" data-field="quant[1]">
														<span class="glyphicon glyphicon-plus"></span>
													</button>
												</span>
											</div>
										
										<p class="help-block"></p>
									</div>
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
				<button type="button" class="btn btn-default btn-number"
														data-type="plus" data-field="quant[1]">
														<span class="glyphicon glyphicon-plus"></span>
													</button>					
					<p class="help-block"></p>
			 </div>
			 <div class="controls">
                <label>이동</label>
                <input type="text" class="form-control" id="name" required="" data-validation-required-message="세부공간명을 입력해주세요">
                <p class="help-block"></p>
              </div>
			 <div class="controls">
										<label>수량</label>
											<div class="input-group">
												<span class="input-group-btn">
													<button type="button" class="btn btn-default btn-number"
														disabled="disabled" data-type="minus"
														data-field="quant[1]">
														<span class="glyphicon glyphicon-minus"></span>
													</button>
												</span> <input type="text" name="quant[1]"
													class="form-control input-number" value="1" min="1"
													max="10"> <span class="input-group-btn">
													<button type="button" class="btn btn-default btn-number"
														data-type="plus" data-field="quant[1]">
														<span class="glyphicon glyphicon-plus"></span>
													</button>
												</span>
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


			<!-- Trigger/Open The Modal -->
			   <div class="card-footer">
             		 <a href="#" class="btn btn-primary" id="myBtn">취소</a>
             		 <a href="#" class="btn btn-primary" id="myBtn2">저장</a>
           	   </div>
		
			</div>
			
        </div>
			  
		
    

			  
			  
			  
           	   <!-- /Trigger/Open The Modal -->
           	   
				<!-- The Modal -->
				<div id="myModal" class="modal">
				
				  <!-- Modal content -->
				  <div class="modal-content">
				   <span class="close">&times;</span>
				   <div class="card-header" style="text-align: center;"> <h3>해당공간예약을 취소하시겠습니까?</h3></div>
				   <div class="card-body" style="height: 200px; text-align: center;">취소된 내용 노출 자리~</div>
				    <div style="text-align: center;">
				   		 <div class="card-footer" id="myBtn">
             		 		<a href="#" class="btn btn-primary">&nbsp;&nbsp;예약취소&nbsp;&nbsp;</a>
             		 		<a href="#" class="btn btn-primary">&nbsp;&nbsp;뒤로가기&nbsp;&nbsp;</a>
           	   			 </div>
				    </div>
				  </div>
				</div>
			  <!-- /The Modal -->
			  
			  <!-- The Modal -->
				<div id="myModal2" class="modal">
				
				  <!-- Modal content -->
				  <div class="modal-content">
				   <span class="close">&times;</span>
				   <div class="card-header" style="text-align: center;"> <h3>해당공간예약 내용을 수정 하시겠습니까?</h3></div>
				   <div class="card-body" style="height: 200px; text-align: center;">수정된 내용 노출 자리~</div>
				    <div style="text-align: center;">
				   		 <div class="card-footer" id="myBtn2">
             		 		<a href="#" class="btn btn-primary">&nbsp;&nbsp;수정완료&nbsp;&nbsp;</a>
             		 		<a href="#" class="btn btn-primary">&nbsp;&nbsp;뒤로가기&nbsp;&nbsp;</a>
           	   			 </div>
				    </div>
				  </div>
				</div>
			  <!-- /The Modal -->
			  
            </div>
          </div>
        </div>
        <div class="card">
          <div class="card-header" role="tab" id="headingTwo">
            <h5 class="mb-0">
            <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo" style="margin-right: 130px;">세부공간명2</a>
            </h5>
          </div>
          <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo">
            <div class="card-body">
              Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
            </div>
          </div>
        </div>
        
      </div>

    </div>
	</div>	
	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2018</p>
		</div>
		<!-- /.container -->
	</footer>
	
		
</body>
</html>