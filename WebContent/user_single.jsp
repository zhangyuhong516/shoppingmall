<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>单个产品</title>
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
		<script src="js/imagezoom.js"></script>
		<!-- //js -->
		<!-- cart -->
		<script src="js/simpleCart.min.js">
		</script>
		<!-- cart -->
		<!-- FlexSlider -->
		<script defer src="js/jquery.flexslider.js"></script>
		<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
		<script>
			// Can also be used with $(document).ready()
			$(window).load(function() {
				$('.flexslider').flexslider({
					animation: "slide",
					controlNav: "thumbnails"
				});
			});
		</script>
		<!--//FlexSlider -->
	</head>

	<body>
		<!--header-->
		<%@include file="user_top.jsp" %>
		<!--//header-->
		<!--//single-page-->
		<div class="single">
			<div class="container">
				<div class="single-grids">
					<div class="col-md-4 single-grid">
						<div class="flexslider">
							<ul class="slides">
								<li data-thumb="images/s1.png">
									<div class="thumb-image"> <img src="images/s1.png" data-imagezoom="true" class="img-responsive"> </div>
								</li>
								<li data-thumb="images/s2.png">
									<div class="thumb-image"> <img src="images/s2.png" data-imagezoom="true" class="img-responsive"> </div>
								</li>
								<li data-thumb="images/s3.png">
									<div class="thumb-image"> <img src="images/s3.png" data-imagezoom="true" class="img-responsive"> </div>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-md-4 single-grid simpleCart_shelfItem">
						<h3>美味的新鲜出炉的1公斤的黑森林蛋糕！</h3>
						<p>切蛋糕是庆祝特殊时刻最美妙的方式之一。没有比切丰富和令人垂涎的巧克力蛋糕更好的方式来庆祝了！</p>
						<ul class="size">
							<h3>尺寸</h3>
							<li>
								<a href="#">1 KG</a>
							</li>
							<li>
								<a href="#">2 KG</a>
							</li>
							<li>
								<a href="#">3 KG</a>
							</li>
							<li>
								<a href="#">4 KG</a>
							</li>
						</ul>
						<ul class="size">
							<h3>层数</h3>
							<li>
								<a href="#">1 层</a>
							</li>
							<li>
								<a href="#">2 层</a>
							</li>
							<li>
								<a href="#">3 层</a>
							</li>
						</ul>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">¥995.00</h5>
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
						<p class="qty"> 份数 : </p><input min="1" type="number" id="quantity" name="quantity" value="1" class="form-control input-small">
						<div class="btn_form">
							<a href="#" class="add-cart item_add">加入购物车</a>
						</div>
						<div class="tag">
							<p>目录 :
								<a href="#"> 蛋糕</a>
							</p>
							<p>标签 :
								<a href="#"> 巧克力 </a>
							</p>
						</div>
					</div>
					<div class="col-md-4 single-grid1">
						<h2>Account</h2>
						<ul>
							<li>
								<a href="#">Offers</a>
							</li>
							<li>
								<a href="products.html">New products</a>
							</li>
							<li>
								<a href="account.html">Register</a>
							</li>
							<li>
								<a href="account.html">Forgot Your Password</a>
							</li>
							<li>
								<a href="account.html">My account</a>
							</li>
							<li>
								<a href="contact.html">Address</a>
							</li>
							<li>
								<a href="checkout.html.html">wishlist</a>
							</li>
							<li>
								<a href="checkout.html.html">Order history</a>
							</li>
							<li>
								<a href="#">Downloads</a>
							</li>
							<li>
								<a href="#">Reward points</a>
							</li>
						</ul>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<!-- collapse -->
		<div class="collpse tabs">
			<div class="container">
				<div class="panel-group collpse" id="accordion" role="tablist" aria-multiselectable="true">
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingOne">
							<h4 class="panel-title">
							<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
							  描述
							</a>
						</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
							<div class="panel-body">
黑森林蛋糕(Schwarzwaelder Kirschtorte)是德国著名甜点，制作原料主要有脆饼面团底托、鲜奶油、樱桃酒等。是受德国法律保护的甜点之一，在德文里全名"Schwarzwaelder" 即为黑森林。它融合了樱桃的酸、奶油的甜、樱桃酒的醇香。
完美的黑森林蛋糕经得起各种口味的挑剔。黑森林蛋糕被称作黑森林的特产之一，德文原意为“黑森林樱桃奶油蛋糕”。正宗的黑森林蛋糕，巧克力相对比较少，更为突出的是樱桃酒和奶油的味道。
								
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingTwo">
							<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
							   附加信息
							</a>
						</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
							<div class="panel-body">
