<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<title>产品</title>
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
		<link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
		<!-- js -->
		<script src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
		<!-- //js -->
		<!-- cart -->
		<script src="js/simpleCart.min.js">
		</script>
		<!-- cart -->
		<!-- the jScrollPane script -->
		<script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
		<script type="text/javascript" id="sourcecode">
			$(function() {
				$('.scroll-pane').jScrollPane();
			});
		</script>
		<!-- //the jScrollPane script -->
		<script type="text/javascript" src="js/jquery.mousewheel.js"></script>
		<!-- the mousewheel plugin -->
	</head>

	<body>
		<!--header-->
		<%@include file="../templete/user_top.jsp" %>
		<!--//header-->
		<!--products-->
		<div class="products">
			<div class="container">
				<h2>我们的产品</h2>
				<div class="col-md-9 product-model-sec">
					<div class="product-grid">
						<a href="${pageContext.request.contextPath}/jump2user_single">
							<div class="more-product"><span> </span></div>
							<div class="product-img b-link-stripe b-animate-go  thickbox">
								<img  class="img-responsive" alt="" src="${allGoods[10].goodsPic}"/>
								<div class="b-wrapper">
									<h4 class="b-animate b-from-left  b-delay03">							
									<button>查看</button>
								</h4>
								</div>
							</div>
						</a>
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust prt_name">
								<h4>${allGoods[10].goodsName}</h4>
								<span class="item_price">¥${allGoods[10].vipPrice}</span>
								<div class="ofr">
									<p class="pric1"><del>¥${allGoods[10].normalPrice}</del></p>
									<p class="disc">[15% Off]</p>
								</div>
								<input type="text" class="item_quantity" value="1" />
