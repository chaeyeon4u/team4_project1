package com.mycompany.webapp.dao;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface OrderItemDao {
	int updateByOrdersId(String hidden_ordersId);
}
