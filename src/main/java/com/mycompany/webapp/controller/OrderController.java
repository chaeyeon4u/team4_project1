package com.mycompany.webapp.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dto.CartInputs;
import com.mycompany.webapp.dto.CartProduct;
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

	@PostMapping("/orderform")
	public String orderForm(Model model, Principal principal, @ModelAttribute CartInputs cartInputs,
			Integer totalPrice) {
		// 아이디가 들어가는 변수
		String userId = principal.getName();
		// Mileage 합계를 넣기 위한 변수
		int mileageSum = 0;
		Member member = memberService.memberInfoById(userId);
		List<Mileage> mileages = memberService.memberMileageById(principal.getName());
		for (Mileage mileage : mileages) {
			mileageSum += mileage.getAmount();
		}
		List<CartProduct> cartProducts = new ArrayList<CartProduct>();
		for (int i = 0; i < cartInputs.getPcolorId().size(); i++) {
			CartProduct cartProduct = new CartProduct();
			cartProduct.setPcolorId(cartInputs.getPcolorId().get(i));
			cartProduct.setBrandName(cartInputs.getBrandName().get(i));
			cartProduct.setProductName(cartInputs.getProductName().get(i));
			cartProduct.setColorCode(cartInputs.getColorCode().get(i));
			cartProduct.setSizeCode(cartInputs.getSizeCode().get(i));
			cartProduct.setImg(cartInputs.getImg().get(i));
			cartProduct.setQuantity(cartInputs.getQuantity().get(i));
			cartProduct.setAppliedPrice(cartInputs.getAppliedPrice().get(i));
			cartProducts.add(cartProduct);
		}
		model.addAttribute("member", member);
		model.addAttribute("mileageSum", mileageSum);
		model.addAttribute("cartProducts", cartProducts);
		model.addAttribute("totalPrice", totalPrice);
		/*orderService.orderDeliveryPaymentInfo(null);*/
		return "order/orderForm";
	}

	@RequestMapping("/addressPopup")
	public String addressPopup() {
		return "popup/jusoPopup";
	}

	@Resource private OrderCompleteService orderCompleteService;

	@RequestMapping("/ordercomplete")
	public String orderComplete(Model model, Principal principal, String orderid) {
		String ordersId = "20211003P1234";
		String mid = principal.getName();
		List<OrderComplete> orderProduct = orderCompleteService.selectProductByorderId(mid, ordersId);
		List<OrderComplete> orderpayment = orderCompleteService.selectpaymentByorderId(mid, ordersId);
		List<OrderComplete> orderaddress = orderCompleteService.selectaddressByorderId(mid, ordersId);

		String userId = principal.getName();
		Member member = memberService.memberInfoById(userId);

		model.addAttribute("member", member);
		model.addAttribute("orderProduct", orderProduct);
		model.addAttribute("orderpayment", orderpayment);
		model.addAttribute("orderaddress", orderaddress);
		logger.info("orderAddress:" + orderaddress);
		logger.info("실행");
		return "order/orderComplete";
	}
}
