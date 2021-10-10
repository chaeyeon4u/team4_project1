package com.mycompany.webapp.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.mycompany.webapp.dto.OrderX;

@Mapper
public interface OrdersDao {
	List<OrderX> selectProductByMid(String mid);
	int updateByOrdersId(String hidden_ordersId);
}

 	