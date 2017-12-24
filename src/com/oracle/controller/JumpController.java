package com.oracle.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.entity.Admin;
import com.oracle.entity.Goods;
import com.oracle.entity.Order;
import com.oracle.entity.User;
import com.oracle.model.service.GoodService;
import com.oracle.model.service.ShopcarService;


/**
 * 管理员控制器
 * @author JYK
 *
 */

@Controller
public class JumpController {
	
	@Autowired
	GoodService goodService;

	@Autowired
	ShopcarService shopcarService;
	
	@RequestMapping("Jump2admin_index")
	public String Jump2admin_index(){
		
		return "admin_index";
	}
	
	@RequestMapping("Jump2admin_login")
	public String Jump2admin_login(Admin admin){
		
		return "admin_login";
	}
	
	@RequestMapping("Jump2user_index")
	public String Jump2user_index(HttpSession session){
		
		//从数据库查询对应商品信息
		List<Goods> goodsData=goodService.listAllGoods();
		//将商品装入session
		session.setAttribute("allGoods", goodsData);

		return "user_page/user_index";
	}
	
	@RequestMapping("jump2user_products")
	public String jump2user_products(HttpSession session){
		List<Goods> goodsData=goodService.listAllGoods();
		//将商品装入session
		session.setAttribute("allGoods", goodsData);
		return "user_page/user_products";
	}
	@RequestMapping("jump2user_single")
	public String jump2user_single(){
		
		return "user_page/user_single";
	}
	
	@RequestMapping("jump2user_shopping_car")
	public String jump2user_shopping_car(HttpSession session,Order order){
		User user=(User) session.getAttribute("loged");
		if(user!=null)
		{
			int userId=user.getUserId();
			System.out.println(user.getUserId());
			List<Goods> shopcarList=shopcarService.listGood2ShopcarByUserId(userId);
			System.out.println(shopcarList.isEmpty());
			session.setAttribute("shopcarList", shopcarList);
		}
		
		return "user_page/user_shopping_car";
	}
	
	
	
}
