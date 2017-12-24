<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<title>注册账户</title>
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
		<!--account-->
		<div class="account">
			<div class="container">
				<div class="register">
					<form action="${pageContext.request.contextPath}/user/add" method="post">
						<div class="register-top-grid">
							<h3>个人信息</h3>
							<div class="input">
								<span>昵称(必填)</span>
								<input type="text" name="userNname">
							</div>
							<div class="input">
								<span>真实姓名</span>
								<input type="text" name="userRealname">
							</div>
							<div class="input">
								<span>密码(必填)</span>
								<input type="password" name="userPassword">
							</div>
							<div class="input">
								<span>个人简介</span>
								<input type="text" name="userDesc">
							</div>
							<div class="input">
								<span>收货地址</span>
								<input type="text" name="userAddress">
							</div>
							<div class="input">
								<span>邮政编码</span>
								<input type="text" name="userPostcode">
							</div>
							<div class="input">
								<span>电话号码</span>
								<input type="text" name="userTel">
							</div>
						</div>
					</form>
					<div class="clearfix"> </div>
					<div class="register-but">
						<form>
							<input type="submit" value="提交">
							<div class="clearfix"> </div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!--//account-->
		<!--footer-->
		<%@include file="../templete/user_footer.jsp" %>
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