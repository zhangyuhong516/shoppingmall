package com.oracle.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.entity.Order;
import com.oracle.model.service.OrderService;
import com.oracle.util.Pager;

@Controller
@RequestMapping("order")
public class OrderController {
	
	@Autowired
	OrderService orderService;
	
	
	@RequestMapping("list")
	public List<Order> list(Order order,Pager pager){
		
		return orderService.list(order,pager);
	}
	
	
	@RequestMapping("detail")
	public List<Order> listDetail(Integer orderId){
		
		return orderService.listDetail(orderId);
	}
	
	@RequestMapping("add")
	public String add_Order(Order order){
		
		return "order/edit";
	}
	
	
	@RequestMapping("saveAdd")
	public String saveAdd(Order order){
		
		orderService.saveOrder(order);
		
		return "redirect:list";
	}

	@RequestMapping("edit")
	public Order update_Order(Integer orderId){
		
		return orderService.get(orderId);
	}
	
	@RequestMapping("saveEdit")
	public String save_Update(Order order){
		
		orderService.updateOrder(order);
		return "redirect:list";
	}
	
	@RequestMapping("del")
	public String delect_0rder(Integer orderId){
		
		orderService.deleteOrder(orderId);
		return "redirect:list";
	}
	
	@RequestMapping("add_shopcarlist2order")
	public String add_order(int userId,Integer[] goodsIds,HttpServletRequest req){
		
		orderService.addShopcarList2Order(userId, goodsIds);
		
			//req.getRequestDispatcher("/WEB-INF/content/user_page/user")
		return "redirect:../Jump2user_index";
	}
	
	@RequestMapping("index")
	public void index(){

	}

	
}
