package com.mycompany.webapp.dao.join;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.Product;

@Mapper
public interface ProductDao {
	List<Product> testRow();
	
	Product testDetail(String productColorId);
	
}
