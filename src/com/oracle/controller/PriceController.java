package com.oracle.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.entity.Goods;
import com.oracle.model.service.GoodService;
import com.oracle.util.Pager;

/**
 * 
 * @author 张玉红
 *
 */
@Controller
@RequestMapping("goods")
public class PriceController {
	
	@Autowired
	GoodService goodService;
	/**
	 * 处理列表请求
	 * @return
	 */
	@RequestMapping("list_price")
	public List<Goods> list_price(Goods goods,Pager pager){
		
		return goodService.listAllGoods(goods,pager);
	}
	
	/**
	 * 跳转到edit_goods.jsp中
	 * 
	 */
	@RequestMapping("jump2add_price")
	public String jump2add_goods(Goods goods){
		return "goods/edit_price";
	}
	
	/**
	 * 增加价格
	 * 
	 */
	@RequestMapping("add_price")
	public String add_price(Goods goods){
		goodService.savePrice(goods);
		
		return "redirect:list_price";
	}
	
	/**
	 * 根据id得到商品对象
	 * 
	 */
	@RequestMapping("edit_price")
	public Goods edit_price(Integer goodsId){
		
		return goodService.getGoodsById(goodsId);
	}
	
	/**
	 * 保存商品修改
	 * @param authId
	 * @return
	 */
	@RequestMapping("update_price")
	public String update_price(Goods goods){
		
		goodService.updatePrice(goods);
		
		return "redirect:list_price"; 
	}
	
	/**
	 * 处理删除请求
	 * @param authId
	 * @return
	 */
	@RequestMapping("delete_price")
	public String delete_price(Integer goodsId){
		
		goodService.deletePrice(goodsId);
		
		return "redirect:list_price"; 
	}
}
