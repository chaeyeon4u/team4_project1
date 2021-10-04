package com.mycompany.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.mycompany.webapp.dto.Color;
import com.mycompany.webapp.dto.Product;
import com.mycompany.webapp.dto.Size;

@Mapper
public interface CartDao {
	List<Product> selectList(String mid);
	List<Color> selectColorsByPcommonId(String pcommonId);
	List<Size> selectSizesByPcommonId(String pcommonId);
	void updateCountByQuantity(@Param("quantity") int quantity, @Param("pstockId") String pstockId, @Param("mid") String mid);
}
