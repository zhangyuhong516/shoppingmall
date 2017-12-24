<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../templete/header.jsp" %>
        <title>${empty admin.adminId ? "添加" : "修改" }管理员</title>
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
  <%@include file="../templete/top.jsp" %>
  <%@include file="../templete/left.jsp" %>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1> 编辑管理员
        <small>${empty admin.adminId ? "添加" : "修改" }管理员</small>
      </h1>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
    
    <div class="row box box-primary">
      <div class="col-md-6">
      

        <f:form class="form-horizontal" data-validator-option="{theme:'bootstrap', timely:2, stopOnError:true}" action="${pageContext.request.contextPath}/administrator/${empty admin.adminId ? 'add_administrator' : 'update_administrator' }" commandName="admin"><!-- 要用SpringForm的时候要加上commandName-->
        <f:hidden path="adminId"/>
         <div class="box-body">
         <div class="form-group">
         
         
         <label for="adminName" class="col-sm-3 control-label">管理员姓名</label>
         <div class="col-sm-9">
        <f:input path="adminName" class="form-control" placeholder="请输入管理员姓名"/>
        </div>
        
        
        <label for="adminPassword" class="col-sm-3 control-label">管理员密码</label>
         <div class="col-sm-9">
        <f:input path="adminPassword" class="form-control" placeholder="请输入管理员密码"/>
        </div>
          </div>
          
          
          <div class="form-group">
         <label for="adminSex" class="col-sm-3 control-label">管理员性别</label>
         <div class="col-sm-9">
        <f:input path="adminSex" class="form-control" placeholder="请输入'F'或者是'M'"/>
        </div>
        
        <label for="adminCardid" class="col-sm-3 control-label">管理员身份证号</label>
         <div class="col-sm-9">
        <f:input path="adminCardid" class="form-control" placeholder="请输入管理员身份证号"/>
        </div>
        
        <label for="adminTel" class="col-sm-3 control-label">管理员电话</label>
         <div class="col-sm-9">
        <f:input path="adminTel" class="form-control" placeholder="请输入管理员电话"/>
        </div>
        
        <label for="adminCreatetime" class="col-sm-3 control-label">管理员创建时间</label>
         <div class="col-sm-9">
        <f:input path="adminCreatetime" class="form-control" placeholder="yyyy-mm-dd"/>
        </div>
        
        <label for="adminState" class="col-sm-3 control-label">管理员状态</label>
         <div class="col-sm-9">
        <f:input path="adminState" class="form-control" placeholder="是否离职，填写'1'或者'0'"/>
        </div>
        
        </div>
        
        
         </div>
<%--           管理员性别：<f:input path="adminSex"/> <br>
          管理员密码：<f:input path="adminPassword"/> <br>
          管理员身份证号：<f:input path="adminCardid"/> <br>
          管理员电话：<f:input path="adminTel"/> <br>
          管理员创建时间：<f:input path="adminCreatetime"/>(yyyy-mm-dd) <br>
          管理员状态（是否离职）：<f:input path="adminState"/> <br> --%>
          <div class="form-group">
          <label  class="col-sm-3 control-label"></label>
            <div class="col-sm-9">
        <input class="btn btn-success" type="submit" value="Save">
        <a  class="btn btn-default" href="${pageContext.request.contextPath}/administrator/list_administrator"><i class="fa fa-close"></i>  取消</a>
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