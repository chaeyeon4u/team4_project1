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

	/*parameter의 clazz가 검증 가능한 값이 들어왔는지 확인*/
	@Override
	public boolean supports(Class<?> clazz) {
		boolean checkDto = Orders.class.isAssignableFrom(clazz);
		return checkDto;
	}

	/*검증가능한 경우 Validation 수행*/
	@Override
	public void validate(Object target, Errors errors) {
		Orders order = (Orders) target;
		
		//phone Validation
		String phone = order.getPhone();
		logger.info(phone);
		if(phone == null || phone.trim().equals("")) {
			errors.rejectValue("tel", "errors.tel.required");
		}else {
			String regex = "^01([0|1|6|7|8|9]?)([0-9]{3,4})([0-9]{4})$";
			Pattern pattern = Pattern.compile(regex);
			Matcher matcher = pattern.matcher(phone);
			if(!matcher.matches()) {
				errors.rejectValue("tel", "errors.tel.invalid");
			}
		}
		
		//zipcode Validation
		//비어있지 않고 5-6자리의 숫자 또는 숫자'-'숫자의 조합
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
		//address Validation
		//비어있을 경우 체크
		String address = order.getAddress();
		logger.info(address);
		if(address == null || address.trim().equals("")) {
			errors.rejectValue("address", "errors.address.required");
		}
		
		//receiver Validation
		//비어있지 않고 한글이름 또는 영어'공백'영어 이름 또는 영어이름
		String receiver = order.getReceiver();
		logger.info(receiver);
		if(receiver == null || receiver.trim().equals("")) {
			errors.rejectValue("receiver", "errors.receiver.required");
		}else {
			String regex = "^[ㄱ-ㅎ가-힣]{2,5}|[a-zA-Z]{2,10}\\s[a-zA-Z]{2,10}|[a-zA-Z]{2,20}$";
			Pattern pattern = Pattern.compile(regex);
			Matcher matcher = pattern.matcher(receiver);
			if(!matcher.matches()) {
				errors.rejectValue("receiver", "errors.receiver.invalid");
			}
		}
	}


}
