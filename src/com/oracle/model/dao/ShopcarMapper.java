package com.oracle.model.dao;

import java.util.List;

import com.oracle.entity.Goods;
import com.oracle.entity.Shopcar;

public interface ShopcarMapper {
    int deleteByPrimaryKey(Integer shopcarGoodsId);
    
    void deleteShopCarGoodByShopcarGoodsId(int shopcarGoodsId);

    int insert(Shopcar record);
    
    //根据商品id和userid插入数据库
    void insertGood2Shopcar(int goodsId, int userId);

    int insertSelective(Shopcar record);

    Shopcar selectByPrimaryKey(Integer shopcarGoodsId);
    
    
    List<Goods> selectGood2ShopcarByUserId(int userId);

    int updateByPrimaryKeySelective(Shopcar record);

    int updateByPrimaryKey(Shopcar record);
}