package com.oracle.filter;

import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.oracle.controller.AdminController;
import com.oracle.entity.Admin;
import com.oracle.entity.Auth;
import com.oracle.entity.AuthAdmin;
import com.oracle.entity.AuthUser;
import com.oracle.listener.ApplicationListener;
import com.oracle.model.service.AuthService;


/**
 * 检查权限的拦截器
 * @author JYK
 *想要成为一个拦截器必须要实现这个接口
 */
public class AuthInterceptor  implements HandlerInterceptor{
	
	@Autowired
	AuthService authService;
	
	//整个流程已经执行完了的情况下
	@Override
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		
	}
	
	//目标Controller已经被调用，视图还没有被解析的情况下
	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		
	}
	
	//进入控制器之前，检查权限要用这个
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object arg2) throws Exception {
		
		//取出当前访问地址（为了能和权限里面配置的访问地址作对比）
		String uri=request.getRequestURI();
		
		//取出web应用的根目录
		String webRoot=request.getContextPath();
		
		//去掉uri的前缀
		uri=uri.replaceFirst(webRoot + "/", "");
		
		//从Application中取出所有的权限
		ServletContext application=request.getServletContext();
		
		Map<String,Auth> authMap=(Map<String, Auth>) application.getAttribute(ApplicationListener.APPLICATION_AUTHLIST);
		
		//判断uri是不是在这个Map中（当前请求地址是否已被受控）
		if(authMap.containsKey(uri))
		{
			//需要检查权限
			//取当前登录的用户
			//先从数据库查出来都放在session中，然后从session中取出来就好了
			Admin admin=(Admin) request.getSession().getAttribute(AdminController.ONLINE_ADMIN);
			
			//取出当前用户已经拥有的权限
			Map<String,Auth> adminOwnerAuthMap=admin.getAdminOwnerAuthMap();

			//当前登录的用户是否有权限访问当前地址
			if(!adminOwnerAuthMap.containsKey(uri)){
				//如果没有包含，则禁止访问
				response.sendRedirect(webRoot + "/no_auth.jsp");
				return false;
			}
		}
		
		
		return true;//能过去
	}

}
