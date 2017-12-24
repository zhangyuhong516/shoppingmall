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
public class GoodsController {
	
	@Autowired
	GoodService goodService;
	/**
	 * 处理列表请求
	 * @return
	 */
	@RequestMapping("list_goods")
	public List<Goods> list_goods(Goods goods,Pager pager){
		
		return goodService.listAllGoods(goods,pager);
	}
	
	/**
	 * 跳转到edit_goods.jsp中
	 * 
	 */
	@RequestMapping("jump2add_goods")
	public String jump2add_goods(Goods goods){
		return "goods/edit_goods";
	}
	
	/**
	 * 增加商品
	 * 
	 */
	@RequestMapping("/add_goods")
	public String add_goods(Goods goods,String inpic1,String inpic2 )
	{
		System.out.println(inpic1+"----------"+inpic2);
		goods.setGoodsPic(inpic1);
		goodService.saveGoods(goods);
		
		return "redirect:list_goods";
	}
	
	/**
	 * 根据id得到商品对象
	 * 
	 */
	@RequestMapping("edit_goods")
	public Goods edit_goods(Integer goodsId){
		
		return goodService.getGoodsById(goodsId);
	}
	
	/**
	 * 保存商品修改
	 * @param authId
	 * @return
	 */
	@RequestMapping("update_goods")
	public String update_goods(Goods goods,String inpic1,String inpic2){
		goods.setGoodsPic(inpic1);
		goodService.updateGoods(goods);
		
		return "redirect:list_goods"; 
	}
	
	/**
	 * 处理删除请求
	 * @param authId
	 * @return
	 */
	@RequestMapping("delete_goods")
	public String delete_goods(Integer goodsId){
		
		goodService.deleteGoods(goodsId);
		
		return "redirect:list_goods"; 
	}
}
