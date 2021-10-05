package com.mycompany.webapp.vo.join;

import com.mycompany.webapp.vo.Brand;
import com.mycompany.webapp.vo.Member;
import com.mycompany.webapp.vo.OrderItem;
import com.mycompany.webapp.vo.Orders;
import com.mycompany.webapp.vo.PaymentMethod;
import com.mycompany.webapp.vo.ProductColor;
import com.mycompany.webapp.vo.ProductCommon;
import com.mycompany.webapp.vo.ProductStock;

import lombok.Data;

@Data
public class OrderComplete {
	private Member member;
	private Orders orders;
	private OrderItem orderItem;
	private PaymentMethod paymentMethod;
	private ProductCommon productCommon;
	private ProductColor productColor;
	private ProductStock productStock;
	private Brand brand;
	
}
