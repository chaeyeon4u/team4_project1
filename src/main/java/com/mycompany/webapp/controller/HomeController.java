package com.mycompany.webapp.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycompany.webapp.service.HomeService;
import com.mycompany.webapp.vo.Pager;
import com.mycompany.webapp.vo.join.CategoryDepthDto;
import com.mycompany.webapp.vo.join.Product;

@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping("/")
	public String content() {
		logger.info("실행");
		return "home";
	}
	
	@RequestMapping("/error/403")
	public String error403() {
		logger.info("실행");
		return "error/403";
	}
	
	@Resource
	private HomeService homeService;
	
	@RequestMapping("/search/{depth1}/{depth2}/{depth3}")
	public String searchByCategory(Model model, @PathVariable String depth1, @PathVariable String depth2, @PathVariable String depth3,@RequestParam(defaultValue = "1") int pageNo) {
		
		CategoryDepthDto categoryDepthDto = new CategoryDepthDto();
		categoryDepthDto.setDepth1(depth1);
		categoryDepthDto.setDepth2(depth2);
		categoryDepthDto.setDepth3(depth3);
		//페이징 처리를 위해 조건에 맞는 상품전체 개수 조회
		int totalProduct = homeService.getTotalProductNum(categoryDepthDto);
		Pager pager = new Pager(12,5,totalProduct, pageNo);
		categoryDepthDto.setPager(pager);
		List<Product> products = homeService.getProductsByCategory(categoryDepthDto); 
		model.addAttribute("pager",pager);
		model.addAttribute("products", products);
		String str = depth1+"/"+depth2+"/"+depth3;
		model.addAttribute("str",str);
		return "home";
	}
	@RequestMapping("/search/{depth1}/{depth2}")
	public String searchByCategory(Model model, @PathVariable String depth1, @PathVariable String depth2,@RequestParam(defaultValue = "1") int pageNo) {
		CategoryDepthDto categoryDepthDto = new CategoryDepthDto();
		categoryDepthDto.setDepth1(depth1);
		categoryDepthDto.setDepth2(depth2);
		int totalProduct = homeService.getTotalProductNum(categoryDepthDto);
		Pager pager = new Pager(12,5,totalProduct, pageNo);
		categoryDepthDto.setPager(pager);
		List<Product> products = homeService.getProductsByCategory(categoryDepthDto); 
		model.addAttribute("pager",pager);
		model.addAttribute("products", products);
		String str = depth1+"/"+depth2;
		model.addAttribute("str",str);
		return "home";
	}
	@RequestMapping("/search/{depth1}")
	public String searchByCategory(Model model, @PathVariable String depth1,@RequestParam(defaultValue = "1") int pageNo) {
		CategoryDepthDto categoryDepthDto = new CategoryDepthDto();
		categoryDepthDto.setDepth1(depth1);
		int totalProduct = homeService.getTotalProductNum(categoryDepthDto);
		Pager pager = new Pager(12,5,totalProduct, pageNo);
		categoryDepthDto.setPager(pager);
		List<Product> products = homeService.getProductsByCategory(categoryDepthDto); 
		model.addAttribute("pager",pager);
		model.addAttribute("products", products);
		String str = depth1;
		model.addAttribute("str",str);
		return "home";
	}

}