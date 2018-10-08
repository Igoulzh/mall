<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String path = request.getContextPath();%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/detail.css">
  </head>
  <body>
    <header>
      <div class="head">
        <div class="join">
          <span><a href="#">用户：XXX</a></span>
          <span class="cart">购物车</span>
        </div>
      </div>
    </header>
    <section class="detail">
      <div class="product_img">
        <img src="../img/tehui_goods1.jpg" alt="">
      </div>
      <div class="product_info">
        <h2>MALINDA 马林达</h2>
        <h3>椅子垫, 红色</h3>
        <h1>¥ 49.00</h1>
        <p>填充厚实，即使放在最硬的椅子上，也能让你倍感柔软舒适。
          两面完全一致可双面使用——当一面磨损或弄脏后，只需翻转椅垫即可继续使用。</p>
        数量：<input type="text" name="num" value="" onkeyup="value=value.replace(/[^\d]/g,'')" placeholder="输入数字"/>
        <p>库存：22</p>
        <div class="button">
          <button type="button" name="button">添加到购物车</button>
          <button type="button" name="button">购买</button>
        </div>

      </div>
      <div class="detail_info">
        <h1>商品信息</h1>
        <div class="info">

        </div>
      </div>

    </section>
  </body>
</html>