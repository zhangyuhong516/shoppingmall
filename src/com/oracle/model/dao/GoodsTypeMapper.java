package com.oracle.model.dao;

import java.util.List;

import com.oracle.entity.GoodsType;

public interface GoodsTypeMapper {
    int deleteByPrimaryKey(Integer goodsTypeId);

    int insert(GoodsType record);

    int insertSelective(GoodsType record);

    GoodsType selectByPrimaryKey(Integer goodsTypeId);

    int updateByPrimaryKeySelective(GoodsType record);

    int updateByPrimaryKey(GoodsType record);
    
    
    
    
    //返回所有的一级标签
  	List<GoodsType> selectFirstType();
  	
  	//返回所有二级标签
  	List<GoodsType> selectSecondType();
  	
  	//返回所有三级标签
  	List<GoodsType> selectThirdType();
  	
    //通过标签名称返回单个标签
  	GoodsType selectByname(String goodsTypeName);
  	
  	
}