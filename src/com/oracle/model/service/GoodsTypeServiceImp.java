package com.oracle.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.entity.GoodsType;

import com.oracle.model.dao.GoodsTypeMapper;


/**
 * 商品分类Service实现类
 * @author 姚世杰
 *
 */
@Service
public class GoodsTypeServiceImp implements GoodsTypeService {
	
	@Autowired
	GoodsTypeMapper goodsTypemapper;
	
	@Override
	public List<GoodsType> listAllType_first() {
		
		
		return goodsTypemapper.selectFirstType();
	}

	@Override
	public List<GoodsType> listAllType_second() {
		
		return goodsTypemapper.selectSecondType();
	}

	@Override
	public List<GoodsType> listAllType_third() {
		
		return goodsTypemapper.selectThirdType();
	}

	@Override
	public GoodsType getGoodsTypeById(Integer goodsTypeId) {
		
		return goodsTypemapper.selectByPrimaryKey(goodsTypeId);
	}

	@Override
	public GoodsType getGoodsTypeByname(String goodsTypeName) {
		
		return goodsTypemapper.selectByname(goodsTypeName);
	}

	@Override
	public void saveGoodsType(GoodsType goodsType) {
		
		goodsTypemapper.insert(goodsType);
	}

	@Override
	public void updateGoodsType(GoodsType goodsType) {
		
		goodsTypemapper.updateByPrimaryKey(goodsType);
	}

	@Override
	public void delateGoodsType(Integer goodsTypeId) {
		
		goodsTypemapper.deleteByPrimaryKey(goodsTypeId);
	}
	
	
	
}
