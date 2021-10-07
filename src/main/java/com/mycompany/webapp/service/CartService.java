package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.CartDao;
import com.mycompany.webapp.vo.Cart;
import com.mycompany.webapp.dto.Color;
import com.mycompany.webapp.dto.Product;
import com.mycompany.webapp.dto.Size;
import com.mycompany.webapp.vo.Category;

@Service
public class CartService {
	@Resource private CartDao cartDao;
	public List<Product> getList(String mid) {
		return cartDao.selectList(mid);
	}
	
	public List<Color> getColors(String pcommonId) {
		return cartDao.selectColorsByPcommonId(pcommonId);
	}
	
	public List<Size> getSizes(String pcommonId) {
		return cartDao.selectSizesByPcommonId(pcommonId);
	}
	public int updateQuantity(int quantity, String pstockId, String mid ) {
		return cartDao.updateCountByQuantity(quantity, pstockId, mid);
	}
	
	public int updateOptions(String color, String size, String pcommonId, String pstockId, String mid) {
		String newPstockId = pcommonId + "_" +color + "_" + size;
		return cartDao.updatePstockId(newPstockId, mid, pstockId);
	}
	
	public Category setCategories(String pcolorId) {
		return cartDao.selectCategoryByPcolorId(pcolorId);
	}
	
	public int insertCart(Cart cart) {
		return cartDao.insertCart(cart);
	}
	
	public int deleteCart(Cart cart) {
		return cartDao.deleteByMemberIdAndProductStockId(cart);
	}
}
