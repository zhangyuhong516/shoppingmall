<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../templete/header.jsp" %>
        <title>${empty goodsType.goodsTypeId ? "添加" : "修改" }商品信息</title>
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
        商品分类管理
        <small>${empty goodsType.goodsTypeId ? "添加" : "修改" }商品分类信息</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>
      </ol>
    </section>

    <!-- Main content -->
    
   <section class="content container-fluid">
   	
   	
   	<div class="box box-primary">
                       	<div class="panel-heading">
                       		<h3 class="panel-title"></h3>
                       	</div>
                       	<div class="panel-body">
						<div class="form-group">
  						<f:form action="${pageContext.request.contextPath}/goodsType/${empty goodsType.goodsTypeId ? 'add_goodsType' : 'update_goodsType' }"
  						        style="text-align:center" commandName="goodsType">
                       	<f:hidden path="goodsTypeId"/>
                       	<div class="form-group form-inline">
						    <label for="exampleInputName2">商品分类名称：</label>
						    	
						      <f:input path="goodsTypeName"  type="text" class="form-control input-sm" id="" placeholder=""/>
						      
						      <label for="exampleInputName2" >级别设置：</label>
						   	  <f:input path="goodsTypeLv"  type="text" class="form-control input-sm " id="" placeholder=""/>
						   
						   						   
						      <label for="exampleInputName2" >上级分类序号 </label>						   
							  <f:input path="goodsTypePid" type="text" class="form-control input-sm" id="" placeholder=""/>
								
						</div>

						
			
						<div class="form-group " style="text-align: center;">
						   <button type="submit" class="btn btn-primary" value="Save">${empty goodsType.goodsTypeId ? "添加" : "修改" }分类</button>
						</div>
                       	</f:form>
                       	</div><!--panel-body  -->
                       </div>

 					 </div>
   	

  <!-- Content Header (Page header) -->
  <!--<section class="content-header">
   
  <!-- Main content -->
  
    


    
			
    </section>
    <!-- /.content -->
  </div><!-- /.content-wrapper -->




  <!-- Main Footer -->
  <footer class="main-footer">
    <!-- To the right -->
    <div class="pull-right hidden-xs">
      Anything you want
    </div>
    <!-- Default to the left -->
    <strong>Copyright &copy; 2017 <a href="#">Company</a>.</strong> All rights reserved.
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