package com.mycompany.webapp.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.EventDao;
import com.mycompany.webapp.vo.Event;

@Service
public class EventService {
	@Resource private EventDao eventDao;
	
	public Event SearchEventInfo(int eventNo) {
		System.out.println("Service:"+eventNo);
		return eventDao.selectByEventNo(eventNo);
	}
}
