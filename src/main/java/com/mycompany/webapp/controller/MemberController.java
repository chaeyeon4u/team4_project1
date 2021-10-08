package com.mycompany.webapp.controller;

import java.security.Principal;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dto.OrderX;
import com.mycompany.webapp.service.OrderXService;
import com.mycompany.webapp.vo.OrderItem;

@Controller
@RequestMapping("/member")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@RequestMapping("/loginform")
	public String loginForm() {
		logger.info("실행");
		return "member/loginForm";
	}
	
	// 마이 페이지 & 주문 취소 
	@Resource
	private OrderXService orderXService;
	
	@RequestMapping("/orderlist")
	public String orderList(Model model, Principal principal, OrderItem orderItem) {
		String mid = principal.getName();
		List<OrderX> orderProduct=orderXService.selectProductByOrderX(mid);
		
		model.addAttribute("bytime", orderItem.getOrderByTime());
		model.addAttribute("orderProduct",orderProduct);
		logger.info("실행");
		logger.info("orderProduct" + orderProduct);
		for( OrderX a : orderProduct ) {
			logger.info("-------------------------------");
			logger.info(a.getOrderItem().getOrderByTime()+"");
		}
		return "member/orderList";
	}
	
	
}  
