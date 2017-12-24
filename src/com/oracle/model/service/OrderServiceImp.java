package com.oracle.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.entity.Order;
import com.oracle.model.dao.OrderMapper;
import com.oracle.util.Pager;
/**
 * 订单业务层的实现
 */

@Service
public class OrderServiceImp implements OrderService{

	
	@Autowired
	OrderMapper orderMapper;
	
	@Override
	public Order selectOrderById(Integer orderId) {
		
		return orderMapper.selectByPrimaryKey(orderId);
	}

	@Override
	public Order get(int orderId) {
		
		return orderMapper.selectByPrimaryKey(orderId);


	}

	@Override
	public void saveOrder(Order order) {
		orderMapper.insert(order);
		
	}
	
	@Override
	public void updateOrder(Order order) {
		orderMapper.updateByPrimaryKeySelective(order);
		
	}
	
	@Override
	public void deleteOrder(Integer orderId) {
		orderMapper.deleteByPrimaryKey(orderId);
		
	}

	@Override
	public List<Order> list() {
		// TODO Auto-generated method stub
		return orderMapper.selectAll();
	}

	@Override
	public List<Order> list(Order order, Pager pager) {
		// TODO Auto-generated method stub
		pager.setTotalCount(orderMapper.selectCount(order));
		return orderMapper.selectByPager(order,pager);
	}

	@Override
	public List<Order> listDetail(Integer orderId) {
		// TODO Auto-generated method stub
		return orderMapper.selectByUser(orderId);
	}

	@Override
	public void addShopcarList2Order(int userId, Integer[] goodsIds) {
		orderMapper.insertShopcarList2Order(userId, goodsIds);
		
	}
	

}
