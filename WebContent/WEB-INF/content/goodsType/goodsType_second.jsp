<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../templete/header.jsp" %>
        <script type="text/javascript">
        
        function del(goodsTypeId){
        	if(confirm("是否执行删除？")){
        		window.location.href="${pageContext.request.contextPath}/goodsType/del_goodsType?goodsTypeId="+goodsTypeId;
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
        商品分类管理
        <small>二级分类管理</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
			
			<!-- 查询框 -->
			<div class="col-sm-3 pull-right" >
					    <div class="input-group">
					      <input type="text" class="form-control" placeholder="输入商品编号...">
					      <span class="input-group-btn">
					        <button class="btn btn-default" type="button">查询</button>
					      </span>
					    </div><!-- /input-group -->
					  </div><!-- /.col-sm-6 -->
			
			<div class="col-sm-1.5 pull-right " style="text-align: center;">
				<a href="${pageContext.request.contextPath}/goodsType/jump2add_goodsType"  class=" form-control btn btn-primary" >添加商品分类</a>
			</div>		  
					  <div style="height:48px"></div>
			<div class="box box-primary">
					
						<table class="table table-striped" style="text-align:center">
					 		<tr>
					 			<td>序&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号</td>
					 			<td>二级分类名称</td>
					 			<td>子分类数量</td>
					 			<td>上级分类</td>
					 			<td>操&nbsp;作&nbsp;选&nbsp;项</td>
					 			
					 		</tr>
					 	<c:forEach var="goodsType" items="${goodsTypeList}">					 		
					 		<tr>
					 			<td>${goodsType.goodsTypeId}</td>
					 			<td>${goodsType.goodsTypeName}</td>
					 			<td>${goodsType.childcount}</td>
					 			<td>${goodsType.goodsTypePid}</td>
					 			<td>
					 				<a class="btn btn-primary btn-xs" href="${pageContext.request.contextPath}/goodsType/edit_goodsType?goodsTypeId=${goodsType.goodsTypeId}">修改</a>
						        	<a class="btn btn-danger btn-xs" href="javascript:del(${goodsType.goodsTypeId});">删除</a>
					 			</td>
					 		
					 		</tr>
					 	
					 	</c:forEach>	
						</table><!-- /.table table-striped -->
					
        	</div><!-- /.box -->		  
			
			
			
		  
		  

  <!-- Content Header (Page header) -->
  <!--<section class="content-header">
   
  <!-- Main content -->
  
    


      <!--------------------------
        | Your Page Content Here |
        -------------------------->	
        			<!-- 分页  -->	
			
			<nav style="text-align:center">
			  <ul class="pagination">
			    <li>
			      <a href="#" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			      </a>
			    </li>
			    <li><a href="#">1</a></li>
			    <li><a href="#">2</a></li>
			    <li><a href="#">3</a></li>
			    <li><a href="#">4</a></li>
			    <li><a href="#">5</a></li>
			    <li>
			      <a href="#" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			      </a>
			    </li>
			  </ul>
			</nav>
			<!-- /.pager -->
			
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