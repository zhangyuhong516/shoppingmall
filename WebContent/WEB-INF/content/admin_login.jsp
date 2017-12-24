<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
	    <title>TastyCake后台登陆</title>
	    <script src="/shoppingmall/js/jquery-1.7.1.min.js" type="text/javascript"></script>
		<link type="text/css" rel="stylesheet" href="/shoppingmall/formValidator/style/validatorTidyMode.css" />
		<script src="/shoppingmall/formValidator/formValidator-4.0.1.js" type="text/javascript"></script>
		<script src="/shoppingmall/formValidator/formValidatorRegex.js" type="text/javascript"></script>
		<link rel="stylesheet" href="/shoppingmall/css/bootstrap.min.css" />
		<style type="text/css">
			body{ font-family: "微软雅黑";}
		</style>
    </head>
    <!-- <script type="text/javascript">
$(document).ready(function(){
	
	$.formValidator.initConfig({formID:"form1",autoTip:true,tidyMode:true,onError:function(msg){alert(msg)}});
	  
	 $("#adminName").formValidator({onShow:"请用户名",onFocus:"用户名至少3个字符,最多100个字符",onCorrect:"恭喜你,你输对了",defaultValue:"jyk"}).regexValidator({regExp:"^([\\w-.]+)",onError:"你输入的用户名不正确"})
	  ;
	 $("#adminPassword").formValidator({onShow:"请输入密码",onFocus:"密码不能为空",onCorrect:"密码合法"}).inputValidator({min:1,onError:"密码不能为空,请确认"});
	 $("#randimg").formValidator({onShow:"请输入验证码",onFocus:"请输入验证码",onCorrect:"验证码正确"});
});

</script> -->
      <%-- <a href="${pageContext.request.contextPath}/Jump2user_index"> 返回用户主页</a> --%>
      <div class="container">
			<div class="row">
				<div class="col-xs-12  col-sm-6 col-sm-offset-2 col-md-5 col-md-offset-3">
			<f:form action="${pageContext.request.contextPath}/administrator/administrator_login" commandName="admin">
			   <h3 class="h3">TastyCake后台登陆</h3>
	           <div class="form-group  has-feedback">
	           	   <label class="sr-only">用户名：</label>
	           	   <f:input path="adminName" id="adminName" name="adminName" class="form-control" placeholder="请输入用户名" />
	               <span class="glyphicon glyphicon-user form-control-feedback"></span>      
	           </div>
	             <div class="form-group has-feedback">
	           	    <label class="sr-only">密码：</label>
	           	    <f:input type="password" path="adminPassword" id="adminPassword" name="adminPassword" class="form-control" placeholder="请输入密码" />
	               <span class="glyphicon glyphicon-lock form-control-feedback"></span>
	             </div>
	            <!--  <div class="form-group">
	           	   <input type="text" class="col-xs-2 form-control" style="width: 120px;" name="randimg" id="randimg" placeholder="验证码" />
	               <img src="/shoppingmall/Kaptcha.jpg" class="col-xs-3" style="width: 120px;height: 34px; cursor:pointer;" onclick="this.src='/shoppingmall/Kaptcha.jpg?aa='+Math.random();" />
	               <p class="help-block" class="col-xs-3" style=" font-size:12px; line-height:34px;vertical-align:baseline;">看不清，请点击图片</p>
	             </div> -->
	        
	            <div class="form-group">
	           	    <button type="submit" id="subts" class=" form-control btn btn-primary">登陆</button>
	           </div>
	        </f:form>
					
				</div>
			</div>
			
			
		</div>
    
    <body>
</body>
</html>