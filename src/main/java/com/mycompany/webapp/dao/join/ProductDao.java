package com.mycompany.webapp.dao.join;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.vo.join.CategoryDepthDto;
import com.mycompany.webapp.vo.join.Product;

@Mapper
public interface ProductDao {
	List<Product> testRow();
	
	Product testDetail(String productColorId);

	List<Product> getProductByCategory(CategoryDepthDto categoryDepthDto);
	
	int countByCategory(CategoryDepthDto categoryDepthDto);
	
}
