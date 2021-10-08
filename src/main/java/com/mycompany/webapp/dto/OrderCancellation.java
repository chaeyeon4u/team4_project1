package com.mycompany.webapp.dto;

import com.mycompany.webapp.vo.Brand;
import com.mycompany.webapp.vo.Mileage;
import com.mycompany.webapp.vo.OrderItem;
import com.mycompany.webapp.vo.Orders;
import com.mycompany.webapp.vo.ProductColor;
import com.mycompany.webapp.vo.ProductCommon;
import com.mycompany.webapp.vo.ProductStock;

import lombok.Data;

@Data
public class OrderCancellation {
	private Orders orders;
	private OrderItem orderItem;
	private ProductCommon productCommon;
	private ProductColor productColor;
	private ProductStock productStock;
	private Brand brand;
	private Mileage mileage;
}
