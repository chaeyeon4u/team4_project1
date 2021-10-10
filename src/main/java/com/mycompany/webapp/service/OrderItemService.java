package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mycompany.webapp.dao.OrderItemDao;
import com.mycompany.webapp.dao.join.OrderXDao;
import com.mycompany.webapp.dto.OrderX;

@Service
public class OrderItemService {
	@Resource 
	private OrderXDao orderXDao;
	
	@Resource
	private OrderItemDao orderItemDao; 

	
	public List<OrderX> getOrderItems(String mid){
		return orderXDao.selectProductByMid(mid);
	}

	@Transactional
	public int cancelOrderItem(String hidden_ordersId) {
		return orderItemDao.updateByOrdersId(hidden_ordersId);
	}

	@Transactional
	public int cancelOrders(String hidden_ordersId) {
		return orderXDao.updateByOrdersId(hidden_ordersId);
	}
	
}