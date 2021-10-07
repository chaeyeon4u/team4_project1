package com.mycompany.webapp.dao.join;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.mycompany.webapp.dto.OrderComplete;

@Mapper
public interface OrderCompleteDao {
	List<OrderComplete> selectProductByorderId(@Param("mid") String mid, @Param("ordersId") String ordersId);
	List<OrderComplete> selectpaymentByorderId(@Param("mid") String mid, @Param("ordersId") String ordersId);
	List<OrderComplete> selectaddressByorderId(@Param("mid") String mid, @Param("ordersId") String ordersId);
}
