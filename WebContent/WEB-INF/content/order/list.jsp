<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="oracle" uri="http://oracle.com/functions" %>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../templete/header.jsp" %>
        <title>订单列表</title>
        <script type="text/javascript">
        //这里的function的名字一定不能叫delete，因为delete是关键字。
        function del(orderId){
        	if(confirm("是否执行删除？")){
        		window.location.href="${pageContext.request.contextPath}/order/del?orderId="+orderId;
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
      <h1>订单管理
        <small>> 订单列表</small>
	 </h1>
    </section>

    <!-- Main content -->
    <%-- <section class="content container-fluid">
        <center>
        <a href="${pageContext.request.contextPath}/order/edit_order">添加订单</a>
        <table border="1">
        <tr><th>订单ID</th><th>编号</th><th>时间</th><th>数量</th><th>单价</th><th>收货人</th><th>收货人地址</th><th>收货人电话</th><th>状态</th><th><a href="order_detail.jsp">详情</a></th></tr>
        
        <c:forEach var="order" items="${orderList}">
        <tr><td>${order.orderId}</td><td>${order.orderNumber}</td><td>${order.orderTime}</td><td>${order.orderCount}</td><td>${order.consignee}</td><td>${order.consigneeAddr}</td><td>${order.consigneePhone}</td><td>${order.orderMode}</td>
        <td>
        <a href="${pageContext.request.contextPath}/order/edit_order?orderId=${order.orderId}">修改</a>
        <a href="javascript:del(${order.orderId});">删除</a>
        </td>
        </tr>
        </c:forEach>
        
        </table>
        </center>
    </section> --%>
    <section class="content">
	<div class="row">
	   <div class="col-xs-12">
	        <div class="box">
	        
	        <form action="#" method="post" class="form-inline">
	          <div class="box-header">
	            <div class="input-group">
	                <f:form commandName="order" action="${pageContext.request.contextPath}/order/list" >
				          订单编号  <f:input path="orderNumber"/>
				          订单状态<f:select path="orderMode">
				          <f:option value="">请选择</f:option>
				          <f:option value="0">待发货</f:option>
				          <f:option value="1">已发货</f:option>
				          <f:option value="2">配送中</f:option>
				          <f:option value="3">已收货</f:option>
				          <f:option value="4">退货中</f:option>
				          <f:option value="5">退货完成</f:option>
				         </f:select>
				   <input type="submit" value="Search">      
                  </f:form>
	            </div>
	            
	          </div><!-- /.box-header -->
           </form>
	        
        <div class="box-body table-responsive no-padding">
            <table class="table table-hover">
              <tr>
                <th>序号</th>
                <th>订单编号</th>
                <th>下单时间</th>
                <th>数量</th>
                <th>总价</th>
                <th>订单状态</th>
                <th width="180px">操作</th>
              </tr>
              <c:forEach var="order" items="${orderList}" varStatus="vs">
		        <tr><td>${vs.count}</td><td>${order.orderNumber}</td><td><fmt:formatDate pattern="yyyy-MM-dd" value="${order.orderTime}"></fmt:formatDate></td><td>${order.orderCount}</td><td>${order.orderTotalprice}</td><td>${order.orderMode}</td>
		        <td>
		        <a class="btn btn-success btn-xs" href="${pageContext.request.contextPath}/order/detail?orderId=${order.orderId}">详情</a>
		        <a class="btn btn-primary btn-xs" href="${pageContext.request.contextPath}/order/edit?orderId=${order.orderId}">编辑</a>
		        <a class="btn btn-danger btn-xs" href="javascript:del(${order.orderId});">删除</a>
		        </td>
		        </tr>
		      </c:forEach>
            </table>
          </div><!-- /.box-body -->
         <%@include file="/WEB-INF/content/res/pager.jsp" %>
        </div><!-- /.box -->
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