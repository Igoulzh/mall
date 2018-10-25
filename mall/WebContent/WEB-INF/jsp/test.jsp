<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%String path = request.getContextPath();%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script src="http://how2j.cn/study/jquery.min.js"></script>
 


</head>

<body>
	<div id="checkResult"></div>
  
输入账号 :<input id="name" type="text">
</body>
</html>
<script>
$(function(){
	   $("#name").keyup(function(){
	     var page = "test";
	     var value = $(this).val();
	        $.ajax({
	            url: page,
	            data:{"name":value},
	            success: function(result){
	              $("#checkResult").html(12);
	            }
	        });
	   });
	});
</script>