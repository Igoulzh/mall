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
          <span><a href="infoPerfectionPage?id=${user.id}">用户：${user.account}</a></span>
          <span class="cart">购物车</span>
        </div>
      </div>
    </header>
    <section class="detail">
      <div class="product_img">
        <img src="../img/tehui_goods1.jpg" alt="">
      </div>
      <div class="product_info">
        <h2>${product.name}</h2>
        <h3>${product.description }</h3>
        <h1>${product.price}</h1>
        <p>${product.detail}</p>
        数量：<input type="text" name="num" value="" onkeyup="value=value.replace(/[^\d]/g,'')" placeholder="输入数字"/>
        <p>库存：66</p>
        <div class="button">
          <button type="button" name="button" id="addToShoppingTrolley">添加到购物车</button>
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
  <script>
  	$("#addToShoppingTrolley").click(function(){
  		var productId=${product.id};
  		var page="addToShoppingTrolley";
  		$.ajax({
  			url:page,
  			data:productId,
  			success:function(){
  				
  			}
  		});
  	})
  </script>
</html>