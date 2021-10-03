package com.mycompany.webapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/order")
public class OrderController {
	private static final Logger logger = LoggerFactory.getLogger(OrderController.class);
	
	@RequestMapping("/orderform")
	public String orderForm() {
		logger.info("실행");
		return "order/orderForm";
	}

	
	@RequestMapping("/ordercomplete")
	public String orderComplete() {
		logger.info("실행");
		return "order/orderComplete";
	}
}
