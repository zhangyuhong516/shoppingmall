package com.oracle.model.service;

import java.util.List;

import com.oracle.entity.Goods;

public interface ShopcarService 
{
	void saveGood2Shopcar(int goodsId,int userId);
	
	void deleteShopcarGood(int shopcarGoodsId);
	
	List<Goods> listGood2ShopcarByUserId(int userId);

}
