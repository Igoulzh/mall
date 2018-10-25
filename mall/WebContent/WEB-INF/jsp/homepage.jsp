<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%
	String path = request.getContextPath();
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>

<link rel="stylesheet" type="text/css" href="<%=path%>/css/index.css" />
</head>
<body>
	<header>
	<div class="head">
		<div class="join">
			<c:choose>
				<c:when test="${!empty user}">
					<span><a href="infoPerfectionPage?id=${user.id}">${user.account}</a></span>
					<span><a href="logout">退出</a></span>
				</c:when>

				<c:when test="${empty user}">
					<span><a href="loginPage">登录</a></span>
					<span><a href="registerPage">注册</a></span>
				</c:when>
			</c:choose>
			<span class="cart">购物车</span>
		</div>
	</div>
	</header>
	<div class="search">
		<div class="search_box">
			<input type="text" placeholder="搜索商品" />
			<svg class="icon" aria-hidden="true"> <use
				xlink:href="#icon-sousuo"></use> </svg>
		</div>
	</div>
	<div class="slider">
		<ul class="list">
			<li class="item"><img
				src="<%=request.getContextPath()%>/img/1.jpeg" /></li>
			<li class="item"><img
				src="<%=request.getContextPath()%>/img/2.jpeg" /></li>
			<li class="item"><img
				src="<%=request.getContextPath()%>/img/3.jpeg" /></li>
			<li class="item"><img
				src="<%=request.getContextPath()%>/img/4.jpeg" /></li>
		</ul>
		<div class="prev">
			<svg class="icon" aria-hidden="true"> <use
				xlink:href="#icon-left-circle"></use> </svg>
		</div>
		<div class="next">
			<svg class="icon" aria-hidden="true"> <use
				xlink:href="#icon-right-circle"></use> </svg>
		</div>
	</div>

	<section class="main">
	<h1>·特惠活动·</h1>
	<div class="tehui_img">
		<img src="<%=request.getContextPath()%>/img/tehui1.png" />
	</div>
	<div class="tehui_goods">
		<span> <img
			src="<%=request.getContextPath()%>/img/tehui_goods1.jpg" /> <a
			href="detailPage?id=1" id="product1"><h4>
					马琳达<br />椅子垫
				</h4></a>
		</span> <span> <img
			src="<%=request.getContextPath()%>/img/tehui_goods2.jpg" /> <a
			href="#"><h4>
					欧巴丽<br />带盖锅
				</h4></a>
		</span> <span> <img
			src="<%=request.getContextPath()%>/img/tehui_goods3.jpg" /> <a
			href="#"><h4>
					斯塔比尔<br />蒸屉，不锈钢
				</h4></a>
		</span>
	</div>

	<h1 style="margin-top: 80px">·金牌商家·</h1>
	<div class="shangjia">
		<a href="#"><div class="shangjia_info">
				<img src="<%=request.getContextPath()%>/img/shangjia1.jpg" />
				<h1 id="h1_1">
					GRATULERA 格拉图列拉 系列<br />
					<br /> <font class="beizhu">GAGNET 格南特 单人沙发/扶手椅</font><br /> <font
						class="price">￥499.00</font>
				</h1>
			</div></a> <a href="#"><div class="shangjia_info"
				style="text-align: right;">
				<img src="<%=request.getContextPath()%>/img/shangjia2.jpg" />
				<h1 id="h1_2" style="text-align: left">
					LYSKRAFT 里斯卡特<br />
					<br /> <font class="beizhu">KLIPPAN 克利帕 双人沙发</font><br /> <font
						class="price">￥1399.00</font>
				</h1>
			</div></a>
	</div>
	</section>

	<footer> </footer>

</body>
<script src="<%=request.getContextPath()%>/js/jquery-3.3.1.min.js"></script>
<script src="<%=request.getContextPath()%>/js/index.js"></script>
<script src="http://at.alicdn.com/t/font_851520_ll25ueq7cp.js"></script>

<script>
	$("#product1").click(function() {
		var id = $
		{
			user.id
		}
		;
		var page = "";
		$.ajax({

		})
	})
</script>
</html>
