package com.mycompany.webapp.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.OrderItemDao;
import com.mycompany.webapp.dao.OrdersDao;
import com.mycompany.webapp.dao.join.OrderXDao;
import com.mycompany.webapp.dto.OrderX;

@Service
public class OrderXService {
	@Resource 
	private OrderXDao orderXDao;
	
	@Resource
	private OrderItemDao orderItemDao; 

	
	public List<OrderX> selectProductByOrderX(String mid){
		return orderXDao.selectProductByOrderX(mid);
	}
	
	public int cancelOrderItem(String hidden_ordersId) {
		return orderItemDao.updateByOrdersId(hidden_ordersId);
	}
	
	public int cancelOrders(String hidden_ordersId) {
		return orderXDao.updateByOrdersId(hidden_ordersId);
	}
	
}