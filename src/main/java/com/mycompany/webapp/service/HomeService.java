package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.join.ProductDao;
import com.mycompany.webapp.vo.join.CategoryDepthDto;
import com.mycompany.webapp.vo.join.Product;

@Service
public class HomeService {
	@Resource private ProductDao productDao;
	
	public List<Product> getProductsByCategory(CategoryDepthDto categoryDepthDto){
		return productDao.getProductByCategory(categoryDepthDto);
	}
	
	public int getTotalProductNum(CategoryDepthDto categoryDepthDto) {
		return productDao.countByCategory(categoryDepthDto);
	}
}
