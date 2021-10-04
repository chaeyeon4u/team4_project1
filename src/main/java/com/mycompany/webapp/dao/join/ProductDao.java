package com.mycompany.webapp.dao.join;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.Color;
import com.mycompany.webapp.dto.Size;
import com.mycompany.webapp.vo.join.CategoryDepthDto;
import com.mycompany.webapp.vo.join.Product;

@Mapper
public interface ProductDao {
	List<Product> testRow();

	List<Product> getProductByCategory(CategoryDepthDto categoryDepthDto);
	
	int countByCategory(CategoryDepthDto categoryDepthDto);
	
	Product selectProductByPcolorId(String pcolorId);
	
	List<Color> selectColorsByPcolorId(String pcolorId);
	
	List<Size> selectSizesByPcolorId(String pcolorId);
}
