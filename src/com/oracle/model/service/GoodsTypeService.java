package com.oracle.model.service;

import java.util.List;

import com.oracle.entity.Auth;
import com.oracle.entity.GoodsType;

/**
 * 商品分类管理接口
 * @author 姚世杰
 *
 */
public interface GoodsTypeService {
	
	//返回所有的一级标签
	List<GoodsType> listAllType_first();
	
	//返回所有二级标签
	List<GoodsType> listAllType_second();
	
	//返回所有三级标签
	List<GoodsType> listAllType_third();
	
	//通过标签id返回单个标签
	GoodsType getGoodsTypeById(Integer goodsTypeId);
	
	//通过标签名称返回单个标签
	GoodsType getGoodsTypeByname(String goodsTypeName);
	
	//保存标签
	void saveGoodsType(GoodsType goodsType);
	
	//修改标签
	void updateGoodsType(GoodsType goodsType);
	
	//删除标签
	void delateGoodsType(Integer goodsTypeId);
	
}
