<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%String path = request.getContextPath();%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

    <link rel="stylesheet" type="text/css" href="<%=path%>/css/login.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/register.css">
   
   <script src="<%=path%>/js/jquery-3.3.1.min.js"></script>
	<script>
	$(function(){
		<c:if test="${!empty message}">
		 $("font.errorMessage1").html("用户名已经被注册"); 
		</c:if>
	     
	    $(".registerForm").submit(function(){
	        if(0==$("#account").val().length){
	            $("font.errorMessage1").html("请输入用户名");         
	            return false;
	        }
	        if(0==$("#password").val().length){
	            $("font.errorMessage2").html("请输入密码");
	             
	            return false;
	        }      
	        if(0==$("#repeatpassword").val().length){
	            $("font.errorMessage3").html("请输入重复密码");
	                 
	            return false;
	        }      
	        if($("#password").val() !=$("#repeatpassword").val()){
	            $("font.errorMessage4").html("重复密码不一致");
	                   
	            return false;
	        }      
	 
	        return true;
	    });
	})
	</script>
   

    <div class="center">
    <form action="register" method="post" class="registerForm">
      <div class="login_box register_box">
        <input type="text" name="account" id ="account" value="" placeholder="输入用户名">
        <font class="errorMessage1"></font>
        <!-- <span class="errorMessage"></span> -->
        <input type="password" id="password" name="password" value="" placeholder="输入密码">
        <font class="errorMessage2"></font>
        <input type="password" id="repeatpassword" name="repeatpasword" value="" placeholder="确认密码">
        <font class="errorMessage3"></font>
        <!-- <span class="confirmnation">获取验证码</span> -->
        <font class="errorMessage4"></font>
        <div class="font">
          <a href="loginPage"><span>登陆</span></a>
        </div>
        <button type="submit" name="button">注册</button>
      </div>
	</form>
    </div>



