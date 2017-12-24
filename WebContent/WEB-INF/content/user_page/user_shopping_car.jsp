<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<title>购物车</title>
		<!-- Custom Theme files -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="" />
		<script type="application/x-javascript">
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		</script>
		<!-- //Custom Theme files -->
		<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
		<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
		<!-- js -->
		<script src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
		<!-- //js -->
		<!-- cart -->
		<script src="js/simpleCart.min.js">
		</script>
		<!-- cart -->
	</head>

	<body>
		<!--header-->
		<%@include file="../templete/user_top.jsp" %>
		<!--//header-->
		<!--cart-items-->
		<div class="cart-items">
			<div class="container">
			<c:if test="${empty loged}">
			<h2>我的购物车</h2>
			您好，请先登录
			</c:if>
			<c:if test="${not empty loged}">
				<h2>我的购物车</h2>用户id：${loged.userId}
				
				<%-- <table border="1">
				<tr><th>购物车id</th><th>商品id</th><th>商品图片</th><th>商品名称</th><th>商品数量</th><th>商品价格</th><th>操作</th></tr>
				
				<c:forEach var="shopcar" items="${shopcarList}">
				<tr>
				
				<td>${shopcar.shopcarGoodsId}</td>
				<td>${shopcar.goodsId}</td>
				<td><img src="${shopcar.goods.goodsPic}"></td>
			    <td>${shopcar.goods.goodsName}</td>
				<td>${shopcar.goodsNo}</td>
				<td>${shopcar.goods.normalPrice}</td>
				<td><a href="${pageContext.request.contextPath}/shopcar/delete_shopcar_good?shopcarGoodsId=${shopcar.shopcarGoodsId}">删除</a></td>
				</tr>
			</c:forEach>
	
				</table> --%>
			
				
				 
				 <input type="hidden" name="goodsIds" value="${shopcar.goodsId}">
				 <input type="hidden" name="userId" value="${loged.userId}">
				 
				 
				 
				 
              <form class="form-horizontal" data-validator-option="{theme:'bootstrap', timely:2, stopOnError:true}" action="${pageContext.request.contextPath}/order/add_shopcarlist2order" method="post">
				 
				<c:forEach var="shopcar" items="${shopcarList}">
				<input type="hidden" name="goodsIds" value="${shopcar.goodsId}">
				 <input type="hidden" name="userId" value="${loged.userId}">
				<div class="cart-header">
					<div class="cart-sec simpleCart_shelfItem">
						<div class="cart-item cyc">
							<img src="${shopcar.goods.goodsPic}" class="img-responsive" alt="">
						</div>
						<div class="cart-item-info">
							<h3><a href="#"> ${shopcar.goods.goodsName} </a><span>商品价格:¥ ${shopcar.goods.normalPrice}</span></h3>
							<ul class="qty">
								<li>
									<p>商品id:${shopcar.goodsId}</p>
								</li>
								<li>
									<p>免费配送</p>
								</li>
							</ul>
							<div class="delivery">
								<p>配送时间在1~1.5小时</p>
								<span><a href="${pageContext.request.contextPath}/shopcar/delete_shopcar_good?shopcarGoodsId=${shopcar.shopcarGoodsId}">删除</a></span>
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				
				</c:forEach>
				
				<input class="btn btn-success" type="submit" value="确认下单">
				</form>
				</c:if>
			</div>
		</div>
		<!--//checkout-->
		<!--footer-->
		<%@include file="../templete/user_footer.jsp" %>
		<!--footer-->
		<div class="footer-bottom">
			<div class="container">
				<p>Copyright &copy; 2017.Tasty Cake
				</p>
			</div>
		</div>
	</body>

</html>