package com.mycompany.webapp.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycompany.webapp.dto.Color;
import com.mycompany.webapp.dto.Size;
import com.mycompany.webapp.service.ProductService;
import com.mycompany.webapp.vo.Pager;
import com.mycompany.webapp.vo.join.CategoryDepthDto;
import com.mycompany.webapp.vo.join.Product;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Resource
	private ProductService productService;
	
	@RequestMapping("/{depth1}/{depth2}/{depth3}")
	public String searchByCategory(Model model, @PathVariable String depth1, @PathVariable String depth2, @PathVariable String depth3,@RequestParam(defaultValue = "1") int pageNo) {
		
		CategoryDepthDto categoryDepthDto = new CategoryDepthDto();
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
		CategoryDepthDto categoryDepthDto = new CategoryDepthDto();
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
		CategoryDepthDto categoryDepthDto = new CategoryDepthDto();
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
	@RequestMapping("/detail")
	public String detail() {
		return "product/productDetail";
	}
	
	@RequestMapping("/{depth1}/{depth2}/{depth3}/**/{pcolorId}")
	public String detail(@PathVariable String pcolorId, Model model) {
		Product product = productService.getProductDetail(pcolorId);
		model.addAttribute("product", product);
		List<Color> colors = productService.getColors(pcolorId);
		model.addAttribute("colors", colors);
		List<Size> sizes = productService.getSizes(pcolorId);
		model.addAttribute("sizes", sizes);
		return "product/productDetail";
	}
}
