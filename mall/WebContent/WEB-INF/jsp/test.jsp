<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="java.util.*" %>
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


    <form action="uploadFile"  method="post" enctype="multipart/form-data" >
        文件<input type="file"  name="uploadFile">
        <input type="submit" value="上传">
    </form>
</body>
</html>
<script>

</script>