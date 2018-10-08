<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String path = request.getContextPath();%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
  	<script src="<%=path%>/js/jquery-3.3.1.min.js"></script>
    <meta charset="utf-8">
    <title>登录</title>
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/login.css">
    <script>
	$(function(){

	    $(".loginForm").submit(function(){
	        if(0==$("#account").val().length){
	            $("font.errorMessage1").html("请输入用户名");         
	            return false;
	        }
	        if(0==$("#password").val().length){
	            $("font.errorMessage2").html("请输入密码");
	             
	            return false;
	        }      

	        return true;
	    });
	})
	</script>
  </head>
  <body>
    <div class="center">
    <form class="loginForm" action="login" method="post">
	    <div class="login_box">
	        <input type="text" name="account" id="account" placeholder="手机号/用户名">
	        <font class="errorMessage1"></font>
	        <input type="password" name="password" id="password"  placeholder="密码">
	        <font class="errorMessage2"></font>
	        <div class="font">
	          <a href="registerPage"><span>注册</span></a>
	        </div>
	        <button type="submit" name="button">登录</button>
	      </div>
    </form>
      
      
    </div>
  </body>
</html>