package com.mycompany.webapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/order")
public class OredrController {
	private static final Logger logger = LoggerFactory.getLogger(OredrController.class);
	
	@RequestMapping("/content")
	public String loginForm() {
		logger.info("실행");
		return "order/content";
	}
}  
