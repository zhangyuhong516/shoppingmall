package com.oracle.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.entity.GoodsType;
import com.oracle.model.service.GoodsTypeService;

/**
 * 
 * @author 姚世杰
 *
 */

@Controller
@RequestMapping("goodsType")
public class GoodsTypeController {
	
	@Autowired
	GoodsTypeService goodsTypeService;
	
	/**
	 * 处理列表请求,跳转到一级标签管理页面
	 * @param goodsTypeLv 
	 * @return
	 */
	@RequestMapping("goodsType_first")
	public List<GoodsType> goodsType_Firstlist(){
						
		return goodsTypeService.listAllType_first();
	}
	
	
		
	/**
	* 处理列表请求 ，跳转到二级标签管理页面
	* @param GoodsType
	* @return
	*/
	@RequestMapping("goodsType_second")
	public List<GoodsType> jump2good_goodstype_second(GoodsType good){
		return goodsTypeService.listAllType_second();
	}
	
	/**
	 * 处理列表请求 ，跳转到三级标签管理页面
	 * @param GoodsType
	 * @return
	 */
	@RequestMapping("goodsType_third")
	public List<GoodsType> jump2good_goodstype_third(GoodsType good){
		return goodsTypeService.listAllType_third();
	}
	
	/**
	 * 跳转到编辑页面
	 * @param goodsTypeId
	 * @return
	 */
	@RequestMapping("edit_goodsType")
	public GoodsType edit_goodsType(Integer goodsTypeId){
		
		return goodsTypeService.getGoodsTypeById(goodsTypeId);
	}
	
	
	/**
	 * 保存修改
	 * @param GoodsType
	 * @return
	 */
	@RequestMapping("update_goodsType")
	public String  update_goodsType(GoodsType goodsType){
		
		goodsTypeService.updateGoodsType(goodsType);
		
		String re="redirect:goodsType_";
		Integer Lv=goodsType.getGoodsTypeLv();
		
		if(Lv==0)
			re=re+"first";
		else if(Lv==1)
			re=re+"second";
		else if(Lv==2)
			re=re+"third";
		return re;
	}
	
	/**
	 * 跳转到增加商品标签页面
	 * 
	 * @return
	 */
	@RequestMapping("jump2add_goodsType")
	public String jump2add_goodsType(GoodsType goodsType){
		
		return "goodsType/edit_goodsType";
		
	}
	
	/**
	 * 增加商品
	 * @param goodsTypeId
	 * @return
	 */
	@RequestMapping("add_goodsType")
	public String save_goodsType(GoodsType goodsType){
		
		goodsTypeService.saveGoodsType(goodsType);
		
		String re="redirect:goodsType_";
		Integer Lv=goodsType.getGoodsTypeLv();
		
		if(Lv==0)
			re=re+"first";
		else if(Lv==1)
			re=re+"second";
		else if(Lv==2)
			re=re+"third";
		return re;
	}
	
	/**
	 * 删除商品标签
	 * @param goodsTypeId
	 * @return
	 */
	@RequestMapping("del_goodsType")
	public String del_goodsType(Integer goodsTypeId){
		
		goodsTypeService.delateGoodsType(goodsTypeId);
		
		String re="redirect:goodsType_";
		Integer Lv=goodsTypeService.getGoodsTypeById(goodsTypeId).getGoodsTypeLv();
		
		if(Lv==0)
			re=re+"first";
		else if(Lv==1)
			re=re+"second";
		else if(Lv==2)
			re=re+"third";
		return re;
	}
}
