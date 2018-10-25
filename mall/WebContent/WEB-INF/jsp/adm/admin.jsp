<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String path = request.getContextPath();%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>后台</title>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=path%>/css/admin.css" rel="stylesheet">
  </head>
  <body>
    <header>
      <h1>商城后台管理</h1>
    </header>
    <div class="panel-group col-md-2" id="accordion">
      <div class="panel panel-default">
          <div class="panel-heading">
              <h4 class="panel-title">
                  <a data-toggle="collapse" data-parent="#accordion"
                  href="#collapseOne">
                  商城内容管理
                  </a>
              </h4>
          </div>
          <div id="collapseOne" class="panel-collapse collapse in">
              <div class="panel-body">
                  <ul>
                    <li><a href="#">轮播图管理</a></li>
                    <li><a href="#">首页版块管理</a></li>
                  </ul>
              </div>
          </div>
      </div>
      <div class="panel panel-default">
          <div class="panel-heading">
              <h4 class="panel-title">
                  <a data-toggle="collapse" data-parent="#accordion"
                  href="#collapseTwo">
                  用户管理
              </a>
              </h4>
          </div>
          <div id="collapseTwo" class="panel-collapse collapse">
          <div class="panel-body">
            <ul>
              <li><a href="#">买家管理</a></li>
              <li><a href="#">卖家管理</a></li>
            </ul>
          </div>
          </div>
      </div>
      <div class="panel panel-default">
          <div class="panel-heading">
              <h4 class="panel-title">
                  <a data-toggle="collapse" data-parent="#accordion"
                  href="#collapseThree">
                  商品管理
                  </a>
              </h4>
          </div>
          <div id="collapseThree" class="panel-collapse collapse">
              <div class="panel-body">
                  <ul>
                    <li><a href="#">商品列表</a></li>
                  </ul>
              </div>
          </div>
      </div>
    </div>

    <iframe src="adminBuyer" class="col-md-10 iframe" frameborder="0" scrolling="no"></iframe>
  </body>
  <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
  <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>