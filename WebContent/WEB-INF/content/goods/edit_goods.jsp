<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
       <%@include file="../templete/header.jsp" %>
        <title>${empty goods.goodsId ? "添加" : "修改" }商品信息</title>
        
           <link rel="stylesheet" href="../kindeditor/themes/default/default.css" />
		<script charset="utf-8" src="../kindeditor/kindeditor-min.js"></script>
		<script charset="utf-8" src="../kindeditor/lang/zh_CN.js"></script>
	   <script type="text/javascript">
	   		KindEditor.ready(function(K) {
	   			//初始化编辑器
				window.editor = K.create('#discri',{
					uploadJson : '../kindeditor/jsp/upload_json.jsp',//哪个servlet来接收你的请求
					//fileManagerJson : '',
					allowFileManager : false
				}); 
				//pic1
				K('#pic1').click(function() {
					editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							imageUrl : K('#url1').val(),
							clickFn : function(url, title, width, height, border, align) {
								K('#inpic1').val(url);
								K('#pic1').attr("src",url);
								editor.hideDialog();
							}
						});
					});
				});
				//pic2
				K('#pic2').click(function() {
					editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							imageUrl : K('#url2').val(),
							clickFn : function(url, title, width, height, border, align) {
								K('#inpic2').val(url);
								K('#pic2').attr("src",url);
								editor.hideDialog();
							}
						});
					});
				});
		
			

			});

	   </script>
        
        
     <!--    <script type="text/javascript" charset="utf-8" src="/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="/ueditor/ueditor.all.min.js"> </script>
    建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败
    这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文
    <script type="text/javascript" charset="utf-8" src="/ueditor/lang/zh-cn/zh-cn.js"></script>
    <script type="text/javascript">
    var ue = UE.getEditor('editor');
    $(function(){
    	$("#goodsForm").submit(function(){
    		$("[name='goodsInfo']").val(UE.getEditor('editor').getContent());
    	});
    });
    </script> -->
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
        <small>${empty goods.goodsId ? "添加" : "修改" }商品信息</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>
      </ol>
    </section>

    <!-- Main content -->
    
   <section class="content container-fluid">
   	
   	
   	<div class="panel panel-info">
                       	<div class="panel-heading">
                       		<h3 class="panel-title"></h3>
                       	</div>
                       	<div class="panel-body">
						<div class="form-group">
  						<f:form id="goodsForm" method="get" action="${pageContext.request.contextPath}/goods/${empty goods.goodsId ? 'add_goods' : 'update_goods' }"  commandName="goods">
                       	<f:hidden path="goodsId"/>
                       	<div class="form-group form-inline">
						    <label for="exampleInputName2">商品名称：</label>
						   
						      <f:input path="goodsName" type="text" class="form-control" id="" placeholder=""/>
						      <label for="exampleInputName2" >分类：</label>
						   
						      <select name="model" class="form-control">
						      	<option>1</option>
						      	<option>2</option>
						      	<option>3</option>
						      </select>
						      <label for="exampleInputName2" >父ID：</label>
						   
						      <select name="model" class="form-control">
						      	<option>1</option>
						      	<option>2</option>
						      	<option>3</option>
						      </select>
						</div>
						<div class="form-group form-inline">
						    <label for="exampleInputName2" >商品编号：</label>
						   
						      <f:input path="goodsNumber" type="text" class="form-control" id="" placeholder=""/>
						      <label for="exampleInputName2" >排序：</label>
						   
						      <select name="model" class="">
						      	<option>1</option>
						      	<option>2</option>
						      	<option>3</option>
						      </select>
				 <input type="hidden" name="inpic1"  id="inpic1" />
	   			<input type="hidden" name="inpic2" id="inpic2" />
	   			
	   			<img alt="点击，上传图片" id="pic1" src="../images/upload-pic.png"width="80px" height="55px" style="cursor: pointer;"/>
	   			<img alt="点击，上传图片" id="pic2" src="../images/upload-pic.png" width="80px" height="55px" style="cursor: pointer;"/>
	   			
						</div>
						
						<div class="form-group ">
						    <label for="exampleInputName2" >商品描述：</label>
						    <f:textarea id="discri"  class="form-control" cols="3" rows="10" path="goodsInfo"/>
    						
						   
						    
						</div>
						<%-- <div class="form-group ">
						    <label for="exampleInputName2" >商品描述：</label>
						  <f:textarea  path="goodsInfo" style="width:1024px;height:200px;" rows="3"></f:textarea>
						    
						</div> --%>
						<div class="form-group form-inline">
						    
						      <label for="exampleInputName2" >商品规格：</label>
						   <f:input path="goodsSize" type="text" class="form-control" id="" placeholder=""/>
						      
						      <label for="exampleInputName2" >商品层数：</label>
						   <f:input path="goodsCul" type="text" class="form-control" id="" placeholder=""/>
						      
						      <label for="exampleInputName2" >商品库存：</label>
						    <f:input path="goodsReserveCount" type="text" class="form-control" id="" placeholder=""/>
						      
						      
						</div>
			
						<div class="form-group " style="text-align: center;">
						   <button type="submit" class="btn btn-primary" value="Save">${empty goods.goodsId ? "添加" : "修改" }商品</button>
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