<%-- 								<input type="button" class="item_add items" value="Add" onclick="window.location.href('${pageContext.request.contextPath}/shopcar/add_good2shopcar?goodsId=${allGoods[0].goodsId}')">
 --%>								<input type="button" class="item_add items" value="Add" onclick="window.location.href('${pageContext.request.contextPath}/shopcar/add_good2shopcar?goodsId=${allGoods[0].goodsId}')">
								<a href="${pageContext.request.contextPath}/shopcar/add_good2shopcar?goodsId=${allGoods[10].goodsId}">加入购物车</a>
								
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
					<div class="product-grid">
						<a href="${pageContext.request.contextPath}/jump2user_single">
							<div class="more-product"><span> </span></div>
							<div class="product-img b-link-stripe b-animate-go  thickbox">
								<img src="${allGoods[11].goodsPic}" class="img-responsive" alt="" />
								<div class="b-wrapper">
									<h4 class="b-animate b-from-left  b-delay03">							
							<button>查看</button>
							</h4>
								</div>
							</div>
						</a>
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust prt_name">
								<h4>${allGoods[11].goodsName}</h4>
								<span class="item_price">¥${allGoods[11].vipPrice}</span>
								<div class="ofr">
									<p class="pric1"><del>¥${allGoods[11].normalPrice}</del></p>
									<p class="disc">[15% Off]</p>
								</div>
								<input type="text" class="item_quantity" value="1" />
								<input type="button" class="item_add items" value="Add" onclick="window.location.href('${pageContext.request.contextPath}/shopcar/add_good2shopcar?goodsId=${allGoods[0].goodsId}')">
								<a href="${pageContext.request.contextPath}/shopcar/add_good2shopcar?goodsId=${allGoods[11].goodsId}">加入购物车</a>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
					<div class="product-grid">
						<a href="single.html">
							<div class="more-product"><span> </span></div>
							<div class="product-img b-link-stripe b-animate-go  thickbox">
								<img src="${allGoods[12].goodsPic}" class="img-responsive" alt="" />
								<div class="b-wrapper">
									<h4 class="b-animate b-from-left  b-delay03">							
							<button>查看</button>
							</h4>
								</div>
							</div>
						</a>
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust prt_name">
								<h4>${allGoods[12].goodsName}</h4>
								<span class="item_price">¥${allGoods[12].vipPrice}</span>
								<div class="ofr">
									<p class="pric1"><del>¥${allGoods[12].normalPrice}</del></p>
									<p class="disc">[15% Off]</p>
								</div>
								<input type="text" class="item_quantity" value="1" />
								<a href="${pageContext.request.contextPath}/shopcar/add_good2shopcar?goodsId=${allGoods[12].goodsId}">加入购物车</a>
								<input type="button" class="item_add items" value="Add">
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
					<div class="product-grid">
						<a href="single.html">
							<div class="more-product"><span> </span></div>
							<div class="product-img b-link-stripe b-animate-go  thickbox">
								<img src="${allGoods[13].goodsPic}" class="img-responsive" alt="" />
								<div class="b-wrapper">
									<h4 class="b-animate b-from-left  b-delay03">							
							<button>查看</button>
							</h4>
								</div>
							</div>
						</a>
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust prt_name">
								<h4>${allGoods[13].goodsName}</h4>
								<span class="item_price">¥${allGoods[13].vipPrice}</span>
								<div class="ofr">
									<p class="pric1"><del>¥${allGoods[13].normalPrice}</del></p>
									<p class="disc">[15% Off]</p>
								</div>
								<input type="text" class="item_quantity" value="1" />
								<a href="${pageContext.request.contextPath}/shopcar/add_good2shopcar?goodsId=${allGoods[13].goodsId}">加入购物车</a>
								<input type="button" class="item_add items" value="Add">
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
					<div class="product-grid">
						<a href="single.html">
							<div class="more-product"><span> </span></div>
							<div class="product-img b-link-stripe b-animate-go  thickbox">
								<img src="${allGoods[14].goodsPic}" class="img-responsive" alt="" />
								<div class="b-wrapper">
									<h4 class="b-animate b-from-left  b-delay03">							
							<button>查看</button>
							</h4>
								</div>
							</div>
						</a>
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust prt_name">
								<h4>${allGoods[14].goodsName}</h4>
								<span class="item_price">¥${allGoods[14].vipPrice}</span>
								<div class="ofr">
									<p class="pric1"><del>¥${allGoods[14].normalPrice}</del></p>
									<p class="disc">[15% Off]</p>
								</div>
								<input type="text" class="item_quantity" value="1" />
								<a href="${pageContext.request.contextPath}/shopcar/add_good2shopcar?goodsId=${allGoods[14].goodsId}">加入购物车</a>
								<input type="button" class="item_add items" value="Add">
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
					<div class="product-grid">
						<a href="single.html">
							<div class="more-product"><span> </span></div>
							<div class="product-img b-link-stripe b-animate-go  thickbox">
								<img src="${allGoods[15].goodsPic}" class="img-responsive" alt="" />
								<div class="b-wrapper">
									<h4 class="b-animate b-from-left  b-delay03">							
							<button>查看</button>
							</h4>
								</div>
							</div>
						</a>
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust prt_name">
								<h4>${allGoods[15].goodsName}</h4>
								<span class="item_price">¥${allGoods[15].vipPrice}</span>
								<div class="ofr">
									<p class="pric1"><del>¥${allGoods[15].normalPrice}</del></p>
									<p class="disc">[15% Off]</p>
								</div>
								<input type="text" class="item_quantity" value="1" />
								<a href="${pageContext.request.contextPath}/shopcar/add_good2shopcar?goodsId=${allGoods[15].goodsId}">加入购物车</a>
								<input type="button" class="item_add items" value="Add">
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
					<div class="product-grid">
						<a href="single.html">
							<div class="more-product"><span> </span></div>
							<div class="product-img b-link-stripe b-animate-go  thickbox">
								<img src="${allGoods[16].goodsPic}" class="img-responsive" alt="" />
								<div class="b-wrapper">
									<h4 class="b-animate b-from-left  b-delay03">							
							<button>查看</button>
							</h4>
								</div>
							</div>
						</a>
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust prt_name">
								<h4>${allGoods[16].goodsName}</h4>
								<span class="item_price">¥${allGoods[16].vipPrice}</span>
								<div class="ofr">
									<p class="pric1"><del>¥${allGoods[16].normalPrice}</del></p>
									<p class="disc">[15% Off]</p>
								</div>
								<input type="text" class="item_quantity" value="1" />
								<a href="${pageContext.request.contextPath}/shopcar/add_good2shopcar?goodsId=${allGoods[16].goodsId}">加入购物车</a>
								<input type="button" class="item_add items" value="Add">
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
					<div class="product-grid">
						<a href="single.html">
							<div class="more-product"><span> </span></div>
							<div class="product-img b-link-stripe b-animate-go  thickbox">
								<img src="${allGoods[17].goodsPic}" class="img-responsive" alt="" />
								<div class="b-wrapper">
									<h4 class="b-animate b-from-left  b-delay03">							
							<button>查看</button>
							</h4>
								</div>
							</div>
						</a>
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust prt_name">
								<h4>${allGoods[17].goodsName}</h4>
								<span class="item_price">¥${allGoods[17].vipPrice}</span>
								<div class="ofr">
									<p class="pric1"><del>¥${allGoods[17].normalPrice}</del></p>
									<p class="disc">[15% Off]</p>
								</div>
								<input type="text" class="item_quantity" value="1" />
								<a href="${pageContext.request.contextPath}/shopcar/add_good2shopcar?goodsId=${allGoods[17].goodsId}">加入购物车</a>
								<input type="button" class="item_add items" value="Add">
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
					<div class="product-grid">
						<a href="single.html">
							<div class="more-product"><span> </span></div>
							<div class="product-img b-link-stripe b-animate-go  thickbox">
								<img src="${allGoods[18].goodsPic}" class="img-responsive" alt="" />
								<div class="b-wrapper">
									<h4 class="b-animate b-from-left  b-delay03">							
							<button>查看</button>
							</h4>
								</div>
							</div>
						</a>
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust prt_name">
								<h4>${allGoods[18].goodsName}</h4>
								<span class="item_price">¥${allGoods[18].vipPrice}</span>
								<div class="ofr">
									<p class="pric1"><del>¥${allGoods[18].normalPrice}</del></p>
									<p class="disc">[15% Off]</p>
								</div>
								<input type="text" class="item_quantity" value="1" />
								<input type="button" class="item_add items" value="Add">
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 rsidebar span_1_of_left">
					<section class="sky-form">
						<div class="product_right">
							<h4 class="m_2"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Categories</h4>
							<div class="tab1">
								<ul class="place">
									<li class="sort">Regular Cakes</li>
									<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
								</ul>
								<div class="clearfix"> </div>
								<div class="single-bottom">
									<a href="#">
										<p>Cassata</p>
									</a>
									<a href="#">
										<p>Cheesecake</p>
									</a>
									<a href="#">
										<p>Coconut cake</p>
									</a>
									<a href="#">
										<p>Cupcake</p>
									</a>
								</div>
							</div>
							<div class="tab2">
								<ul class="place">
									<li class="sort">Special Cakes</li>
									<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
								</ul>
								<div class="clearfix"> </div>
								<div class="single-bottom">
									<a href="#">
										<p>Delicious Cakes</p>
									</a>
									<a href="#">
										<p>Gingerbread</p>
									</a>
								</div>
							</div>
							<div class="tab3">
								<ul class="place">
									<li class="sort">Eggless Cake</li>
									<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
								</ul>
								<div class="clearfix"> </div>
								<div class="single-bottom">
									<a href="#">
										<p>Milk Cakes</p>
									</a>
									<a href="#">
										<p>Fruits Cakes</p>
									</a>
								</div>
							</div>
							<div class="tab4">
								<ul class="place">
									<li class="sort">2-3 Tier Cakes</li>
									<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
								</ul>
								<div class="clearfix"> </div>
								<div class="single-bottom">
									<a href="#">
										<p>Twist 4 tier</p>
									</a>
									<a href="#">
										<p>Floral Tier</p>
									</a>
									<a href="#">
										<p>Double Heartshape</p>
									</a>
								</div>
							</div>
							<!--script-->
							<script>
								$(document).ready(function() {
									$(".tab1 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();

									$(".tab1 ul").click(function() {
										$(".tab1 .single-bottom").slideToggle(300);
										$(".tab2 .single-bottom").hide();
										$(".tab3 .single-bottom").hide();
										$(".tab4 .single-bottom").hide();
										$(".tab5 .single-bottom").hide();
									})
									$(".tab2 ul").click(function() {
										$(".tab2 .single-bottom").slideToggle(300);
										$(".tab1 .single-bottom").hide();
										$(".tab3 .single-bottom").hide();
										$(".tab4 .single-bottom").hide();
										$(".tab5 .single-bottom").hide();
									})
									$(".tab3 ul").click(function() {
										$(".tab3 .single-bottom").slideToggle(300);
										$(".tab4 .single-bottom").hide();
										$(".tab5 .single-bottom").hide();
										$(".tab2 .single-bottom").hide();
										$(".tab1 .single-bottom").hide();
									})
									$(".tab4 ul").click(function() {
										$(".tab4 .single-bottom").slideToggle(300);
										$(".tab5 .single-bottom").hide();
										$(".tab3 .single-bottom").hide();
										$(".tab2 .single-bottom").hide();
										$(".tab1 .single-bottom").hide();
									})
									$(".tab5 ul").click(function() {
										$(".tab5 .single-bottom").slideToggle(300);
										$(".tab4 .single-bottom").hide();
										$(".tab3 .single-bottom").hide();
										$(".tab2 .single-bottom").hide();
										$(".tab1 .single-bottom").hide();
									})
								});
							</script>
							<!--//script -->
						</div>
					</section>
					<section class="sky-form">
						<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>DISCOUNTS</h4>
						<div class="row row1 scroll-pane">
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Upto - 10% (20)</label>
							</div>
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>70% - 60% (5)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>50% - 40% (7)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>30% - 20% (2)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>10% - 5% (5)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>30% - 20% (7)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>10% - 5% (2)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Other(50)</label>
							</div>
						</div>
					</section>
					<section class="sky-form">
						<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Price</h4>
						<ul class="dropdown-menu1">
							<li>
								<a href="">
									<div id="slider-range"></div>
									<input type="text" id="amount" style="border: 0; font-weight: NORMAL;   font-family: 'Dosis-Regular';" />
								</a>
							</li>
						</ul>
					</section>
					<!---->
					<script type="text/javascript" src="js/jquery-ui.min.js"></script>
					<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
					<script type='text/javascript'>
						//<![CDATA[ 
						$(window).load(function() {
							$("#slider-range").slider({
								range: true,
								min: 0,
								max: 100000,
								values: [500, 100000],
								slide: function(event, ui) {
									$("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
								}
							});
							$("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));

						}); //]]>
					</script>
					<!---->
					<section class="sky-form">
						<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>By Flavour</h4>
						<div class="row row1 scroll-pane">
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Vanilla</label>
							</div>
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Chocolate</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Butterscotch</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Strawberry</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Black Forest</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Mixed Fruit</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Honey</label>
							</div>
						</div>
					</section>
					<section class="sky-form">
						<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Weight</h4>
						<div class="row row1 scroll-pane">
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Half KG</label>
							</div>
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>One KG</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>TwO KG</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>More</label>
							</div>
						</div>
					</section>
					<section class="sky-form">
						<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Color</h4>
						<div class="row row1 scroll-pane">
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>White</label>
							</div>
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Pink</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Gold</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Silver</label>
							</div>
						</div>
					</section>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<!--//products-->
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