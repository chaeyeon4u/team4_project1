package com.mycompany.webapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@RequestMapping("/loginform")
	public String loginForm() {
		logger.info("실행");
		return "member/loginForm";
	}
	
	@RequestMapping("/orderlist")
	public String orderList() {
		logger.info("실행");
		return "member/orderList";
	}
	
}  
