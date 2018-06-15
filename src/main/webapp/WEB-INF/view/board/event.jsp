<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"
		src="<c:url value="../static/js/jquery-3.3.1.min.js"/>"></script>
<script type="text/javascript">
	$().ready( function(){	
			 /* 엔터로 검색실행 */
			 $("#searchKeyword").keyup(function(event){
				console.log(event);
				if (event == "enter" || event.which == 13  ){
					 movePage('0');
				}
			 });
			 /* 클릭시 검색실행 */
			 $("#searchBtn").click( function(){
				 movePage('0');
			  });
			/* 게시판 클릭시 슬라이드다운 */
			 $(".body").hide();
			 $(".card-header").click(function(){
				 var that = $(this);
			 	 $(this).toggleClass(".card-header").next('.body').slideToggle('fast');
			 	 var boardId = $(this).find('.boardId').text();
			 	 var viewCount = $(this).find('#viewCount').text();
					
			 	 $.get( "<c:url value="/api/incrementVC/"/>"+ boardId ,{
			 	 },function(res){
			 	
			 		 console.log(that.find('#viewCount').text());
			 		 that.find('#viewCount').html( res );
			 		   
			 	 });
			 	 
			 	 
		    });
			 
	 });
		
</script>
</head>
  <body>
	 <head><jsp:include page="/WEB-INF/view/template/head.jsp" /></head> 

    <!-- Page Content -->
    <div class="container">

      <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3">
		이벤트
      </h1>
         <div class="card mb-4">
            <div class="card-body">
              <div class="input-group">
	              
	             <form id="searchForm" onsubmit="movePage('0')" style="width:100%;">
	              	   <div style="display:none;"> ${pageExplorer.make()}</div>
				        <select id="searchType" name="searchType" style="display:inline-block; width:10%;">
							<option value="1" ${search.searchType eq 1 ? 'selected' : '' }>글제목</option>
							<option value="2" ${search.searchType eq 2 ? 'selected' : '' }>제목 + 글제목</option>
							<option value="3" ${search.searchType eq 3 ? 'selected' : '' }>작성자 Email </option>
						</select>
						 <div style="display:inline-block; width:60%;">
							<input type="text" id="searchKeyword" name="searchKeyword" value="${search.searchKeyword}" class="form-control" placeholder="Search for..."/>
						</div>
						<div style="display:inline-block; width:20%;">
		                	 <a class="btn btn-primary" style="display:inline-block; color:#FFFFFF" id="searchBtn"  >검색</a>
		                	 <a href="<c:url value="/board/reset"/>" class="btn btn-primary" style="display:inline-block;">검색 초기화</a>
			            </div>
   		          </form> 
   		       </div>
                	<span class="input-group-btn" style="margin-left: 10px;">
                  <!-- <button class="btn btn-secondary" type="button" style="display:inline-block";>검색!</button> -->
            	    </span>
               </div> 
            </div>
      <div class="mb-4" id="accordion" role="tablist" aria-multiselectable="true">
		   <div>
				<span>
					${pageExplorer.make()}
			        <a href="/board/boardWrite" class="btn btn-primary" style="text-align:right; margin-left:85%; margin-bottom:1%;">&nbsp;&nbsp;글쓰기&nbsp;&nbsp;</a>
				</span>
			</div>
         <div class="card">
		  <c:forEach items="${pageExplorer.list}" var="board">
	          <div class="card-header" role="tab" id="headingOne">
	            <h5 class="mb-0">
	            	<tr>
		            	<div data-id="${board.ID}">
		            		<!-- 전체갯수-(페이지번호 -1 ) * 한페이지에 표시할 갯수 ) -->
							<div class="boardId" style="display:inline-block; margin-left:1%; width:20%;" ><th>${board.ID}</th></div>
							<div style="display:inline-block; margin-left:3%; width:15%;" maxlength="1"><th>${board.title}</th></div>
							<div style="display:inline-block; margin-left:23%; width:25%;" id="write_date" ><th> ${board.write_date}</th></div>
							<div style="display:inline-block; margin-left:1%; width:10%;" id="viewCount"><th>${board.viewCount}</th></div>
						</div>	
					</tr>
	            </h5>
	          </div>
          
       <div id="body" class="body" role="tabpanel" aria-labelledby="headingOne"; >
               <table class="table table-condensed">
					<tr>
						<td colspan="2" height="130px">
							${board.body}
						</td>
					</tr>
				</table>
				<table class="table table-condensed">
					<thead>
						<tr>
							<td class="card-footer">
								<span style='float: right' >
									<a href="#" class="btn btn-primary">&nbsp;&nbsp;수정&nbsp;&nbsp;</a>
									<a class="btn btn-primary" href="<c:url value="/board/delete/${board.ID}"/>">&nbsp;&nbsp;삭제&nbsp;&nbsp;</a>
								</span>
							</td>
						</tr>
					</thead>
				</table>
				<!-- /게시판 부분 -->
         </div>
         <div style="height:3px;"></br></div>
		</c:forEach>
        </div>
       </div>
      </div>
    </div>
    
    <!-- /.container -->
	
  </body>
	<div>
	 <jsp:include page="/WEB-INF/view/template/footer.jsp"/> 
	</div>
</html>