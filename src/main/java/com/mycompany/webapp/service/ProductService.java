package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.join.ProductDao;
import com.mycompany.webapp.dto.Color;
import com.mycompany.webapp.dto.Size;
import com.mycompany.webapp.vo.join.CategoryDepthDto;
import com.mycompany.webapp.vo.join.Product;

@Service
public class ProductService {
	@Resource private ProductDao productDao;
	
	public List<Product> getProductsByCategory(CategoryDepthDto categoryDepthDto){
		return productDao.getProductByCategory(categoryDepthDto);
	}
	
	public int getTotalProductNum(CategoryDepthDto categoryDepthDto) {
		return productDao.countByCategory(categoryDepthDto);
	}
	
	public Product getProductDetail(String pcolorId) {
		return productDao.selectProductByPcolorId(pcolorId); 
	}
	
	public List<Color> getColors(String pcolorId){
		return productDao.selectColorsByPcolorId(pcolorId);
	}
	
	public List<Size> getSizes(String pcolorId){
		return productDao.selectSizesByPcolorId(pcolorId);
	}
	
	public List<Product> getWithItems(String pcolorId) {
		return productDao.selectWithItemsByPcolorId(pcolorId);
	}
	
}
