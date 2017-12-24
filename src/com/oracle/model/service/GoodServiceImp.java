package com.oracle.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.entity.Goods;
import com.oracle.model.dao.GoodsMapper;
import com.oracle.util.Pager;
@Service
public class GoodServiceImp implements GoodService{

	@Autowired
	GoodsMapper goodsMapper;
	
	
	@Override
	public List<Goods> listAllGoods() {
		
		return goodsMapper.selectAllGoods();
	}

	@Override
	public Goods getGoodsById(int goodsId) {
		// TODO Auto-generated method stub
		return goodsMapper.selectByPrimaryKey(goodsId);
	}

	@Override
	public void saveGoods(Goods goods) {
		// TODO Auto-generated method stub
		goodsMapper.insert(goods);
	}

	@Override
	public void updateGoods(Goods goods) {
		// TODO Auto-generated method stub
		goodsMapper.updateByPrimaryKeySelective(goods);
	}

	@Override
	public void deleteGoods(int goodsId) {
		// TODO Auto-generated method stub
		goodsMapper.deleteByPrimaryKey(goodsId);
	}

	@Override
	public void savePrice(Goods goods) {
		// TODO Auto-generated method stub
		goodsMapper.insert(goods);
	}

	@Override
	public void updatePrice(Goods goods) {
		// TODO Auto-generated method stub
		goodsMapper.updateByPrimaryKeySelective(goods);
	}

	@Override
	public void deletePrice(int goodsId) {
		// TODO Auto-generated method stub
		goodsMapper.deleteByPrimaryKey(goodsId);
	}

	@Override
	public List<Goods> listAllGoods(Goods goods,Pager pager) {
		// TODO Auto-generated method stub
		pager.setTotalCount(goodsMapper.selectCount(goods));
		return goodsMapper.selectByPager(goods,pager);
	}

}
