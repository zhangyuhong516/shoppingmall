<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Tasty Cakes主页</title>
		<!-- Custom Themefiles -->
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
		<%@include file="../templete/user_header.jsp" %>
		<!-- cart -->
	</head>

	<body>
		<!--top-->
		<%@include file="../templete/user_top.jsp" %>
		<!--banner-->
		<div class="banner">
			<div class="container">
				<h2 class="hdng">Tasty <span>Cakes</span></h2>
				<p>Our best cakes make your day special</p>
				<a href="products.html">现在就买！</a>
				<div class="banner-text">
					<img src="images/2.png" alt="" />
				</div>
			</div>
		</div>
		<!--//banner-->
		
		<!--gallery-->
		<div class="gallery">
			<div class="container">
				<div class="gallery-grids">
				
				
					<div class="col-md-8 gallery-grid glry-one">
						<a href="${pageContext.request.contextPath}/jump2user_products">
				
						<img  class="img-responsive" alt="" src="${allGoods[0].goodsPic}"/>
						
						 
							<div class="gallery-info">
								<p>查看详情</p>
								<a class="shop" href="${pageContext.request.contextPath}/jump2user_single">现在就买！</a>
								<div class="clearfix"> </div>
							</div>
						</a>
						<div class="galy-info">
							<p>${allGoods[0].goodsName}</p>
							<div class="galry">
								<div class="prices">
									<h5 class="item_price">¥${allGoods[0].normalPrice}</h5>
								</div>
								<div class="rating">
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					
					
					
					<div class="col-md-4 gallery-grid glry-two">
						<a href="products.html">
						<img src="${allGoods[1].goodsPic}" class="img-responsive" alt="" />
							<div class="gallery-info galrr-info-two">
								<p>查看详情</p>
								<a class="shop" href="${pageContext.request.contextPath}/jump2user_single">现在就买！</a>
								<div class="clearfix"> </div>
							</div>
						</a>
						<div class="galy-info">
							<p>${allGoods[1].goodsName}</p>
							<div class="galry">
								<div class="prices">
									<h5 class="item_price">¥${allGoods[1].normalPrice}</h5>
								</div>
								<div class="rating">
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					
					
			
					
					<div class="col-md-3 gallery-grid ">
						<a href="${pageContext.request.contextPath}/jump2user_products">
						<img src="${allGoods[2].goodsPic}" class="img-responsive" alt="" />
							<div class="gallery-info">
								<p>查看详情</p>
								<a class="shop" href="${pageContext.request.contextPath}/jump2user_single">现在就买！</a>
								<div class="clearfix"> </div>
							</div>
						</a>
						<div class="galy-info">
							<p>${allGoods[2].goodsName}</p>
							<div class="galry">
								<div class="prices">
									<h5 class="item_price">¥${allGoods[2].normalPrice}</h5>
								</div>
								<div class="rating">
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					
					
					<div class="col-md-3 gallery-grid ">
						<a href="${pageContext.request.contextPath}/jump2user_products">
						<img src="${allGoods[3].goodsPic}" class="img-responsive" alt="" />
							<div class="gallery-info">
								<p>查看详情</p>
								<a class="shop" href="${pageContext.request.contextPath}/jump2user_single">现在就买！</a>
								<div class="clearfix"> </div>
							</div>
						</a>
						<div class="galy-info">
							<p>${allGoods[3].goodsName}</p>
							<div class="galry">
								<div class="prices">
									<h5 class="item_price">¥${allGoods[3].normalPrice}</h5>
								</div>
								<div class="rating">
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
		
		<div class="col-md-3 gallery-grid ">
						<a href="${pageContext.request.contextPath}/jump2user_products">
						<img src="${allGoods[4].goodsPic}" class="img-responsive" alt="" />
							<div class="gallery-info">
								<p>查看详情</p>
								<a class="shop" href="${pageContext.request.contextPath}/jump2user_single">现在就买！</a>
								<div class="clearfix"> </div>
							</div>
						</a>
						<div class="galy-info">
							<p>${allGoods[4].goodsName}</p>
							<div class="galry">
								<div class="prices">
									<h5 class="item_price">¥${allGoods[4].normalPrice}</h5>
								</div>
								<div class="rating">
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
		
		
		<div class="col-md-3 gallery-grid ">
						<a href="${pageContext.request.contextPath}/jump2user_products">
						<img src="${allGoods[5].goodsPic}" class="img-responsive" alt="" />
							<div class="gallery-info">
								<p>查看详情</p>
								<a class="shop" href="${pageContext.request.contextPath}/jump2user_single">现在就买！</a>
								<div class="clearfix"> </div>
							</div>
						</a>
						<div class="galy-info">
							<p>${allGoods[5].goodsName}</p>
							<div class="galry">
								<div class="prices">
									<h5 class="item_price">¥${allGoods[5].normalPrice}</h5>
								</div>
								<div class="rating">
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
		
		
		<div class="col-md-3 gallery-grid ">
						<a href="${pageContext.request.contextPath}/jump2user_products">
						<img src="${allGoods[6].goodsPic}" class="img-responsive" alt="" />
							<div class="gallery-info">
								<p>查看详情</p>
								<a class="shop" href="${pageContext.request.contextPath}/jump2user_single">现在就买！</a>
								<div class="clearfix"> </div>
							</div>
						</a>
						<div class="galy-info">
							<p>${allGoods[6].goodsName}</p>
							<div class="galry">
								<div class="prices">
									<h5 class="item_price">¥${allGoods[6].normalPrice}</h5>
								</div>
								<div class="rating">
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
		<div class="col-md-3 gallery-grid ">
						<a href="${pageContext.request.contextPath}/jump2user_products">
						<img src="${allGoods[7].goodsPic}" class="img-responsive" alt="" />
							<div class="gallery-info">
								<p>查看详情</p>
								<a class="shop" href="${pageContext.request.contextPath}/jump2user_single">现在就买！</a>
								<div class="clearfix"> </div>
							</div>
						</a>
						<div class="galy-info">
							<p>${allGoods[7].goodsName}</p>
							<div class="galry">
								<div class="prices">
									<h5 class="item_price">¥${allGoods[7].normalPrice}</h5>
								</div>
								<div class="rating">
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
		
		<div class="col-md-3 gallery-grid ">
						<a href="${pageContext.request.contextPath}/jump2user_products">
						<img src="${allGoods[8].goodsPic}" class="img-responsive" alt="" />
							<div class="gallery-info">
								<p>查看详情</p>
								<a class="shop" href="${pageContext.request.contextPath}/jump2user_single">现在就买！</a>
								<div class="clearfix"> </div>
							</div>
						</a>
						<div class="galy-info">
							<p>${allGoods[8].goodsName}</p>
							<div class="galry">
								<div class="prices">
									<h5 class="item_price">¥${allGoods[8].normalPrice}</h5>
								</div>
								<div class="rating">
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
		
		<div class="col-md-3 gallery-grid ">
						<a href="${pageContext.request.contextPath}/jump2user_products">
						<img src="${allGoods[9].goodsPic}" class="img-responsive" alt="" />
							<div class="gallery-info">
								<p>查看详情</p>
								<a class="shop" href="${pageContext.request.contextPath}/jump2user_single">现在就买！</a>
								<div class="clearfix"> </div>
							</div>
						</a>
						<div class="galy-info">
							<p>${allGoods[9].goodsName}</p>
							<div class="galry">
								<div class="prices">
									<h5 class="item_price">¥${allGoods[9].normalPrice}</h5>
								</div>
								<div class="rating">
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					
	 
		<!--//gallery-->
		<!--subscribe-->
		<div class="subscribe">
			<div class="container">
				<h3>消息推送</h3>
				<form>
					<input type="text" class="text" value="Email" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Email';}">
					<input type="submit" value="订阅">
				</form>
			</div>
		</div>
		<!--//subscribe-->
		<!--footer-->
		<%@include file="../templete/user_footer.jsp" %>
		<!--//footer-->
		<div class="footer-bottom">
			<div class="container">
				<p>Copyright &copy; XAUFE
					<a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from
					<a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
				</p>
			</div>
		</div>
	</body>

</html>