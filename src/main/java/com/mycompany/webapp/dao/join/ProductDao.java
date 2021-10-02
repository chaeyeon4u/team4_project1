package com.mycompany.webapp.dao.join;

import java.util.List;

import com.mycompany.webapp.vo.join.Product;

public interface ProductDao {
	List<Product> testRow();
	
	Product testDetail(String productColorId);
	
}
