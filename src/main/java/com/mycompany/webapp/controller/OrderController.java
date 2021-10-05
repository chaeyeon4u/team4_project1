package com.mycompany.webapp.controller;

import java.security.Principal;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.service.MemberService;
import com.mycompany.webapp.service.OrderCompleteService;
import com.mycompany.webapp.vo.Member;
import com.mycompany.webapp.vo.Mileage;
import com.mycompany.webapp.vo.join.OrderComplete;

@Controller
@RequestMapping("/order")
public class OrderController {
	private static final Logger logger = LoggerFactory.getLogger(OrderController.class);
	
	@Resource MemberService memberService;
	
	@RequestMapping("/orderform")
	public String orderForm(Model model,Principal principal) {
		//아이디가 들어가는 변수
		String userId = principal.getName();
		//Mileage 합계를 넣기 위한 변수
		int mileageSum = 0;
		Member member = memberService.memberInfoById(userId);
		List<Mileage> mileages = memberService.memberMileageById(principal.getName());
		for(Mileage mileage : mileages) {
			mileageSum += mileage.getAmount();
		}
		model.addAttribute("member",member);
		model.addAttribute("mileageSum",mileageSum);
		/*orderService.orderDeliveryPaymentInfo(null);*/
		return "order/orderForm";
	}

	@RequestMapping("/addressPopup")
	public String addressPopup() {
		return "popup/jusoPopup";
	}	
	
	@Resource
	private OrderCompleteService orderCompleteService;
	
	@RequestMapping("/ordercomplete")
	public String orderComplete(Model model, Principal principal, String orderId) {
		String ordersId = "20211003P1234";
		List<OrderComplete> orderProduct= orderCompleteService.selectProductByorderId(principal.getName(), ordersId);
		List<OrderComplete> orderpayment= orderCompleteService.selectpaymentByorderId(ordersId);
		String userId = principal.getName();
		Member member = memberService.memberInfoById(userId);
		List<OrderComplete> orderaddress= orderCompleteService.selectaddressByorderId(ordersId);
		model.addAttribute("member",member);
		model.addAttribute("orderProduct",orderProduct);
		model.addAttribute("orderpayment",orderpayment);
		model.addAttribute("orderaddress",orderaddress);
		logger.info("실행");
		return "order/orderComplete";
	}
}
