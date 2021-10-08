package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.join.OrderCancellationDao;
import com.mycompany.webapp.dto.OrderCancellation;

@Service
public class OrderCancellationService {
	@Resource 
	private OrderCancellationDao orderCancellationDao;
	
	public List<OrderCancellation> slelectProducts(String mid, String ordersId){
		return orderCancellationDao.slelectProducts(mid, ordersId);
	}
	
	
}
