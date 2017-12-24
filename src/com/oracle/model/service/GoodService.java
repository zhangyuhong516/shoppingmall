package com.oracle.model.service;

import java.util.List;

import com.oracle.entity.Goods;
import com.oracle.util.Pager;

/**
 * 商品管理接口
 * @author 张玉红
 *
 */
public interface GoodService {
	
	List<Goods> listAllGoods();
	List<Goods> listAllGoods(Goods goods,Pager pager);
	Goods getGoodsById(int goodsId);
	void saveGoods(Goods good);
	void updateGoods(Goods goods);
	void deleteGoods(int goodsId);
	void savePrice(Goods goods);
	void updatePrice(Goods goods);
	void deletePrice(int goodsId);
	
}
