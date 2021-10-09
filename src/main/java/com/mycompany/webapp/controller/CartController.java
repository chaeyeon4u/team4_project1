package com.mycompany.webapp.controller;

import java.security.Principal;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycompany.webapp.dto.Color;
import com.mycompany.webapp.dto.Product;
import com.mycompany.webapp.dto.ProductToCart;
import com.mycompany.webapp.dto.Size;
import com.mycompany.webapp.service.CartService;
import com.mycompany.webapp.vo.Cart;
import com.mycompany.webapp.vo.Category;

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
		model.addAttribute("cartItems", cartItems);
		model.addAttribute("cartSize", cartItems.size());
		
		return "cart/cartList";
	}
	
	//장바구니에 데이터 삽입 
	//상품상세페이지에서 장바구니로 데이터 넘기기
	@PostMapping("")
	public String insertCart(ProductToCart product, Principal principal, Model model) {
		//장바구니에 상품 담기
		String mid = principal.getName();
		String pStockId = product.getProductStockId();
		Cart cart = new Cart();
		cart.setMemberId(mid);
		cart.setProductStockId(pStockId);
		cart.setQuantity(product.getQuantity());
		
		int cartItem = cartService.insertCart(cart);
		
		return "redirect:/cart";
	}

	@PostMapping("/update/quantity")
	public String updateQuantity(@RequestParam int quantity, @RequestParam String productStockId, 
			Principal principal) {
		String mid = principal.getName();
		cartService.updateQuantity(quantity, productStockId, mid);
		return "redirect:/cart";
	}
	
	@PostMapping("/update/options")
	public String updateOptions(ProductToCart product, Principal principal) {
		String mid = principal.getName();
		logger.info("pstockId = " + product.getProductStockId());
		logger.info("pstockId = " + product.getProductColorId());
		logger.info("pstockId = " + product.getColorCode());
		logger.info("pstockId = " + product.getSizeCode());

		cartService.updateOptions(product, mid);
		return "redirect:/cart";
	}
	
	@PostMapping("/selectColors")
	public String selectColors(Model model, String pcommonId){
		logger.info("실행");
		List<Color> colors = cartService.getColors(pcommonId);
		model.addAttribute("colors", colors);
		return "cart/colors";
	}
	
	/*	@RequestMapping("/selectSizesByPcommonId")
		public String selectSizesPcommonId(Model model, String pcommonId) {
			List<Size> sizes = cartService.getSizesByPcommonId(pcommonId);
			model.addAttribute("sizes", sizes);
			return "cart/sizes";
		}*/
	
	@RequestMapping("/selectSizesByPcolorId")
	public String selectSizesPcolorId(Model model, String pcolorId) {
		logger.info("실행");
		List<Size> sizes = cartService.getSizesByPcolorId(pcolorId);
		model.addAttribute("sizes", sizes);
		return "cart/sizes";
	}

	
	@PostMapping("/delete")
	public String deleteCartItem(Principal principal, @RequestParam("hidden_pcolorId") String pcolorId,
			@RequestParam("hidden_size_code") String sizeCode) {
		String mid = principal.getName();
		String pstockId = pcolorId + "_" + sizeCode;
		Cart cart = new Cart();
		cart.setMemberId(mid);
		cart.setProductStockId(pstockId);
		cartService.deleteCart(cart);
		logger.info("pcolorId: "+ pcolorId);
		logger.info("sizeCode: "+ sizeCode);
		return "redirect:/cart";
	}
}
