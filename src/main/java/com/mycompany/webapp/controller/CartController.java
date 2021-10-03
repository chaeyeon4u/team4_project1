package com.mycompany.webapp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.Principal;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycompany.webapp.service.CartService;
import com.mycompany.webapp.dto.Color;
import com.mycompany.webapp.dto.Product;
import com.mycompany.webapp.dto.Size;

@Controller
@RequestMapping("/cart")
public class CartController {
	
	private static final Logger logger = LoggerFactory.getLogger(CartController.class);

	@Resource private CartService cartService;
	
	@GetMapping("")
	public String cartList(Model model, Principal principal) {
		logger.info("실행");
		String mid = principal.getName();
		List<Product> cartItems = cartService.getList(mid);
		/*		System.out.println("color: " + cartItems.get(0).getProductColor().getColorCode());
				System.out.println("size: " + cartItems.get(0).getProductStock().getSizeCode());*/
		model.addAttribute("cartItems", cartItems);
		
		return "order/cartList";
	}
	
	@RequestMapping("/update")
	public String cartUpdate() {
		logger.info("실행");
		return "redirect:/order/cartList";
	}
	
	@RequestMapping("/selectOptions")
	public String selectOptions(Model model, String pcommonId){
		logger.info("실행");
		List<Color> colors = cartService.getColors(pcommonId);
		model.addAttribute("colors", colors);
		List<Size> sizes = cartService.getSizes(pcommonId);
		model.addAttribute("sizes", sizes);
		return "cart/options";
	}
	
	@RequestMapping("/selectColors")
	public String selectColors(Model model, String pcommonId){
		logger.info("실행");
		List<Color> colors = cartService.getColors(pcommonId);
		model.addAttribute("colors", colors);
		return "cart/colors";
	}
	
	@RequestMapping("/selectSizes")
	public String selectSizes(Model model, String pcommonId ) {
		List<Size> sizes = cartService.getSizes(pcommonId);
		model.addAttribute("sizes", sizes);
		return "cart/sizes";
	}
}
