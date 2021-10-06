package com.mycompany.webapp.dao.join;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.mycompany.webapp.vo.join.OrderX;

@Mapper
public interface OrderXDao {
	List<OrderX> selectProductByOrderX(@Param("mid") String mid, @Param("ordersId") String ordersId);

	
}

 	