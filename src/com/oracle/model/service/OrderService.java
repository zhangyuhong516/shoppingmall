package com.oracle.model.service;

import java.util.List;

import com.oracle.entity.Order;
import com.oracle.util.Pager;

public interface OrderService {
	
	/**
	 * 查询所有订单
	 * @param userId
	 * @param orderId
	 * @return
	 */
	public List<Order> list();	
	
	public List<Order> list(Order order,Pager pager);
	
	public List<Order> listDetail(Integer orderId);
	
	public Order selectOrderById(Integer orderId);
	
	public Order get(int orderId);
	
	public void saveOrder(Order order);
	
	public void addShopcarList2Order(int userId,Integer[] goodsIds);
	
	public void updateOrder(Order order);
	
	public void deleteOrder(Integer orderId);
	
	
}

