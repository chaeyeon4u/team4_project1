package com.mycompany.webapp.validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.mycompany.webapp.vo.Orders;

public class OrderFormValidator implements Validator{
	private static final Logger logger = LoggerFactory.getLogger(OrderFormValidator.class);

	@Override
	public boolean supports(Class<?> clazz) {
		boolean checkDto = Orders.class.isAssignableFrom(clazz);
		return checkDto;
	}

	@Override
	public void validate(Object target, Errors errors) {
		Orders order = (Orders) target;
		
		//phone Validation
		String phone = order.getPhone();
		logger.info(phone);
		if(phone == null || phone.trim().equals("")) {
			errors.rejectValue("tel", "errors.tel.required");
		}else {
			String regex = "\\d{10,11}"
					+ "$";
			Pattern pattern = Pattern.compile(regex);
			Matcher matcher = pattern.matcher(phone);
			if(!matcher.matches()) {
				errors.rejectValue("tel", "errors.tel.invalid");
			}
		}
		
		//zipcode
		String zipcode = order.getZipcode();
		logger.info(zipcode);
		if(zipcode == null || zipcode.trim().equals("")) {
			errors.rejectValue("zipcode", "errors.zipcode.required");
		}else {
			String regex = "\\d{5,6}|\\d{2,3}-\\d{2,3}$";
			Pattern pattern = Pattern.compile(regex);
			Matcher matcher = pattern.matcher(zipcode);
			if(!matcher.matches()) {
				errors.rejectValue("zipcode", "errors.zipcode.invalid");
			}
		}
		//address
		String address = order.getAddress();
		logger.info(address);
		if(address == null || address.trim().equals("")) {
			errors.rejectValue("address", "errors.address.required");
		}
		
		//receiver
		String receiver = order.getReceiver();
		logger.info(receiver);
		if(receiver == null || receiver.trim().equals("")) {
			errors.rejectValue("receiver", "errors.receiver.required");
		}else {
			String regex = "^[ㄱ-ㅎ가-힣]{2,5}|[a-zA-Z]{2,10}\\s[a-zA-Z]{2,10}$";
			Pattern pattern = Pattern.compile(regex);
			Matcher matcher = pattern.matcher(receiver);
			if(!matcher.matches()) {
				errors.rejectValue("receiver", "errors.receiver.invalid");
			}
		}
	}


}
