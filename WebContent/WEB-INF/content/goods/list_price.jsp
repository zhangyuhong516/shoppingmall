<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../templete/header.jsp" %>
        <script type="text/javascript">
        //这里的function的名字一定不能叫delete，因为delete是关键字。
        function del(goodsId){
        	if(confirm("是否执行删除？")){
        		window.location.href="${pageContext.request.contextPath}/goods/delete_price?goodsId="+goodsId;
        	}
        }
        </script>
        <script type="text/javascript">
		  
		  function edit(id){
			  var tds = $("#tr" + id).children(":gt(2)").filter(":not(:last)");
			  tds.find("span").hide();
			  tds.find("input").show();
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
        商品管理
        <small>商品信息</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>
      </ol>
    </section>

    <!-- Main content -->
    
   <section class="content container-fluid">
   	
   	
   	<form class="form-group form-inline">
  	<select class="form-control">
        <option selected value="">商品分类</option>
        <option value="1">巧克力</option>
        <option value="2">芝士</option>
        <option value="3">提拉米苏</option>
        <option value="3">鲜花</option>
     </select>
 
    <label>商品名称：</label>
    <input type="text" class="form-control">
    
   
    
    
  </form>
   	
   	
   	<div class="panel panel-info">
  <!-- Default panel contents -->
  <div class="panel-heading"></div>
  <div class="panel-body">
  <table class="table table-striped table-hover table-responsive" >
								<tr >
									
									<td class=" text-center " >默认款式</td>
									
									
									<td class=" text-center " >商品名称</td>
									<td class=" text-center " >商品库存</td>
									<td class=" text-center ">会员价</td>
									<td class=" text-center ">非会员价</td>
									<td class=" text-center ">成本价</td>
									<td class=" text-center ">操作选项</td>
									
								</tr>
							
					 		<c:forEach var="goods" items="${goodsList}" >
					 		<f:form action="${pageContext.request.contextPath}/goods/${empty goods.goodsId ? 'add_price' : 'update_price' }" commandName="goods">
						       <tr class="text-center" id="tr${goods.goodsId}">
						       <td><input type="radio"><input type="hidden" name="goodsId" value="${goods.goodsId}"/></td>
						       <td>${goods.goodsName}</td>
						       <td>${goods.goodsReserveCount}</td>
						       <td><span>${goods.vipPrice}</span><input type="text" name="vipPrice" value="${goods.vipPrice}" style="display: none;"/></td>
						       <td><span>${goods.normalPrice}</span><input type="text" name="normalPrice" value="${goods.normalPrice}" style="display: none;"/></td>
						       <td><span>${goods.goodsOriginalPrice}</span><input type="text"  name="goodsOriginalPrice" value="${goods.goodsOriginalPrice}" style="display: none;"/></td>
						      <td>
						      <a class="btn btn-primary btn-xs" href="javascript:edit(${goods.goodsId});">修改</a>
						     <button type="submit" class="btn btn-info btn-xs" value="Save">保存</button>  
						    <a class="btn btn-danger btn-xs" href="javascript:del(${goods.goodsId});">删除</a>
						       </td>
						       </tr>
						       </f:form>
						   </c:forEach>
					 		
					 		
					 		
						</table><!-- /.table table-striped -->
		    <%@include file="/WEB-INF/content/res/pager.jsp" %>		
        	</div><!-- /.box -->		  
			
		</div>	
		
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