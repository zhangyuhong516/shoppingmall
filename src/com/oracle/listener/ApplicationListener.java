package com.oracle.listener;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.web.context.support.WebApplicationContextUtils;

import com.oracle.entity.Auth;
import com.oracle.model.service.AuthAdminService;
import com.oracle.model.service.AuthService;


/**
 * 监听应用的创建
 * @author JYK
 * 如果想成为一个监听器，就要实现ServletContextListener这个接口
 *因为这里是监听器，所以这里不能用自动注入
 */
public class ApplicationListener  implements ServletContextListener{
	
	public static final String APPLICATION_AUTHLIST = "application_AuthMap";

	//应用销毁的时候
	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		
	}

	
	//应用创建的时候，应用初始化的时候
	//要实现权限，可以在应用创建的时候把权限列表放在Application里面
	@Override
	public void contextInitialized(ServletContextEvent event) {
		//从spring容器里取authService
		AuthService authService=WebApplicationContextUtils.
				getWebApplicationContext(event.getServletContext()).getBean(AuthService.class);
		
		//取出所有的权限
		List<Auth> authList = authService.listAllAuth();
		
		//将List转Map
		Map<String,Auth> authMap = new HashMap<String,Auth>(); 
		
		//每循环一次，就往map中放一个权限
		for(Auth auth : authList){
			String authUrl = auth.getAuthUrl();
			
			//把访问地址用逗号分隔，拆成多个，因为一个权限里面可能不只有一个地址
			String[] authUrls = authUrl.split(",");
			
			for(String url : authUrls){
				authMap.put(url, auth);
		}
			
		}
		
		//将所有权限放入application作用域当中
		event.getServletContext().setAttribute(APPLICATION_AUTHLIST, authMap);
	}

}
