package com.mycompany.webapp.controller;

import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycompany.webapp.dto.CartProduct;
import com.mycompany.webapp.dto.OrderComplete;
import com.mycompany.webapp.service.MemberService;
import com.mycompany.webapp.service.OrderCompleteService;
import com.mycompany.webapp.service.PaymentService;
import com.mycompany.webapp.vo.Member;
import com.mycompany.webapp.vo.Mileage;
import com.mycompany.webapp.vo.Orders;
import com.mycompany.webapp.vo.PaymentMethod;

@Controller
@RequestMapping("/order")
public class OrderController {
	private static final Logger logger = LoggerFactory.getLogger(OrderController.class);

	@Resource MemberService memberService;

	@RequestMapping("/orderform")
	public String orderForm(Model model, Principal principal, String orderContent) {
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
		JSONObject jsonObject = new JSONObject(orderContent);
		JSONArray products = jsonObject.getJSONArray("products");
		for(int i=0; i<products.length(); i++) {
			JSONObject product = products.getJSONObject(i);
			CartProduct cartProduct = new CartProduct();
			cartProduct.setPcolorId(product.getString("pcolorId"));
			cartProduct.setBrandName(product.getString("brandName"));
			cartProduct.setProductName(product.getString("productName"));
			cartProduct.setColorCode(product.getString("colorCode"));
			cartProduct.setSizeCode(product.getString("sizeCode"));
			cartProduct.setImg(product.getString("img"));
			cartProduct.setQuantity(product.getInt("quantity"));
			cartProduct.setAppliedPrice(product.getInt("appliedPrice"));
			cartProducts.add(cartProduct);
		}
		
		int totalPrice =jsonObject.getInt("totalPrice");
		
		model.addAttribute("member", member);
		model.addAttribute("mileageSum", mileageSum);
		model.addAttribute("cartProducts", cartProducts);
		model.addAttribute("totalPrice", totalPrice);
		model.addAttribute("orderContent", orderContent);
		/*orderService.orderDeliveryPaymentInfo(null);*/
		return "order/orderForm";
	}

	@RequestMapping("/addressPopup")
	public String addressPopup() {
		return "popup/jusoPopup";
	}

	@Resource private OrderCompleteService orderCompleteService;
	
	@RequestMapping("/ordercomplete")
	public String orderComplete(Model model, Principal principal, Orders order, String orderContent) {
		
		Date today = new Date();
		SimpleDateFormat orderIdDateformat = new SimpleDateFormat("yyyyMMddHHmmss");
		orderIdDateformat.format(today);
		order.setId(orderIdDateformat.format(today)+principal.getName());

		//orderid 생성하는 부분
		int result = orderCompleteService.orderProducts(order);

		
		JSONObject jsonObject = new JSONObject(orderContent);
		JSONArray products = jsonObject.getJSONArray("products");
		for(int i=0; i<products.length(); i++) {
			JSONObject product = products.getJSONObject(i);
			System.out.println(product.getString("pcolorId"));
			System.out.println(product.getString("brandName"));
			System.out.println(product.getString("productName"));
			System.out.println(product.getString("colorCode"));
			System.out.println(product.getString("sizeCode"));
			System.out.println(product.getString("img"));
			System.out.println(product.getInt("quantity"));
			System.out.println(product.getInt("appliedPrice"));
		}
		
		
		/*
		
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
		*/
		
		//주문 오류시 오류창으로 가게끔 하는 부분 필요
		return "order/orderComplete";
	}
	
	@Resource
	private PaymentService paymentService;
	
	@GetMapping(value="/paymentlist", produces="application/json; charset=UTF-8")
	@ResponseBody
	public List<PaymentMethod> getCompanyList(String method) {
		List<PaymentMethod> methodList = null;
		if(method.equals("카드")) {
			methodList = paymentService.getCardCompanyList();
		}else if(method.equals("계좌")) {
			methodList = paymentService.getAccountCompanyList();
		}
	return methodList;
	}
	
}
