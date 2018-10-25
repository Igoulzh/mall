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
    <style media="screen">
      html,body{
        width: 100%;
        height: 100%;
      }
      a:hover{
        text-decoration: none;
      }
      .pop{
        position: fixed;
        top: 0;
        width: 100%;
        background:rgba(0,0,0,.2);
        height: 100%;
        display: none
      }
      .pop .popBox{
        width: 60%;
        background:rgba(255,255,255,1);
        position: fixed;
        top: 50%;

        left: 50%;
        transform: translate(-50%,-50%);
        min-height: 500px;
      }
      .pop .popBox button{
        float: right;
      }
      nav{
        text-align: center;
      }
      nav a{
        cursor: pointer;
      }
    </style>
  </head>
  <body>
    <table class="table table-bordered">
      <caption>买家管理</caption>
      <thead>
        <tr>
          <th><input type="checkbox" id="checkAll"></th>
          <th>ID</th>
          <th>账号</th>
          <th>姓名</th>
          <th>密码</th>
          <th>性别</th>
          <th>地址</th>
          <th>生日</th>
          <th>联系电话</th>
          <th>用户类型</th>
          <th>编辑</th>
          <th>删除</th>
        </tr>
      </thead>
      <tbody>
      <c:forEach items="${user}" var="u">
      	<tr id="${u.id}">
          <td><input type="checkbox"></td>
          <td>${u.id}</td>
          <td>${u.account}</td>
          <td>${u.name}</td>
          <td>${u.password}</td>
          <td>${u.gender}</td>
          <td>${u.address}</td>
          <td><fmt:formatDate value="${u.birthday}" pattern="yyyy-MM-dd" /></td>
          <td>${u.telephone}</td>
          <td>${u.type}</td>
          <td><button value=${u.id} class="bianji" id="edit">编辑</button></td>
          <td><button><a deleteLink="true" href="userDelete?id=${u.id}">删除</a></button></td>
        </tr>
      </c:forEach>
        
      </tbody>
    </table>
    <div style="text-align:center">
        <a href="?start=0">首  页</a>
        <a href="?start=${page.start-page.count}">上一页</a>
        <a href="?start=${page.start+page.count}">下一页</a>
        <a href="?start=${page.last}">末  页</a>
    </div>

    <div class="pop">
      <div class="popBox">
        <button type="button" name="close" id="close">关闭</button>
        <div style="padding: 100px 100px 10px;">
    <form class="bs-example bs-example-form" role="form">
    	<input type="hidden" id="userId">
        <div class="input-group">
            <span class="input-group-addon">账号</span>
            <input type="text" id="userAccount"class="form-control" value="">
        </div>
        <div class="input-group">
            <span class="input-group-addon">姓名</span>
            <input type="text" id="userName" class="form-control" >
        </div>
        <div class="input-group">
            <span class="input-group-addon">密码</span>
            <input type="text" id="userPassword" class="form-control" >
        </div>
        <div class="input-group">
            <span class="input-group-addon">性别</span>
            <input type="text" id="userGender" class="form-control" >
        </div>
        <div class="input-group">
            <span class="input-group-addon">地址</span>
            <input type="text" id="userAddress" class="form-control" >
        </div>
        <div class="input-group">
            <span class="input-group-addon">生日</span>
            <input type="date" id="userBirthday" class="form-control" value="2011-1-1">
        </div>
        <div class="input-group">
            <span class="input-group-addon">联系电话</span>
            <input type="text" id="userTelephone" class="form-control" >
        </div>
        <div class="input-group">
            <span class="input-group-addon">用户类型</span>
            <input type="text" id="userType" class="form-control" >
        </div>
        <button type="button" name="button" style="margin-top:20px;" id="confirm">确定</button>
    </form>
