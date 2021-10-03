package com.mycompany.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.Color;
import com.mycompany.webapp.dto.Product;
import com.mycompany.webapp.dto.Size;

@Mapper
public interface CartDao {
	List<Product> selectList(String mid);
	List<Color> selectColors(String pcommonId);
	List<Size> selectSizes(String pcommonId);
}
