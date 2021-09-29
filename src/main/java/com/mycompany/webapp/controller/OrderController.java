package com.mycompany.webapp.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dto.Product;

@Controller
@RequestMapping("/order")
public class OrderController {
	private static final Logger logger = LoggerFactory.getLogger(OrderController.class);
	
	@RequestMapping("/orderform")
	public String orderForm() {
		logger.info("실행");
		return "order/orderForm";
	}
	
	
	@RequestMapping("/cartlist")
	public String cartList(Model model) {
		logger.info("실행");
		
		List<Product> products = new ArrayList<Product>();
		
		products.add(new Product("1", "캐시미어 칼라리스 재킷", "the CASHMERE", "Sepia Brown", "88", "3,750,000", "/resources/images/womanouter/LC2B9WJC443W_GY_T01.jpg"));
		products.add(new Product("2", "프린팅 블록 드레스 & 니트 스웨터", "SJSJ", "SMOKE GREEN", "82", "495,000", "/resources/images/womanouter/SJ2B9RJC264W_LE_T01.jpg"));
		products.add(new Product("3", "크롭 구스 다운 점퍼", "CLUB MONACO", "Sepia Brown", "S", "598,000", "/resources/images/womanouter/TG2B7WJC057NDU_BK_T01.jpg"));
		model.addAttribute("products", products);
		
		return "order/cartList";
	}
	
	@RequestMapping("/cart/update")
	public String cartUpdate() {
		logger.info("실행");
		return "redirect:/order/cartList";
	}
	
	@RequestMapping("/ordercomplete")
	public String orderComplete() {
		logger.info("실행");
		return "order/orderComplete";
	}
	
	
}  
