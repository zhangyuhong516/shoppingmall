<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../templete/header.jsp" %>
        <title>管理员授权</title>
        <script type="text/javascript">
        //这里的function的名字一定不能叫delete，因为delete是关键字。
        function del(adminId){
        	if(confirm("是否执行删除？")){
        		window.location.href="${pageContext.request.contextPath}/administrator/delete_administrator?adminId="+adminId;
        	}
        }
        </script>
         <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
         <script type="text/javascript">
      $(function(){
         
         $("#selectAll").click(function(){
          //$("[name=\"authIds\"]").prop("checked",this.checked);
          $("[name=\"authIds\"]").prop("checked",$(this).prop("checked"));
         });
      });
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
        角色授权
        <small>角色的授权</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">

<!-- <div class="content-wrapper">
  Content Header (Page header)
  <section class="content-header">
    <h1>
      <small>系统管理 > 部门管理</small>
    </h1>
  </section>
  Main content
  <section class="content">
     <div class="row">
      <div class="col-md-12">
        general form elements
        <div class="box box-primary">
          
        </div>/.box
      </div>/.col (left)
     </div>
  </section>/.content
</div>/.content-wrapper
      ------------------------
        | Your Page Content Here |
        ------------------------ -->
        角色名称：${role.roleName}(${role.roleId})

        <form action="${pageContext.request.contextPath}/role/save_role_auth" method="post">
        <input type="hidden" name="roleId" value="${role.roleId}">
        选择权限：
        <br/><input type="checkbox" id="selectAll">全选
        <br/>
        <c:forEach var="auth" items="${authList}">
        <input type="checkbox" name="authIds" value="${auth.authId}" ${not empty roleAuthMap[auth.authId] ? "checked='checked'":"" }>${auth.authName}
        </c:forEach>
        <br/>
        <input type="submit" value="授权">
        
        </form>

        
        

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