package com.mycompany.webapp.vo;

import lombok.Data;

@Data
public class OrderItem {
	private String productStockId;
	private String OrdersId;
	private int count;
	private int totalPrice;
}
