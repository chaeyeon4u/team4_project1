package com.mycompany.webapp.controller;

import java.security.Principal;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycompany.webapp.dto.Cart;
import com.mycompany.webapp.dto.CategoryDepth;
import com.mycompany.webapp.dto.Color;
import com.mycompany.webapp.dto.Product;
import com.mycompany.webapp.dto.Size;
import com.mycompany.webapp.service.CartService;
import com.mycompany.webapp.service.ProductService;
import com.mycompany.webapp.vo.Pager;

@Controller
@RequestMapping("/product")
public class ProductController {
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	
	@Resource
	private ProductService productService;

	@Resource
	private CartService cartService;
	
	@RequestMapping("/{depth1}/{depth2}/{depth3}")
	public String searchByCategory(Model model, @PathVariable String depth1, @PathVariable String depth2, @PathVariable String depth3,@RequestParam(defaultValue = "1") int pageNo) {
		
		CategoryDepth categoryDepthDto = new CategoryDepth();
		categoryDepthDto.setDepth1(depth1);
		categoryDepthDto.setDepth2(depth2);
		categoryDepthDto.setDepth3(depth3);
		//페이징 처리를 위해 조건에 맞는 상품전체 개수 조회
		int totalProduct = productService.getTotalProductNum(categoryDepthDto);
		Pager pager = new Pager(12,5,totalProduct, pageNo);
		categoryDepthDto.setPager(pager);
		List<Product> products = productService.getProductsByCategory(categoryDepthDto); 
		model.addAttribute("pager",pager);
		model.addAttribute("products", products);
		String str = depth1+"/"+depth2+"/"+depth3;
		model.addAttribute("str",str);
		model.addAttribute("currDepth",3);//depth3
		return "product/productList";
	}
	@RequestMapping("/{depth1}/{depth2}")
	public String searchByCategory(Model model, @PathVariable String depth1, @PathVariable String depth2,@RequestParam(defaultValue = "1") int pageNo) {
		CategoryDepth categoryDepthDto = new CategoryDepth();
		categoryDepthDto.setDepth1(depth1);
		categoryDepthDto.setDepth2(depth2);
		int totalProduct = productService.getTotalProductNum(categoryDepthDto);
		Pager pager = new Pager(12,5,totalProduct, pageNo);
		categoryDepthDto.setPager(pager);
		List<Product> products = productService.getProductsByCategory(categoryDepthDto); 
		model.addAttribute("pager",pager);
		model.addAttribute("products", products);
		String str = depth1+"/"+depth2;
		model.addAttribute("str",str);
		model.addAttribute("currDepth",2);//depth2
		return "product/productList";
	}
	@RequestMapping("/{depth1}")
	public String searchByCategory(Model model, @PathVariable String depth1,@RequestParam(defaultValue = "1") int pageNo) {
		CategoryDepth categoryDepthDto = new CategoryDepth();
		categoryDepthDto.setDepth1(depth1);
		int totalProduct = productService.getTotalProductNum(categoryDepthDto);
		Pager pager = new Pager(12,5,totalProduct, pageNo);
		categoryDepthDto.setPager(pager);
		List<Product> products = productService.getProductsByCategory(categoryDepthDto); 
		model.addAttribute("pager",pager);
		model.addAttribute("products", products);
		String str = depth1;
		model.addAttribute("str",str);
		model.addAttribute("currDepth",1);//depth1

		return "product/productList";
	}
	
	// 하나의 상품에 대한 컬러는 product를 사용하면서 가져올 수 있지만, 여러 상품에 대한 컬러는 자바스크립트로 가져오도록 처리하였다.
	@RequestMapping("/{depth1}/{depth2}/{depth3}/**/{pcolorId}")
	public String detail(@PathVariable String pcolorId, Model model) {
		Product product = productService.getProductDetail(pcolorId);
		List<Color> colors = productService.getColors(pcolorId);
		List<Size> sizes = productService.getSizes(pcolorId);
		List<Product> withItems = productService.getWithItems(pcolorId);
		
		logger.info(withItems.toString());
		
		model.addAttribute("product", product);
		model.addAttribute("colors", colors);
		model.addAttribute("sizes", sizes);
		model.addAttribute("withItems", withItems);
		
		return "product/productDetail";
	}
	
	@RequestMapping("/selectColors")
	public String selectColors(Model model, String pcommonId){
		List<Color> colors = cartService.getColors(pcommonId);
		model.addAttribute("colors", colors);
		return "product/colors";
	}
	
	//장바구니에 데이터 삽입 
	//상품상세페이지에서 장바구니로 데이터 넘기기
	@PostMapping("/cart")
	public String insertCart(Product product, Principal principal, Cart cart, Model model) {
		//장바구니에 상품 담기
		String mid = principal.getName();
		String pStockId = product.getProductStock().getId();
		cart.setMemberId(mid);
		cart.setProductStockId(pStockId);
		cart.setQuantity(cart.getQuantity());
		int cartItems = cartService.insertCart(cart);
		model.addAttribute("cartItems", cartItems);
		
		//상품상세페이지에서 장바구니로 데이터 넘기기
		//장바구니 리스트 받아오기
		List<com.mycompany.webapp.dto.Product> cartProducts = cartService.getList(mid);
		model.addAttribute("product",cartProducts);
		
		return "cart/cartList";
	}
}