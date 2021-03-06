<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
      <caption>用户管理</caption>
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
        <tr>
          <td><input type="checkbox"></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td><button id="bianji">编辑</button></td>
          <td><button>删除</button></td>
        </tr>
      </tbody>
    </table>
    <nav>
      <span><a>上一页</a></span>
      <span>1</span>
      <span><a>下一页</a></span>
    </nav>

    <div class="pop">
      <div class="popBox">
        <button type="button" name="close" id="close">关闭</button>
        <div style="padding: 100px 100px 10px;">
    <form class="bs-example bs-example-form" role="form">
        <div class="input-group">
            <span class="input-group-addon">账号</span>
            <input type="text" class="form-control" placeholder="">
        </div>
        <div class="input-group">
            <span class="input-group-addon">姓名</span>
            <input type="text" class="form-control" placeholder="">
        </div>
        <div class="input-group">
            <span class="input-group-addon">密码</span>
            <input type="text" class="form-control" placeholder="">
        </div>
        <div class="input-group">
            <span class="input-group-addon">性别</span>
            <input type="text" class="form-control" placeholder="">
        </div>
        <div class="input-group">
            <span class="input-group-addon">地址</span>
            <input type="text" class="form-control" placeholder="">
        </div>
        <div class="input-group">
            <span class="input-group-addon">生日</span>
            <input type="text" class="form-control" placeholder="">
        </div>
        <div class="input-group">
            <span class="input-group-addon">联系电话</span>
            <input type="text" class="form-control" placeholder="">
        </div>
        <div class="input-group">
            <span class="input-group-addon">用户类型</span>
            <input type="text" class="form-control" placeholder="">
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
      document.querySelector("#bianji").onclick = function(){
        document.querySelector(".pop").style.display = 'block';
      }
      document.querySelector("#close").onclick = function(){
        document.querySelector(".pop").style.display = 'none';
      }
      document.querySelector("#confirm").onclick = function(){
        document.querySelector(".pop").style.display = 'none';
      }
    })();
  </script>
</html>
