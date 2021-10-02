package com.mycompany.webapp.vo;


import java.util.Date;

import lombok.Data;

@Data
public class Orders {
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
	private String paymentInfo;
	private String status;
	private String deliveryStatus;
	private String memberId;
	private String paymentMethodCode;
}