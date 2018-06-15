<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세부공간 등록페이지</title>

<!-- Bootstrap core CSS -->
<link href="static/css/modern-business.css" rel="stylesheet">
<link href="static/css/checkbox.css" rel="stylesheet">

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


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
    $('.spinner .btn:last-of-type').on('click', function() {
      var btn = $(this);
      var input = btn.closest('.spinner').find('input');
      if (input.attr('min') == undefined || parseInt(input.val()) > parseInt(input.attr('min'))) {    
        input.val(parseInt(input.val(), 10) - 1);
      } else {
        btn.prev("disabled", true);
      }
    });
 	
    
    $()
    
    
    
    $("#button").click(function(){
    	
       var test= $(".card").first().clone().appendTo($(".card").last().prev());
        console.log(test);
    });  
    

})

/* /* /* /* /* /* 	hidde을 first로 잡고 해보기 */ 
 /* 이미 리스트 보여지고 시작하고, 공통 내용작성은 추가해서 보여주기 
 */
</script>



</head>
<body>
	<jsp:include page="/WEB-INF/view/template/head.jsp"/> 
	
	
    <div class="modal fade" id="modalContactForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h4 class="modal-title w-100 font-weight-bold">세부공간등록창</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body mx-3">
                <div class="md-form mb-5">
                    <i class="fa fa-user prefix grey-text"></i>
                    <input type="text" id="form34" class="form-control validate">
                    <label data-error="wrong" data-success="right" for="form34">세부공간명</label>
                </div>

               

                <div class="md-form">
                    <textarea type="text" id="form8" class="md-textarea form-control" rows="4"></textarea>
                    <label data-error="wrong" data-success="right" for="form8">세부공간 등록을 완료하시겠습니까?</label>
                </div>

            </div>
            <div class="modal-footer d-flex justify-content-center">
                <button class="btn btn-unique">완료 <i class="fa fa-paper-plane-o ml-1"></i></button>
            </div>
            <div class="modal-footer d-flex justify-content-center">
                <button class="btn btn-unique">수정 <i class="fa fa-paper-plane-o ml-1"></i></button>
            </div>
        </div>
    </div>
</div>

<div class="text-center">
    <a href="" class="btn btn-default btn-rounded mb-4" data-toggle="modal" data-target="#modalContactForm">Launch Modal Contact Form</a>
</div>
                
                
            
    
 	
	
	
	<jsp:include page="/WEB-INF/view/template/footer.jsp"/> 
	
</body>
</html>