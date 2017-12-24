package com.oracle.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.oracle.entity.Auth;
import com.oracle.entity.Goods;
import com.oracle.util.Pager;

public interface GoodsMapper {
    int deleteByPrimaryKey(Integer goodsId);

    int insert(Goods record);

    int insertSelective(Goods record);

    Goods selectByPrimaryKey(Integer goodsId);
    List<Goods> selectAllGoods();

    int updateByPrimaryKeySelective(Goods record);

    int updateByPrimaryKey(Goods record);
    
    List<Goods> selectByPager(@Param("goods")Goods goods,@Param("pager")Pager pager);
    
    int selectCount(@Param("goods")Goods goods);
}