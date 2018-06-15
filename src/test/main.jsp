<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="<c:url value="/static/js/jquery-3.3.1.min.js"/>"
	type="text/javascript"></script>
<script type="text/javascript">
	$().ready(function() {
		var current_id = 0;
		$('#btn').click(function() {
			nextElement($('#container'));
		})
	});
</script>
<script type="text/javascript">
function nextElement(element){
    var newElement = element.clone();
    var id = current_id+1;
    current_id = id;
    if(id <10)id = "0"+id;
    newElement.attr("id",element.attr("id").split("_")[0]+"_"+id);
    var field = $('input', newElement).attr("id");
    $('input', newElement).attr("id", field.split("_")[0]+"_"+id );
    newElement.appendTo($("#container"));
}
</script>
</head>
<body>
	
	<div id="container">
		<input type="text" palceholder="인풋"/>
		<input type="text" palceholder="인풋"/> 
		<input type="text" palceholder="인풋"/>
	</div>
	<input type="button" />
</body>



</html>