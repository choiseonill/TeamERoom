<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap core CSS -->
<link href="<c:url value="/static/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
<link href="<c:url value="/static/css/business-frontpage.css"/>" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value="/static/css/modern-business.css"/>" rel="stylesheet">

<!-- Bootstrap core JavaScript -->
<script src="<c:url value="/static/vendor/jquery/jquery.min.js"/>"></script>
<script src="<c:url value="/static/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>

<title>방 예약</title>

<script src="<c:url value="/static/js/jquery-3.3.1.min.js"/>" type="text/javascript"></script>
<script type="text/javascript">
	$().ready(function() {
		
	    var xPosition = 0;
	      
	    var enableDrag = false; 
	    var dragStartX = 0; 
	    var marginLeftStart = 0;
	    //var position = 0;
	      
	    var that;
	    var startTime = null;
	    var endTime = null;
	    var setTime = null;
	    var isTrue = false;
	      
	    var scrollTop = $(window).scrollTop();
	    
	    ////// 달력 지난날 회색처리 /////
	    var today = ${calendar.get(2)};
	    
	    for(i =1; i< today; i++){
	    	var past = "#day"+i;
	    	$(past).css("background-color", "#CCCCCC");
	    }
	    ////////////////////////
	    
	    
	    
	    ///////인원수 버튼 //////
	    var people = $("#bookPeople").val();
	    
	    $("#mButton").click(function() {
	    	if($("#bookPeople").val() > 1){
	    		people--; 
	    		$("#bookPeople").val(people);
	    	}
	    	else{
	    		return false;
	    	}
	    	
	    });
	     
	    $("#pButton").click(function() {
	    	if($("#bookPeople").val() < ${dRoom.maxPeople}){
	    		people++;
	    		$("#bookPeople").val(people);
	    	}
	    	else{
	    		return false;
	    	}
	    })
	    ////////////
	    
	    /////예약 버튼////
	    $("#bookingBtn").click(function() {
	    	
	    	var bookingForm = $("#bookingForm");
	    	bookingForm.attr({
	    		
	    		"action" : "<c:url value="/booking"/>",
	    		"method" : "post"
	    		
	    	}).submit();
	    	
	    	
	    });
	    
	    ////////////////

	    
	    
	    
	    var date= $("#firstMonth").children("tr:nth-child(1)").children("td").first();
	    var firstMonth = "${calendar.get(1)}";
	    
  	     for( i=1; i<=5; i++ ){
	    	
	    	date = $("#firstMonth").children("tr:nth-child("+i+")").children("td").first();
	    	
	    	for( j=0; j<7; j++  ){
	    		
	    		//날짜 가져오기
	    		var test = date.children().html();
	    		
	    		// 1~9일 앞에 0 붙여서 01 02 03 이런식으로 만들기
	    		if(test.length == 1){
	    			test = "0"+test;
	    		}
	    		
	    		// 1~9월 앞에 0 붙여서 01 02 03 이런식으로 만들기
	    		if(firstMonth.length ==1){
	    			firstMonth = "0" + firstMonth;
	    		}
	    		
	    		//2018-06-08 이런식으로 날짜 만들기
	    		dateKey = ${calendar.get(0)}+"-"+firstMonth+"-"+test;  
	    		
	    		var dateMap = "${dateMap}";
	    		dateMap = dateMap.replace("{", "");
	    		dateMap = dateMap.replace("}", "");
	    		dateMap = dateMap.split(", ");
	    		
	    		//예약시간 총갯수 카운트 하기
	    		var openTime = "${room.roomEndTime - room.roomStartTime }"
	    		
	    		//임의로 값줌
	    		opentime = 4;
	    		
	    		for ( k=0; k<dateMap.length; k++ ) {
	    			var reserveTime = dateMap[k].charAt(dateMap[k].length-1);
	    			
	    			if( dateMap[k].includes(dateKey) == true && opentime == reserveTime){
	    				date.children().css("background-color", "#CCCCCC");
	    			}
	    			
	    		}
	    		
		    	date = date.next();
	    		
	    	}
	    	
	    }

	   var isChecked = false;
	   var selectedDate = 0;
	   var selectThat;
	    
	    $(".days").click(function(){
	    	
            startTime = null;
            endTime = null;
	    	
	    	
	    
	    	if ( $(this).css("background-color") == "rgb(204, 204, 204)" ) {
	    		return false;
	    	}
	    	
	    	if ( isChecked == true ) {
	    		
	    		selectThat.css("background-color", "#3ddad7");//원래 색깔로
	    		
	    		for ( i=0; i<24; i++ ) {
	    			
	    			var timeId = "#h"+i;
	    			$(timeId).css("background-color", "white");
	    			
	    		}
	    		
	    		
	    	}
	    	
	    	isChecked = true;
	    	selectThat = $(this);
	    	
	    	$(this).css("background-color", "#FF0033");
	    	
	    	selectedDate = $(this).html();
	    	var year = "${calendar.get(0)}";
	    	var month = "${calendar.get(1)}";
    		
    		if(month.length ==1){
    			month = "0" + month;
    		}
    		
    		if(selectedDate.length ==1){
    			selectedDate = "0" + selectedDate;
    		}

    		
    		
	    	selectedDate = year+"-"+month+"-"+selectedDate;
	    	
	    	
	    	//날짜에 따라 이미예약된 시간 블럭처리 하기
	    	<c:forEach var="bookList" items="${book}">
	    		var clickDate = "${bookList.bookDate}";
	    		if(clickDate ==selectedDate){
	    			var bookingTime = "#h"+"${bookList.bookTimes}";
	    			$(bookingTime).css("background-color", "#FF0033");
	    			
	    			//부킹 되어있는 애들 데이터 값 0 에서 ->1 로 바꿔서 바탕색 안바뀌게
	    			$(bookingTime).data("check", 1);
	    		}
			</c:forEach>
	    	
	    	
	    	
	    	
	    });
	    
	    
	    /////////////////////금액 계산//////////////////////////////
	    function priceCal(timeCount){
	    	
		    var price=${dRoom.pricePerTime} * timeCount;
		    
		    $("#price").html(price);
		    $("#bookPrice").val(price);
	    }
	    /////////////////////////////////////////////////////
	    	
	    	
	      $(".hourList").click(function() {
	    	  var timeCount=0;
	    	  
	    	  //시간테이블 빨간색일때 못누르게
	    	  if ( $(this).css("background-color") == "rgb(255, 0, 51)" ) {
	    		  return false;
	    	  }
	    	  
	         var fitstThat = $(".timeList").children().first("li");
	         
	         //시간 체크 박싱 되어있는 상태에서 다른 시간 눌러서 박싱 된것 풀때  바탕색을 흰색으로 바꿔주는 작업
	         if ( isTrue ) {
	            for ( i = 0; i <= 23; i++ ) {
	               		if ( $(fitstThat).data("check") == 0 || $(fitstThat).css("background-color") == "rgb(0, 0, 255)") {
		                 	$(fitstThat).css("background", "white");   
		               	}
	               		
	               		fitstThat = $(fitstThat).next();
	           		}
	            
	            isTrue = false;
	            startTime = null;
	            endTime = null;
	            
	         	}
	         
	         if ( startTime != null && endTime == null ) {
	            endTime = $(this);
	            //$(endTime).css("background", "blue");
	            
	         }
	         
	         if ( startTime == null ) {
	            startTime = $(this);
	            $(startTime).css("background", "blue");
	            priceCal(1);
	         }
	         
	         var start = $(startTime).data("id");
	         var end = $(endTime).data("id");
	         var that = $(startTime);
	         
	         
	         if ( startTime != null && endTime != null ) {
	        	 
	         		isTrue = true;
		            startTime = null;
		            endTime = null;
		            
		            for ( i = start; i <= end; i++ ) {
		            	console.log("+");
		               $(that).css("background", "blue");
		               
		               that = $(that).next();
		               timeCount++;
		               
		               //TODO
		               if(that.css("background-color") == "rgb(255, 0, 51)" ){
		            	   console.log("timec   " + timeCount);
				           priceCal(timeCount);
		            	   
		            	   isTrue = true;
		            	   startTime = null;
				           endTime = null;
		            	   return false;
		            	   
		               }
		               
		               
		               
		            }
		           
	            	console.log("timec   " + timeCount);
		            priceCal(timeCount);
	         }
	         
	      });
	      
	      
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
	      
	      
	      $("#timeBox").mouseover(function(e){
	         
	         // Enable dragging and set position on mousedown
	         $('#timeBox').mousedown(function(e) {

	             enableDrag = true;
	             dragStartX = e.pageX;

	             marginLeftStart = parseInt($(".timeList").css("margin-left"));
	            
	         });

	         // set position of content if dargging is enabled.
	         $(document).mousemove(function(e) {

	             if ( enableDrag ) {
	               
	                var test = $(".timeList").css("transform");
	                
	                 // Get the position of the drag.   
	                 var delta = e.pageX - dragStartX;
	                 
	                 var position = delta+marginLeftStart;
	                
	                 if ( position < -400 ) {
	                    position = -400;
	                 }
	                 if ( position > 0 ) {
	                    position = 0;
	                 }
	                   
	                $(".timeList").css("margin-left", position );
	                
	             }
	             
	             e.preventDefault();

	         });

	         // Disable dragging on "mouseup".
	         $(document).unbind("mouseup");
	         $(document).mouseup(function(e) {

	             if (enableDrag) {
	                 enableDrag = false;
	             }

	             e.preventDefault();

	         });
	         
	               
	         $("body").on('scroll touchmove mousewheel', function(event) {
	              event.preventDefault();
	              event.stopPropagation();
	              return false;
	            });
	             
	            
	         $("html body").mousewheel(function(event){
	            var E = event.originalEvent;
	            var data = event.originalEvent.wheelDelta;
	            
	            xPosition = (data / 12)*3 + xPosition; 
	            
	            if ( xPosition < -400 ) {
	                xPosition = -400;
	              }
	              if ( xPosition > 0 ) {
	                 xPosition = 0;
	              }
	            
	            $(".timeList").css("margin-left", xPosition);   
	         
	            
	         });
	         
	      });
	      
	      $("#timeBox").mouseout(function(e){
	         $("body").off('scroll touchmove mousewheel');   
	      });
	       
	   

	      
		<%-- side scroll bar --%>
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
			if($("#month").html() == ${ calendar.get(1)} ){
				$("#year").html( ${calendar.get(5) } );	
				$("#month").html( ${calendar.get(6)} );
				$("#firstMonth").css("display", "none");	
				$("#nxtMonth").css("display", "inline-block");				
			}

			else if($("#month").html() == ${ calendar.get(6) } ){
				alert(" 예약은 오늘 날짜로 부터 한달 후 까지만 가능합니다. ")
			}
		});
	  
		$("#beforeBtn").click(function() {
			
			if($("#month").html() == ${ calendar.get(6) } ){				
				$("#year").html(${calendar.get(0)});	
				$("#month").html(${calendar.get(1)});
				$("#nxtMonth").css("display", "none");
				$("#firstMonth").css("display", "inline-block");
				
			}
			else if($("#month").html() == ${ calendar.get(1) } ){
				alert(" 예약은 오늘 날짜로 부터 한달 후 까지만 가능합니다. ")
			}
		});

	
		//달력에서 예약날짜 선택
		$(".days").click(function() {
			
			var bookDay = $(this).html();
			if(bookDay == "x"){
				return false;
			}
			
			var classs = $(this).attr("class");
			  
			if( classs.indexOf('first') >=0 )  {
				var bookYear = ${calendar.get(0)};
				var bookMonth = ${calendar.get(1)};
				var bookDate = bookYear + "," + bookMonth + "," + bookDay;
				var bookList = $("#bookDate").val()+ "/" + bookDate;
				$("#bookDate").val(bookList);
				//alert(bookList);
			}
			
			if(classs.indexOf('nxt') >=0) {
				var abookYear = ${calendar.get(5)};
				var abookMonth = ${calendar.get(6)};
				var nbookDate = abookYear + "," + abookMonth + "," + bookDay;
				var nbookList = $("#bookDate").val()+ "/" + nbookDate;
				$("#bookDate").val(nbookList);
				//alert(nbookList);
			}
			
		});
	
		
		$("#bookingBtn").click(function() {
			$("#bookingForm").attr({
				"method" : "post",
				"action" : "<c:url value="/book"/>"
			}).submit();
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

thead {
	display: inline-block;
	text-align: center;
}

#firstMonth {
	display: inline-block;
}

#nxtMonth {
	display: none;
}

