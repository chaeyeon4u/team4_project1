package com.mycompany.webapp.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.join.OrderXDao;
import com.mycompany.webapp.dto.OrderX;

@Service
public class OrderXService {
	@Resource 
	private OrderXDao orderXDao;
	
	public List<OrderX> selectProductByOrderX(String mid, String ordersId){
		return orderXDao.selectProductByOrderX(mid,ordersId);
		
	}
	
	
}