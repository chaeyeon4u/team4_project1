package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.join.ProductDao;
import com.mycompany.webapp.vo.join.Product;

@Service
public class TestService {
	@Resource private ProductDao productDao;
	
	public List<Product> getBoards() {
		return productDao.testRow();
	}
	
	public Product getProductDetail(String productColorId) {
		return productDao.testDetail(productColorId);
	}
}