.timeList {
	padding-left: 15px;
	border: 1px solid;
	border-left: none;
	width: 2056px;
	height: 55px;
	list-style: none;
	font-size: 30px;
	margin-left: 0px;
	cursor: pointer;
	transition: 0.3s all ease;
}

.hourList {
	margin-right: 15px;
	width: 40px;
	float: left;
	text-decoration: none;
	display: inline-block;
	box-sizing: border-box;
	border: 1px solid black;
	margin: 0px;
	text-align: center;
}

.invalidBox {
	background-color: #CCCCCC;
}

.today {
	background-color: #6799FF;
	width: 95px;
	height: 50px;
	margin: 1px;
	display: inline-block;
}

.dayOfWeek {
	width: 97px !important;
}

.invalidTime{
	background-color: #ffffff;
}

#bookingBtn {
	font-size: 20pt; 
	width: 100%; 
	height: 50x; 
	background-color: #3ddad7; 
	text-align: center;
}

#price {
	display: inline-block; 
	font-size: 18pt; 
	color: #0100FF; 
	font-weight: bold; 
	margin-left: 60%;
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
					</span>
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

				<div>
					<input type="button" id="beforeBtn" name="beforeBtn" value="<"/>
					<%-- 달력 상단에 년 월 --%>
					<span id="yearNmonth" style="margin-left: 40%;"> 
						<span id="year">${calendar.get(0)}</span>. <span id="month">${calendar.get(1)}</span>.
					</span> 
					<input style="margin-left: 43%;" type="button" id="nextBtn" name="nextBtn" value=">" />
				</div>

				<div class="card-body">
					<table>
						<thead>
							<tr>
								<th class="dayOfWeek">SUN</th>
								<th class="dayOfWeek">MON</th>
								<th class="dayOfWeek">TUE</th>
								<th class="dayOfWeek">WED</th>
								<th class="dayOfWeek">THU</th>
								<th class="dayOfWeek">FRI</th>
								<th class="dayOfWeek">SAT</th>
							</tr>
						</thead>

						<%-- 달력 보여주기(첫번쨰 달) --%>
						<tbody id="firstMonth">
							<%-- 7일 마다  잘라주기 위한 변수 --%>
							<c:set var="j" value="7" />

							<%-- 그주의 토요일(달력상 마지막 날이 토요일이기때문에 그 부분에서 다름 줄로 넘긴다.) 구하는 공식 --%>
							<c:set var="firstSat" value="${7-calendar.get(4)}" />
							<c:set var="week" value="${firstSat%7}" />

							<tr>
								<c:if test="${calendar.get(4)<7}">
									<c:forEach begin="1" end="${calendar.get(4)}">
										<td><div style="background-color: #CCCCCC" class="days">x</div></td>
									</c:forEach>
								</c:if>

								<c:forEach begin="1" end="${calendar.get(3)}" var="i">
									<c:choose>
									
										<%--토요일은 파란색--%>
										<c:when test="${i%j == week }">
											<td><a style="color: #0054FF;" class="days first" id="day${i}">${i}</a></td>
											</tr><tr>
										</c:when>
										
										<%--일요일은 빨간색--%>
										<c:when test="${i%j == week+1 }">
											<td><a style="color: #FF0000" class="days first" id="day${i}">${i}</a></td>
										</c:when>
										
										
										<c:otherwise>
											<td><a class="days first" id="day${i}">${i}</a></td>
											<c:if test="${i==calendar.get(3)}">
												</tr>
											</c:if>
										</c:otherwise>

									</c:choose>
								</c:forEach>
						</tbody>

						<%-- 달력 보여주기(두번쨰 달) --%>
						<tbody id="nxtMonth">
							<%-- 그주의 토요일(달력상 마지막 날이 토요일이기때문에 그 부분에서 다름 줄로 넘긴다.) 구하는 공식--%>
							<c:set var="secondSat" value="${7-calendar.get(9)}" />
							<c:set var="week2" value="${secondSat%7}" />

							<tr>
								<c:forEach begin="1" end="${calendar.get(9)}">
									<c:if test="${calendar.get(9) < 7}">
										<td><div class="days">x</div></td>
									</c:if>
								</c:forEach>

								<c:forEach begin="1" end="${calendar.get(8)}" var="q">
									<c:choose>

										<%--토요일은 파란색--%>
										<c:when test="${q%j == week2 }">
											<td><a style="color: #0100FF" class="days nxt" id="day${q}">${q}</a></td>
											</tr><tr>
										</c:when>

										<%--일요일은 빨간색--%>
										<c:when test="${q%j == week2+1 }">
											<td><a style="color: #FF0000" class="days nxt" id="day${q}">${q}</a></td>
										</c:when>

										<c:otherwise>
											<td><a class="days nxt" id="day${q}">${q}</a></td>
											<c:if test="${q==calendar.get(8)}">
												</tr>
											</c:if>
										</c:otherwise>

									</c:choose>
								</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<div>
				<h5 class="card-header">시간 선택</h5>
				<div id="timeBox" class="card-body " style="overflow: hidden;">
					<div>
						<ul class="timeList">
							<li class="hourList" id="h0" data-id="0" data-check="0">0</li>
							<li class="hourList" id="h1" data-id="1" data-check="0">1</li>
							<li class="hourList" id="h2" data-id="2" data-check="0">2</li>
							<li class="hourList" id="h3" data-id="3" data-check="0">3</li>
							<li class="hourList" id="h4" data-id="4" data-check="0">4</li>
							<li class="hourList" id="h5" data-id="5" data-check="0">5</li>
							<li class="hourList" id="h6" data-id="6" data-check="0">6</li>
							<li class="hourList" id="h7" data-id="7" data-check="0">7</li>
							<li class="hourList" id="h8" data-id="8" data-check="0">8</li>
							<li class="hourList" id="h9" data-id="9" data-check="0">9</li>
							<li class="hourList" id="h10" data-id="10" data-check="0">10</li>
							<li class="hourList" id="h11" data-id="11" data-check="0">11</li>
							<li class="hourList" id="h12" data-id="12" data-check="0">12</li>
							<li class="hourList" id="h13" data-id="13" data-check="0">13</li>
							<li class="hourList" id="h14" data-id="14" data-check="0">14</li>
							<li class="hourList" id="h15" data-id="15" data-check="0">15</li>
							<li class="hourList" id="h16" data-id="16" data-check="0">16</li>
							<li class="hourList" id="h17" data-id="17" data-check="0">17</li>
							<li class="hourList" id="h18" data-id="18" data-check="0">18</li>
							<li class="hourList" id="h19" data-id="19" data-check="0">19</li>
							<li class="hourList" id="h20" data-id="20" data-check="0">20</li>
							<li class="hourList" id="h21" data-id="21" data-check="0">21</li>
							<li class="hourList" id="h22" data-id="22" data-check="0">22</li>
							<li class="hourList" id="h23" data-id="23" data-check="0">23</li>
						</ul>
					</div>
				</div>
			</div>

			<form:form modelAttribute="bookingForm">
				<div>
					<h5 class="card-header">인원수 선택</h5>
					<div class="card-body">
						<div class="input-group">

							<div class="bookPeoples">
								<input type="button" id="mButton" value="-" /> 
								<input type="text" id="bookPeople" name="bookPeople" value='1' /> 
								<input type="button" id="pButton" value="+" />
							</div>

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
											value="${sessionScope.__USER__.name}"/>
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
											value="${sessionScope.__USER__.phone}"/>
									</div>
								</dd>
							</dl>
							<dl>
								<dt>
									<label for="name">이메일</label>
								</dt>
								<dd>
									<div>
										<input type="text" name="email" value="${sessionScope.__USER__.email}"/>
									</div>
								</dd>
							</dl>
						</div>
							<input type="hidden" id="bookDate" name="bookDate" value="${bookDate}" /> 
							<input type="hidden" id="bookTimes" name="bookTimes" value="${bookTimes}" />
							<input type="hidden" id="bookPrice" name="bookPrice" value="0" />
						<p>예약자 정보 어쩌구 저쩌구 확인해주세요 ㅇㅅㅇ</p>
					</div>
				</div>
			</form:form>
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
		<%-- Sidebar Widgets Column --%>
		<div class="col-md-4">
			<!-- Side Widget -->
			<div class="card my-4" id="card">
				<h5 class="card-header">세부공간 선택</h5>
				<div class="card-body">
					<hr />
					<div style="display: inline-block; font-size: 18pt; color: #0100FF; font-weight: bold; margin-left: 5%">￦</div>
					<div id="price">0</div>
					<div id="bookingBtn">예약 하기</div>

				</div>
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