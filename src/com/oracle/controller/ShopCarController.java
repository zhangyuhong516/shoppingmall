package com.oracle.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.entity.User;

import com.oracle.model.service.ShopcarService;


/**
 * 管理员控制器
 * @author JYK
 *
 */

@Controller
@RequestMapping("shopcar")
public class ShopCarController {
	
	@Autowired
	ShopcarService shopcarService;
	
	
	/**
	 * 将单个商品增加到购物车
	 * @return
	 */
	@RequestMapping("add_good2shopcar")
	public String add_good2shopcar(int goodsId,HttpSession session){
	
		User user=(User) session.getAttribute("loged");
		int userId=user.getUserId();
		
		shopcarService.saveGood2Shopcar(goodsId, userId);
		
		return "redirect:../jump2user_shopping_car";
		
	}
	
	/**
	 * 从购物车删除
	 * @return
	 */
	@RequestMapping("delete_shopcar_good")
	public String delete_shopcar_good(int shopcarGoodsId,HttpSession session){
	

		
		shopcarService.deleteShopcarGood(shopcarGoodsId);
		
		return "redirect:../jump2user_shopping_car";
		
	}
	
}