</div>
      </div>
    </div>
  </body>
  <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
  <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script>
  $(function(){
	 /* $(".edit").click(function(){
		var page="adminBuyerUserEdit";
		var id=$(this).val(); 
		console.log("a")
		$.ajax({
			type:"POST",
			url:page,
			data:{"id":id},
			success :function(user){
				console.log(user);
			}
		});
	 }); */
	 var edit = document.querySelectorAll(".bianji");

	 for ( var i = 0; i < edit.length; i++) {
		(function(i){
			edit[i].onclick = function(){
				var page="adminBuyerUserEdit";
				var id=$(this).val(); 
			
				$.ajax({
					type:"POST",
					url:page,
					data:{"id":id},
					success :function(user){
						var date=new Date();
						date.setTime(user.birthday);
						var strDate=date.getFullYear()+"-"+date.getMonth()+"-"+date.getDay();
						$("#userId").val(user.id);
						$("#userAccount").val(user.account);
						$("#userName").val(user.name);
						$("#userPassword").val(user.password);
						$("#userGender").val(user.gender);
						$("#userAddress").val(user.address);
						$("#userBirthday").val(strDate);
						$("#userTelephone").val(user.telephone);
						$("#userType").val(user.type);
					}
				});
				document.querySelector(".pop").style.display = 'block';
			}
		})(i)
	}
  });
  
  $(function(){
	    $("a").click(function(){
	        var deleteLink = $(this).attr("deleteLink");
	        console.log(deleteLink);
	        if("true"==deleteLink){
	            var confirmDelete = confirm("确认要删除");
	            if(confirmDelete)
	                return true;
	            return false;
	             
	        }
	    })
	});
    (function(){
      function selectAll(){
        var checkAll = document.querySelector("#checkAll");
        var checkBox = document.querySelectorAll("input[type='checkbox']");
        if(checkAll.checked){
          for (var i = 0; i < checkBox.length; i++) {
            checkBox[i].checked = true;
          }
        }else{
          for (var i = 0; i < checkBox.length; i++) {
            checkBox[i].checked = false;
          }
        }
      }
      document.querySelector("#checkAll").onclick = function(){
        selectAll();
      }
      
      /* var bianji = document.querySelectorAll(".bianji"); */
      /* console.log(bianji)
      for ( var i = 0; i < bianji.length; i++) {
		bianji[i].onclick = function(){
			var id=document.getElementById("edit").value; 
			
		   document.querySelector(".pop").style.display = 'block';
		      
		}
	} */
      document.querySelector("#close").onclick = function(){
        document.querySelector(".pop").style.display = 'none';
      }
      document.querySelector("#confirm").onclick = function(){
        document.querySelector(".pop").style.display = 'none';
      }
    })();
    $(function(){
    	$("#confirm").click(function(){
    		var page="adminBuyerUserEditConfirm";
    		var id=$("#userId").val();
    		var account=$("#userAccount").val();
    		var name=$("#userName").val();
    		var password=$("#userPassword").val();
    		var gender=$("#userGender").val();
    		var address=$("#userAddress").val();
    		var birthday=$("#userBirthday").val();
    		var telephone=$("#userTelephone").val();
    		var type=$("#userType").val();
    		var user={"id":id,"account":account,"name":name,"password":password,"gender":gender,"address":address,
    				"birthday":birthday,"telephone":telephone,"type":type};
    		var userInfo=JSON.stringify(user);
    		$.ajax({
    			type:"POST",
    			contentType:"application/json",
    			dataType:"json",
    			url:page,
    			data:userInfo,
    			success:function(result){
    				var td = $("#"+user.id+" td");
    				td[2].innerHTML = user.account;
    				td[3].innerHTML = user.name;
    				td[4].innerHTML = user.password;
    				td[5].innerHTML = user.gender;
    				td[6].innerHTML = user.address;
    				td[7].innerHTML = user.birthday;
    				td[8].innerHTML = user.telephone;
    				td[9].innerHTML = user.type;
					
    			}
    		});
    		console.log(JSON.stringify(user));
    	});
    });
  </script>
</html>
