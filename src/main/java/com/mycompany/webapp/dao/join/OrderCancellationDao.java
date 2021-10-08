package com.mycompany.webapp.dao.join;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mycompany.webapp.dto.OrderCancellation;

public interface OrderCancellationDao {
	List<OrderCancellation> slelectProducts(@Param ("mid") String mid, @Param ("ordersId") String ordersId); 
}
