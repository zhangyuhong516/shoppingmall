package com.oracle.filter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.oracle.controller.AdminController;
import com.oracle.controller.UserController;
import com.oracle.entity.Admin;
import com.oracle.entity.User;

/**
 * 登录拦截器
 * @author 闫飞
 *
 */
public class LoginInterceptor implements HandlerInterceptor{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object arg2) throws Exception {
		
		System.out.println("springmvc控制器被调用前..................");
		
		String uri = request.getRequestURI();
		
	    //如果目标地址不是登录
	    if(!uri.equals(request.getContextPath() + "/login")){
	    	
	    	HttpSession session = request.getSession();
	 	    
	    	//检查用户是否有登录
	 	    Admin admin = (Admin) session.getAttribute(AdminController.ONLINE_ADMIN);
	    	 if(admin == null){
	 	    	//没登录
	 	    	response.sendRedirect(request.getContextPath() + "/index.jsp");
	 	    	return false;
	 	    }
	    	
	    }
		
		return true;//true代表流程继续，false流程中止
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		
		System.out.println("springmvc控制器被调用后..................");
		
	}
	
	@Override
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		
		System.out.println("视图加载完成..................");
	}

	

	

}
