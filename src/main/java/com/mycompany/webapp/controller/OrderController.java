package com.mycompany.webapp.controller;

import java.security.Principal;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycompany.webapp.dto.CartProduct;
import com.mycompany.webapp.dto.OrderComplete;
import com.mycompany.webapp.service.CartService;
import com.mycompany.webapp.service.MemberService;
import com.mycompany.webapp.service.MileageService;
import com.mycompany.webapp.service.OrderCompleteService;
import com.mycompany.webapp.service.OrderXService;
import com.mycompany.webapp.service.PaymentService;
import com.mycompany.webapp.vo.Cart;
import com.mycompany.webapp.vo.Member;
import com.mycompany.webapp.vo.Mileage;
import com.mycompany.webapp.vo.OrderItem;
import com.mycompany.webapp.vo.Orders;
import com.mycompany.webapp.vo.PaymentMethod;

@Controller
@RequestMapping("/order")
public class OrderController {
	private static final Logger logger = LoggerFactory.getLogger(OrderController.class);

	@Resource MemberService memberService;
	@Resource OrderXService orderXService;
	@Resource private OrderCompleteService orderCompleteService;
	@Resource CartService cartService;
	@Resource MileageService mileageService;
	
	
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
		
		logger.info("orderContent" + orderContent);
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

	@RequestMapping("/ordercomplete")
	public String orderComplete(Model model, Principal principal, Orders order, String orderContent) {
		
		//orders table 시작-------------------------insert-----------
		//orderid 생성하는 부분 -> orderid = yyyyMMddHHmmss + userid
		Date today = new Date();
		SimpleDateFormat orderIdDateformat = new SimpleDateFormat("yyyyMMddHHmmss");
		String makedOrderId = orderIdDateformat.format(today)+principal.getName();
		order.setId(makedOrderId);
		
		//ordersid table에 주문 데이터를 입력하는 서비스 부분
		int resultOfOrders = orderCompleteService.orderProducts(order);
		
		
		//order item table 시작----------------------insert------------
		JSONObject jsonObject = new JSONObject(orderContent);
		JSONArray products = jsonObject.getJSONArray("products");
		for(int i=0; i<products.length(); i++) {
			JSONObject product = products.getJSONObject(i);
			OrderItem orderItem = new OrderItem();
			orderItem.setOrdersId(makedOrderId);
			orderItem.setOrderByTime(new Date());
			orderItem.setCount(product.getInt("quantity"));
			orderItem.setProductStockId(product.getString("pcolorId")+"_"+product.getString("sizeCode"));
			orderItem.setTotalPrice(product.getInt("appliedPrice"));
			
			//orderitem table에 각 주문상품 데이터를 입력하는 서비스 부분
			int resultOfOrderItem = orderCompleteService.specificOrder(orderItem);
			/*	jsp에서 데이터를 잘 받아오는지 체크하기 위한 부분
				logger.info(product.getString("pcolorId"));
				logger.info(product.getString("brandName"));
				logger.info(product.getString("productName"));
				logger.info(product.getString("colorCode"));
				logger.info(product.getString("img"));
				logger.info(product.getString("quantity"));
				logger.info(product.getString("appliedPrice"));
			 */
			
			
			//cart table 시작----------------------카트에 있는 상품중 주문된 상품 delete------------
			Cart cart = new Cart();
			cart.setMemberId(principal.getName());
			cart.setProductStockId(product.getString("pcolorId")+"_"+product.getString("sizeCode"));
			//실제 cart table에서 DB를 삭제하는 service부분
			int resultOfDeleteCart = cartService.deleteCart(cart);
		}
		
		// Mileage table 시작 ------------------ 마일리지가 차감 insert
		Mileage mileage = new Mileage();
		mileage.setIssueDate(new Date());
		mileage.setMemberId(principal.getName());
		mileage.setAmount(order.getUsedMileage());
		mileage.setCategory("마일리지사용");
		mileage.setContent("상품구매로 마일리지 사용");
        
		Calendar cal = Calendar.getInstance();
        Date date = new Date();
        cal.setTime(date);
        cal.add(Calendar.YEAR, 1);
        mileage.setExpireDate(cal.getTime());
		mileage.setName("마일리지사용");
		mileage.setStatus("0");
		int resultOfMileage = mileageService.useMileage(mileage);
		
		
		
		List<OrderComplete> orderProduct = orderCompleteService.selectProductByorderId(principal.getName(), makedOrderId);
		List<OrderComplete> orderpayment = orderCompleteService.selectpaymentByorderId(principal.getName(), makedOrderId);
		List<OrderComplete> orderaddress = orderCompleteService.selectaddressByorderId(principal.getName(), makedOrderId);

		String userId = principal.getName();
		Member member = memberService.memberInfoById(userId);

		model.addAttribute("member", member);
		model.addAttribute("orderProduct", orderProduct);
		model.addAttribute("orderpayment", orderpayment);
		model.addAttribute("orderaddress", orderaddress);
		model.addAttribute("bfdcprice", order.getBeforeDcPrice());
		model.addAttribute("afdcprice", order.getAfterDcPrice());
		model.addAttribute("mileage", order.getUsedMileage());
		logger.info("orderAddress:" + orderaddress);
		
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