黑森林蛋糕的雏形最早出现于南部黑森林地区，黑森林区是德国西南的一个山区，从巴登巴登（BadenBaden）往南一直到弗莱堡（Freiburg）这带，都属黑森林区。相传，每当樱桃丰收时，农妇们除了将过剩的樱桃制成果酱外，在做蛋糕时，也会大方地将樱桃一颗颗塞在蛋糕的夹层里，或是作为装饰细心地点缀在蛋糕的表面。
而在打制蛋糕的鲜奶油时，更会加入大量樱桃汁。制作蛋糕坯时，面糊中也加入樱桃汁和樱桃酒。这种以樱桃与鲜奶油为主的蛋糕从黑森林传到外地后，也就变成所谓的“黑森林蛋糕”了。
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingThree">
							<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
								评论 (5)
							</a>
						</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
							<div class="panel-body">
关于“黑森林蛋糕”名称的来源，有着多种不同的看法。一种看法认为黑色的巧克力碎末让人联想到黑色的森林。另一种看法认为黑森林蛋糕的重要配料樱桃酒（Kirschwasser）是黑森林的特产。
还有一种看法则认为现今通常所见的黑森林蛋糕最初并非来源于黑森林，很有可能是因为蛋糕的样子酷似黑森林地区的民族服饰而得名，黑色的巧克力碎末像黑色的外衣，白色的奶油像白色的衬衫，而奶油上的樱桃则让人联想到黑森林所特有的白底红珠的大绒球帽（德语：Bollenhut，又称“洋葱帽”）。
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingFour">
							<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
								帮助
							</a>
						</h4>
						</div>
						<div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
							<div class="panel-body">
在富含水果、蔬菜和全谷类食物的平衡膳食中，适量地食用巧克力，并保持有规律的运动是一种有利于心脏健康的生活方式。研究者相信，类黄酮物质，这种存在于植物性食物中有益于健康的化合物是促进心脏健康的原因。黄烷醇是类黄酮物质的一个亚类，它在苹果、葡萄、红葡萄酒、茶、某些可可粉和巧克力中的含量十分丰富。
由于黄烷醇在加工过程中易被破坏，因此，并不是所有巧克力都含有相同含量的黄烷醇。生产巧克力时必须小心地加工可可豆，才能保存其中的黄烷醇。正在进行的科学研究表明：黄烷醇可以通过多种途径促进心脏健康。
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--//collapse -->
		<!--related-products-->
		<div class="related-products">
			<div class="container">
				<h3>最新产品</h3>
				<div class="product-model-sec single-product-grids">
					<div class="product-grid single-product">
						<a href="single.html">
							<div class="more-product"><span> </span></div>
							<div class="product-img b-link-stripe b-animate-go  thickbox">
								<img src="images/m1.png" class="img-responsive" alt="">
								<div class="b-wrapper">
									<h4 class="b-animate b-from-left  b-delay03">							
						<button>查看详情</button>
						</h4>
								</div>
							</div>
						</a>
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust prt_name">
								<h4>Product #1</h4>
								<span class="item_price">¥2000</span>
								<div class="ofr">
									<p class="pric1"><del>¥2300</del></p>
									<p class="disc">[15% Off]</p>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
					<div class="product-grid single-product">
						<a href="single.html">
							<div class="more-product"><span> </span></div>
							<div class="product-img b-link-stripe b-animate-go  thickbox">
								<img src="images/m2.png" class="img-responsive" alt="">
								<div class="b-wrapper">
									<h4 class="b-animate b-from-left  b-delay03">							
						<button>查看详情</button>
						</h4>
								</div>
							</div>
						</a>
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust prt_name">
								<h4>Product #1</h4>
								<span class="item_price">¥2000</span>
								<div class="ofr">
									<p class="pric1"><del>¥2300</del></p>
									<p class="disc">[15% Off]</p>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
					<div class="product-grid single-product">
						<a href="single.html">
							<div class="more-product"><span> </span></div>
							<div class="product-img b-link-stripe b-animate-go  thickbox">
								<img src="images/m3.png" class="img-responsive" alt="">
								<div class="b-wrapper">
									<h4 class="b-animate b-from-left  b-delay03">							
						<button>查看详情</button>
						</h4>
								</div>
							</div>
						</a>
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust prt_name">
								<h4>Product #1</h4>
								<span class="item_price">¥2000</span>
								<div class="ofr">
									<p class="pric1"><del>¥2300</del></p>
									<p class="disc">[15% Off]</p>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
					<div class="product-grid single-product">
						<a href="single.html">
							<div class="more-product"><span> </span></div>
							<div class="product-img b-link-stripe b-animate-go  thickbox">
								<img src="images/m4.png" class="img-responsive" alt="">
								<div class="b-wrapper">
									<h4 class="b-animate b-from-left  b-delay03">							
						<button>查看详情</button>
						</h4>
								</div>
							</div>
						</a>
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust prt_name">
								<h4>Product #1</h4>
								<span class="item_price">¥2000</span>
								<div class="ofr">
									<p class="pric1"><del>¥2300</del></p>
									<p class="disc">[15% Off]</p>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<!--related-products-->
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

</html>