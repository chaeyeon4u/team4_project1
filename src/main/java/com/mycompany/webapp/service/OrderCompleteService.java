package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.join.OrderCompleteDao;
import com.mycompany.webapp.dto.OrderComplete;
import com.mycompany.webapp.vo.OrderItem;
import com.mycompany.webapp.vo.Orders;

@Service
public class OrderCompleteService {
	@Resource 
	private OrderCompleteDao orderCompleteDao;
		
		public List<OrderComplete> selectProductByorderId(String mid, String ordersId){
		return orderCompleteDao.selectProductByorderId(mid, ordersId);
		
	}
		public List<OrderComplete> selectpaymentByorderId(String mid, String ordersId){
		return orderCompleteDao.selectpaymentByorderId(mid, ordersId);
		}
		
		public List<OrderComplete> selectaddressByorderId(String mid, String ordersId){
		return orderCompleteDao.selectaddressByorderId(mid, ordersId);
		}
		
		public int orderProducts(Orders order) {
			return orderCompleteDao.insertOrders(order);
		}
		
		public int specificOrder(OrderItem orderitem) {
			return orderCompleteDao.insertOrderitem(orderitem);
		}
}
	


