<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<%@include file="user_top.jsp" %>
		<!--//header-->
		<!--cart-items-->
		<div class="cart-items">
			<div class="container">
				<h2>我的购物车</h2>
				<script>
					$(document).ready(function(c) {
						$('.close1').on('click', function(c) {
							$('.cart-header').fadeOut('slow', function(c) {
								$('.cart-header').remove();
							});
						});
					});
				</script>
				<div class="cart-header">
					<div class="close1"> </div>
					<div class="cart-sec simpleCart_shelfItem">
						<div class="cart-item cyc">
							<img src="images/m1.png" class="img-responsive" alt="">
						</div>
						<div class="cart-item-info">
							<h3><a href="#"> Lorem Ipsum is not simply </a><span>Pickup time:</span></h3>
							<ul class="qty">
								<li>
									<p>Min. order value:</p>
								</li>
								<li>
									<p>FREE delivery</p>
								</li>
							</ul>
							<div class="delivery">
								<p>Service Charges : $10.00</p>
								<span>Delivered in 1-1:30 hours</span>
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<script>
					$(document).ready(function(c) {
						$('.close2').on('click', function(c) {
							$('.cart-header2').fadeOut('slow', function(c) {
								$('.cart-header2').remove();
							});
						});
					});
				</script>
				<div class="cart-header2">
					<div class="close2"> </div>
					<div class="cart-sec simpleCart_shelfItem">
						<div class="cart-item cyc">
							<img src="images/m2.png" class="img-responsive" alt="">
						</div>
						<div class="cart-item-info">
							<h3><a href="#"> Lorem Ipsum is not simply </a><span>Pickup time:</span></h3>
							<ul class="qty">
								<li>
									<p>Min. order value:</p>
								</li>
								<li>
									<p>FREE delivery</p>
								</li>
							</ul>
							<div class="delivery">
								<p>Service Charges : $10.00</p>
								<span>Delivered in 1-1:30 hours</span>
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<script>
					$(document).ready(function(c) {
						$('.close3').on('click', function(c) {
							$('.cart-header3').fadeOut('slow', function(c) {
								$('.cart-header3').remove();
							});
						});
					});
				</script>
				<div class="cart-header3">
					<div class="close3"> </div>
					<div class="cart-sec simpleCart_shelfItem">
						<div class="cart-item cyc">
							<img src="images/m3.png" class="img-responsive" alt="">
						</div>
						<div class="cart-item-info">
							<h3><a href="#"> Lorem Ipsum is not simply </a><span>Pickup time:</span></h3>
							<ul class="qty">
								<li>
									<p>Min. order value:</p>
								</li>
								<li>
									<p>FREE delivery</p>
								</li>
							</ul>
							<div class="delivery">
								<p>Service Charges : $10.00</p>
								<span>Delivered in 1-1:30 hours</span>
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
		<!--//checkout-->
		<!--footer-->
		<%@include file="user_footer.jsp" %>
		<!--footer-->
		<div class="footer-bottom">
			<div class="container">
				<p>Copyright &copy; 2015.Company name All rights reserved.More Templates
					<a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from
					<a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
				</p>
			</div>
		</div>
	</body>

</html>