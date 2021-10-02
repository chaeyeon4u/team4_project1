package com.mycompany.webapp.vo;


import java.util.Date;

import lombok.Data;

@Data
public class orders {
	private String id;
	private String zipcode;
	private String address;
	private String receiver;
	private String phone;
	private String tel;
	private String memo;
	private String email;
	private int usedMileage;
	private int beforeDcPrice;
	private int afterDcPrice;
	private String payment_info;
	private String status;
	private String deliveryStatus;
	private String memberId;
	private String paymentMethodCode;
}
