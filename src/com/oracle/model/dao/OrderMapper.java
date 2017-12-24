package com.oracle.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.oracle.entity.Order;
import com.oracle.util.Pager;

public interface OrderMapper {
    int deleteByPrimaryKey(Integer orderId);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(Integer orderId);
    
    List<Order> selectByUser(Integer orderId);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);
    
    List<Order> selectAll();
    
    List<Order> selectByPager(@Param("order")Order order,@Param("pager")Pager pager);
 
    int selectCount(@Param("order")Order order);
    
    void insertShopcarList2Order(int userId, Integer[] goodsIds);
}