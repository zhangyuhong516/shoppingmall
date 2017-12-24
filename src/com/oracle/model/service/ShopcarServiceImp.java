package com.oracle.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.entity.Goods;
import com.oracle.model.dao.ShopcarMapper;

@Service
public class ShopcarServiceImp implements ShopcarService {
	@Autowired
	ShopcarMapper shopcarMapper;

	@Override
	public void saveGood2Shopcar(int goodsId, int userId) {
		shopcarMapper.insertGood2Shopcar(goodsId, userId);

	}

	@Override
	public List<Goods> listGood2ShopcarByUserId(int userId) {
		System.out.println("intoShopCarService");
		return shopcarMapper.selectGood2ShopcarByUserId(userId);
	}

	@Override
	public void deleteShopcarGood(int shopcarGoodsId) {
		shopcarMapper.deleteShopCarGoodByShopcarGoodsId(shopcarGoodsId);
		
	}

}
