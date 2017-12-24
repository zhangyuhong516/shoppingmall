<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="oracle" uri="http://oracle.com/functions" %>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> ${empty user.userId ? "增加" : "修改" }用户</title>
</head>
<body>
<f:form action="${pageContext.request.contextPath}/user/${empty user.userId ? 'saveAdd' : 'saveEdit'}" commandName="user">
    <f:hidden path="userId"/>
             用户名:<f:input path="userName"/><br/>
             用户真实姓名:<f:input path="userRealname"/><br/>
             用户密码:<f:input type="password" path="userPassword"/><br/>
                用户级别:<f:input path="userLevel"/><br/>
                 联系地址:<f:input path="userAddress"/><br/>
            邮编:<f:input path="userPostcode"/><br/>
            联系电话:<f:input path="userTel"/><br/>
            邮箱:<f:input path="userEmail"/><br/>
            个人简介:<f:input path="userDesc"/><br/>
            上传头像:<f:input path="userImg"/><br/>
     找回密码时的问题:<f:input path="userQuestion"/><br/>
     答案:<f:input path="userAnswer"/><br/>
       <input type="submit" value="Save"/>
</f:form>
</body>
</html>