<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../templete/header.jsp" %>
        <title>${empty role.roleId ? "添加" : "修改" }角色</title>
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
  <%@include file="../templete/top.jsp" %>
  <%@include file="../templete/left.jsp" %>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1> 角色列表
        <small>> ${empty role.roleId ? "添加" : "修改" }角色</small>
      </h1>
    </section>

    <!-- Main content -->
    <section class="content">
    <div class="row box box-primary">
      <div class="col-md-6">

        <f:form class="form-horizontal" data-validator-option="{theme:'bootstrap', timely:2, stopOnError:true}" action="${pageContext.request.contextPath}/role/${empty role.roleId ? 'add_role' : 'update_role' }" commandName="role"><!-- 要用SpringForm的时候要加上commandName，这个commandName是从从request的作用域中取auth对象 -->
        <f:hidden path="roleId"/>
        <div class="box-body">
         <div class="form-group">
          <label for="roleName" class="col-sm-3 control-label">角色名称</label>
          <div class="col-sm-9">
            <f:input path="roleName" class="form-control" placeholder="请输入角色名称"/>
          </div>
         </div>
         
         <div class="form-group">
                <label for="roleCode" class="col-sm-3 control-label">角色编码</label>
                <div class="col-sm-9">
                <f:input path="roleCode" class="form-control" placeholder="请输入角色编码"/>
              	</div>
              </div>
        </div>
      
        <div class="form-group">
          <label  class="col-sm-3 control-label"></label>
            <div class="col-sm-9">
               <button type="submit" class="btn btn-success"><i class="fa fa-save"></i>  提 交</button>
               <a  class="btn btn-default" href="${pageContext.request.contextPath}/role/list_role"><i class="fa fa-close"></i>  取消</a>
            </div>
        </div>
     
        </f:form>

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