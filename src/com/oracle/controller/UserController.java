package com.oracle.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.InternalResourceView;
import org.springframework.web.servlet.view.RedirectView;

import com.oracle.entity.Auth;
import com.oracle.entity.AuthUser;
import com.oracle.entity.User;
import com.oracle.model.service.UserService;
import com.oracle.util.Pager;

@Controller
@RequestMapping("user")
public class UserController {

	@Autowired
	UserService userService;
	@RequestMapping("regist")
	public String add(User user){
		
		return "user/regist";
	}
	
	@RequestMapping("saveAdd")
	public String saveAdd(User user,String inpic1){
		user.setUserImg(inpic1);
		userService.add(user);
		
		return "redirect:index";
	}
	
	@RequestMapping("index")
	public ModelAndView index(){
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setView(new InternalResourceView("/index.jsp"));
		return modelAndView;
	}
	
	@RequestMapping("list")
	public List<User> list(User user,Pager pager){
		 
		return userService.list(user,pager);
	}
	
	@RequestMapping("edit")
	public User edit(Integer userId){
		
		 return userService.get(userId);
		
	}
	
	@RequestMapping("saveEdit")
	public String saveEdit(User user){
		
		userService.update(user);
		return "redirect:list";
	}
	@RequestMapping("del")
	public String del(Integer userId){
		
		userService.delete(userId);
		return "redirect:list";
		
	}
}
