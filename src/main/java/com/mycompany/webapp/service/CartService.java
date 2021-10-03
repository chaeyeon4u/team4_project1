package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.CartDao;
import com.mycompany.webapp.dto.Color;
import com.mycompany.webapp.dto.Product;
import com.mycompany.webapp.dto.Size;

@Service
public class CartService {
	@Resource private CartDao cartDao;
	public List<Product> getList(String mid) {
		return cartDao.selectList(mid);
	}
	
	public List<Color> getColors(String pcommonId) {
		return cartDao.selectColors(pcommonId);
	}
	
	public List<Size> getSizes(String pcommonId) {
		return cartDao.selectSizes(pcommonId);
	}
	
}
