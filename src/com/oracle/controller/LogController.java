package com.oracle.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.InternalResourceView;
import org.springframework.web.servlet.view.RedirectView;

import com.oracle.entity.User;
import com.oracle.model.service.UserService;
import com.oracle.util.Md5Encrypt;

/**
 * 权限控制器
 * @author 
 *
 */
@Controller
public class LogController {
	
	@Autowired
	UserService userService;
	//登录
	@RequestMapping("login")
	public ModelAndView login(User user,HttpSession session){
		
		ModelAndView modelAndView = new ModelAndView();
		
		//从数据库查询用户
		User userData = userService.get(user.getUserName());
		System.out.println(userData.getUserPassword());
		System.out.println(user.getUserPassword());
		if(userData != null && userData.getUserPassword().equals(user.getUserPassword())){
			//登录成功,将用户装入session
			session.setAttribute("loged", userData);
			modelAndView.setView(new RedirectView("/index.jsp",true));
		}else{
			//失
			modelAndView.addObject("msg", "登录失败，请检查用户名和密码");
			modelAndView.setView(new InternalResourceView("/login.jsp"));
		}
		
		return modelAndView;
	}
	//退出登录
	@RequestMapping("logout")
	public ModelAndView logout(HttpSession session){
		
		ModelAndView modelAndView = new ModelAndView();
		
		//从session里移除登录用户
		session.removeAttribute("loged");
		
		modelAndView.setView(new RedirectView("/index.jsp",true));
		
		return modelAndView;
		
	}
	
	

}
