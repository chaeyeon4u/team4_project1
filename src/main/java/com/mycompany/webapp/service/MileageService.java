package com.mycompany.webapp.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.MileageDao;
import com.mycompany.webapp.vo.Mileage;

@Service
public class MileageService {
	@Resource private MileageDao mileageDao;
	
	public int useMileage(Mileage mileage) {
		return mileageDao.insertMileage(mileage);
	}
}
