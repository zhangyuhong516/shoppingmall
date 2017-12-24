package com.oracle.util;

import java.util.Map;

import javax.servlet.jsp.PageContext;

import com.oracle.controller.AdminController;
import com.oracle.entity.Admin;
import com.oracle.entity.Auth;

/**
 * 工具类
 * @author JYK
 *
 */
public class Util {
	
	public static final String REDIRECT = "redirect";
	
	
	/**
	 * 是否为空（null或空字符串）
	 * @param obj
	 * @return
	 */
	public static boolean isEmpty(String obj){
		
		return obj == null  || "".equals(obj);
	}
	
	/**
	 * 是否不为空（null或空字符串）
	 * @param obj
	 * @return
	 */
	public static boolean isNotEmpty(String obj){
		
		return !isEmpty(obj);
	}
	
	/**
	 * 生成n位随机数
	 */
	public static String rand(int n){
		
		//生成n位机数
		String number = String.valueOf((long)(Math.random() * Math.pow(10, n)));
		//如果number不足十位数，则补0
		for(int i = 0; i < n - number.length(); i++){
			number += "0";
		}
		
		return number;
	}
	
	/**
	 * 当前用户是否有对应权限（对应jsp中的自定义函数的实现）
	 * @param code
	 * @param page
	 * @return
	 */
	public static boolean hasAuth(String code,PageContext page){
		
		//当前登录的用户
		Admin admin=(Admin) page.getSession().getAttribute(AdminController.ONLINE_ADMIN);
		
		if(admin == null){
			return false;
		}
		Map<String,Auth> adminOwnerCodeAuthMap=admin.getAdminOwnerCodeAuthMap();
		
		return adminOwnerCodeAuthMap.containsKey(code);
		
	}
	

}
