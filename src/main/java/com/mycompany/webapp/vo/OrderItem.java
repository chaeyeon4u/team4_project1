package com.mycompany.webapp.vo;

import lombok.Data;

@Data
public class OrderItem {
	private String productStockId;
	private String ordersId;
	private int count;
	private int totalPrice;
}
