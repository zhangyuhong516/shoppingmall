<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../templete/header.jsp" %>
        <title>Tasty公司员工列表</title>
        <script type="text/javascript">
        //这里的function的名字一定不能叫delete，因为delete是关键字。
        function del(adminId){
        	if(confirm("是否执行删除？")){
        		window.location.href="${pageContext.request.contextPath}/administrator/delete_administrator?adminId="+adminId;
        	}
        }
        </script>
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
  <%@include file="../templete/top.jsp" %>
  <%@include file="../templete/left.jsp" %>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Tasty公司员工列表
        <small>>员工的列表</small>
        <a class="btn btn-success btn-sm" href="${pageContext.request.contextPath}/administrator/jump2edit_administrator">添加员工</a>
        
      </h1>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">

       <div class="row">
	   <div class="col-xs-12">
	        <div class="box">
        <div class="box-body table-responsive no-padding">

        <table class="table table-hover">
        <tr><th>ID</th><th>管理员姓名</th><th>性别</th><th>身份证号</th><th>电话</th><th>管理员创建时间</th><th>是否离职</th><th>操作</th></tr>
        
        <c:forEach var="admin" items="${adminList}">
        <tr><td>${admin.adminId}</td><td>${admin.adminName}</td><td>${admin.adminSex}</td><td>${admin.adminCardid}</td>
            <td>${admin.adminTel}</td><td><fmt:formatDate pattern="yyyy-MM-dd" value="${admin.adminCreatetime}"></fmt:formatDate></td><td>${admin.adminState}</td>
        <td>
        <a class="btn btn-primary btn-xs" href="${pageContext.request.contextPath}/administrator/administrator_auth?adminId=${admin.adminId}">授权</a>
        <a class="btn btn-warning btn-xs" href="${pageContext.request.contextPath}/administrator/edit_administrator?adminId=${admin.adminId}">修改</a>
        <a class="btn btn-danger btn-xs" href="javascript:del(${admin.adminId});">删除</a> 
        </td>
        </tr>
        </c:forEach>
        
        </table>
        
        </div>
        </div>
        </div>
        </div>
        

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Main Footer -->
  <footer class="main-footer">
    <!-- To the right -->
    <div class="pull-right hidden-xs">
      Anything you want
    </div>
    <!-- Default to the left -->
    <strong>Copyright &copy; 2016 <a href="#">Company</a>.</strong> All rights reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li class="active"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
      <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane active" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:;">
              <i class="menu-icon fa fa-birthday-cake bg-red"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                <p>Will be 23 on April 24th</p>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">Tasks Progress</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:;">
              <h4 class="control-sidebar-subheading">
                Custom Template Design
                <span class="pull-right-container">
                    <span class="label label-danger pull-right">70%</span>
                  </span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

      </div>
      <!-- /.tab-pane -->
      <!-- Stats tab content -->
      <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
      <!-- /.tab-pane -->
      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">General Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Report panel usage
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Some information about this general settings option
            </p>
          </div>
          <!-- /.form-group -->
        </form>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
  immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>


</body>
</html>