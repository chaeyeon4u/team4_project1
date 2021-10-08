package com.mycompany.webapp.dao.join;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.mycompany.webapp.dto.OrderX;

@Mapper
public interface OrderXDao {
	List<OrderX> selectProductByOrderX(String mid);

}

 	