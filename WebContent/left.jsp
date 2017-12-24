<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Alexander Pierce</p>
          <!-- Status -->
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>

      <!-- search form (Optional) -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
              <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
              </button>
            </span>
        </div>
      </form>
      <!-- /.search form -->

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">主菜单</li>
        <!-- Optionally, you can add icons to the links -->
        <li><a href="#"><i class="fa fa-link"></i> <span>用户管理</span></a></li>
        <li><a href="${pageContext.request.contextPath}/administrator/list_administrator"><i class="fa fa-link"></i> <span>管理员管理</span></a></li>
        <li><a href="${pageContext.request.contextPath}/order/listOrder"><i class="fa fa-link"></i> <span>订单管理</span></a></li>
        
        <li class="treeview">
          <a href="#"><i class="fa fa-link"></i> <span>权限管理</span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="${pageContext.request.contextPath}/auth/list_auth">权限管理</a></li>
            <li><a href="#">角色管理</a></li>
          </ul>
        </li>

        <li class="treeview">
          <a href="#"><i class="fa fa-link"></i> <span>商品管理</span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="${pageContext.request.contextPath}/goods/list_goods">商品信息</a></li>
            <li><a href="${pageContext.request.contextPath}/goods/goods_inventory">商品库存</a></li>
            <li><a href="${pageContext.request.contextPath}/goods/goods_sellprice">销售价格</a></li>
          </ul>
        </li>
        
        <li class="treeview">
          <a href="#"><i class="fa fa-link"></i> <span>商品分类管理</span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="${pageContext.request.contextPath}/goodsType/goodsType_first">一级标签管理</a></li>
            <li><a href="${pageContext.request.contextPath}/goodsType/goodsType_second">二级标签管理</a></li>
            <li><a href="${pageContext.request.contextPath}/goodsType/goodsType_third">三级标签管理</a></li>
          </ul>
        </li>
        <li><a href="#"><i class="fa fa-link"></i> <span>售后管理</span></a></li>
      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>