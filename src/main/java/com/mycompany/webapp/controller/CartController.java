package com.mycompany.webapp.controller;

import java.security.Principal;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.service.CartService;
import com.mycompany.webapp.vo.join.Product;

@Controller
@RequestMapping("/cart")
public class CartController {
	
	private static final Logger logger = LoggerFactory.getLogger(CartController.class);

	@Resource private CartService cartService;
	
	@GetMapping("")
	public String cartList(Model model, Principal principal) {
		logger.info("실행");
		String mid = principal.getName();
		List<Product> cartList = cartService.getList(mid);
		model.addAttribute("cartList", cartList);
		
		return "order/cartList";
	}
	
	@RequestMapping("/update")
	public String cartUpdate() {
		logger.info("실행");
		return "redirect:/order/cartList";
	}
}
