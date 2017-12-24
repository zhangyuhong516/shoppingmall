package com.oracle.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.entity.Auth;
import com.oracle.model.service.AuthService;
import com.oracle.util.Pager;

/**
 * 权限控制器
 * @author JYK
 *
 */

@Controller
@RequestMapping("auth")
public class AuthController {
	
	@Autowired
	AuthService authService;
	
	/**
	 * 列出权限列表
	 * @return
	 */
	@RequestMapping("list_auth")
	public List<Auth> list_auth(Pager pager){
		
		return authService.listAllAuth(pager);
	}
	
	/**
	 * 跳转到edit_auth.jsp中
	 * @param auth
	 * @return
	 */
	@RequestMapping("jump2add_auth")
	public String jump2add_auth(Auth auth){
		return "auth/edit_auth";
	}
	
	/**
	 * 增加权限
	 * @param auth
	 * @return
	 */
	@RequestMapping("add_auth")
	public String add_auth(Auth auth){
		authService.saveAuth(auth);
		
		return "redirect:list_auth";//重定向到list_auth上
	}
	
	/**
	 * 根据id得到权限对象
	 * @param authId
	 * @return
	 */
	@RequestMapping("edit_auth")
	public Auth edit_auth(Integer authId){
		
		return authService.getAuthById(authId);
	}
	
	/**
	 * 保存权限修改
	 * @param authId
	 * @return
	 */
	@RequestMapping("update_auth")
	public String update_auth(Auth auth){
		
		authService.updateAuth(auth);
		
		return "redirect:list_auth"; 
	}
	
	/**
	 * 处理删除请求
	 * @param authId
	 * @return
	 */
	@RequestMapping("delete_auth")
	public String delete_auth(Integer authId){
		
		authService.deleteAuth(authId);
		
		return "redirect:list_auth"; 
	}

}
