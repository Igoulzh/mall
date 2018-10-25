<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%String path = request.getContextPath();%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <title></title>
  <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<style media="screen">
  body{
    background-color: #eee
  }
  .content{
    /* background-color: red; */
    margin-top: 100px;d
    background-color: white;
    padding:30px;
  }
  .form-horizontal .control-label{
    text-align: center;
  }
  h1{
    text-align: center;
    margin-bottom: 30px;
  }
</style>
<body>
<div class="container">
  <div class="row">
    <div class="col-md-8 col-md-offset-2 content">
      <h1>完善信息</h1>


      <div class="form-group">
        <label for="firstname" class="col-sm-2 control-label">用户名</label>
        <div class="col-sm-10">
          <label>${user.account}</label>
        </div>
      </div>


        <input type="hidden" id="id" value="${user.id}">
        <input type="hidden" id="account" value="${user.account}">
        <input type="hidden" id="password" value="${user.password}">
        <input type="hidden" id="type" value="${user.type}">
        <input type="hidden" id="gender" value="${user.gender}">
        <%--<input type="date"   name="birthday" fmt:formatDate value="${user.birthday}" pattern="yyyy-MM-dd">--%>

        <div class="form-group">
          <label for="firstname" class="col-sm-2 control-label">姓名</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="name"  value="${user.name}">
          </div>
        </div>

        <div class="form-group">
          <label for="firstname" class="col-sm-2 control-label">地址</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="address" value="${user.address}">
          </div>
        </div>

        <div class="form-group">
          <label for="firstname" class="col-sm-2 control-label">联系电话</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="telephone" value="${user.telephone}">
          </div>
        </div>


        <div class="form-group">
          <div class="col-sm-offset-2 col-sm-10">
            <button type="button"  id="confirm" >确认</button>
          </div>
        </div>
    </div>
  </div>

</div>
</body>
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
     $("#confirm").click(function(){

        var page="userInfoUpdate";
        var id=$("#id").val();
        var account=$("#account").val();
        var password=$("#password").val();
        var name=$("#name").val();
        var gender=$("#gender").val();
        var address=$("#address").val();
        var telephone=$("#telephone").val();

        var type=$("#type").val();
        var user={"id":id,"account":account,"name":name,"password":password,"gender":0,"address":address,"telephone":telephone,"type":type};
        var userInfo=JSON.stringify(user);
         $.ajax({
             type:"POST",
             contentType:"application/json",
             dataType:"json",
             url:page,
             data:userInfo,
             // data:{"id":id,"account":account,"name":name,"password":password
             //     ,"gender":0,"address":address,
             // "telephone":telephone,"type":type},

             success:function(user){
                 alert("成功")
                 window.location.href="homePage";
             }
         });
    });
</script>
</html>
	
