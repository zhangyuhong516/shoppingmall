<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.shoppingmall.com/tags" prefix="shoppingmall" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<title>注册账户</title>
		<!-- Custom Theme files -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="" />
		
		<link rel="stylesheet" href="../kindeditor/themes/default/default.css" />
		<script charset="utf-8" src="../kindeditor/kindeditor-min.js"></script>
		<script charset="utf-8" src="../kindeditor/lang/zh_CN.js"></script>
	   <script type="text/javascript">
	   		KindEditor.ready(function(K) {
	   			//初始化编辑器
				window.editor = K.create('#discri',{
					uploadJson : '../kindeditor/jsp/upload_json.jsp',//哪个servlet来接收你的请求
					//fileManagerJson : '',
					allowFileManager : false
				}); 
				//pic1
				K('#pic1').click(function() {
					editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							imageUrl : K('#url1').val(),
							clickFn : function(url, title, width, height, border, align) {
								K('#inpic1').val(url);
								K('#pic1').attr("src",url);
								editor.hideDialog();
							}
						});
					});
				});
				
			

			});

	   </script>
        
		
		
		
		<script type="application/x-javascript">
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		</script>
		<!-- //Custom Theme files -->
		<link href="/shoppingmall/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
		<link href="/shoppingmall/css/style.css" type="text/css" rel="stylesheet" media="all">
		<!-- js -->
		<script src="/shoppingmall/js/jquery.min.js"></script>
		<script type="text/javascript" src="/shoppingmall/js/bootstrap-3.1.1.min.js"></script>
		<!-- //js -->
		<!-- cart -->
		<script src="/shoppingmall/js/simpleCart.min.js">
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
					<form action="${pageContext.request.contextPath}/user/saveAdd" method="post">
						<div class="register-top-grid">
							<h3>个人信息</h3>
							<center>
							
							<input type="hidden" name="inpic1"  id="inpic1" />
							<img class="img-circle" alt="点击，上传图片" id="pic1" src="../images/log1.jpg"width="100px" height="100px" style="cursor: pointer;"/>
							<a href="#" class="">修改头像</a>
							</center>
							<div class="input">
								<span>昵称(必填)</span>
								<input type="text" name="userName">
							</div>
							<div class="input">
								<span>真实姓名</span>
								<input type="text" name="userRealname">
							</div>
							<div class="input">
								<span>密码(必填)</span>
								<input type="password" name="userPassword">
							</div>
							
							
							<div>
								<span>个人简介</span>
								<textarea id="discri"  class="form-control" cols="2" rows="3"  name="userDesc"></textarea>
								<!-- <input type="text" name="userDesc"> -->
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
						<div class="clearfix"> </div>
						<div class="register-but">
						   <form>
							   <input type="submit" value="注册">
							   <div class="clearfix"> </div>
						   </form>
						</div>
					</form>
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