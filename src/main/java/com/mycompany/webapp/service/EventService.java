package com.mycompany.webapp.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.EventDao;
import com.mycompany.webapp.vo.Event;

@Service
public class EventService {
	@Resource private EventDao eventDao;
	
	public Event SearchEventInfo(int eventNo) {
		return eventDao.selectByEventNo(eventNo);
	}
	
	public Event checkCount(int eventNo) {
		return eventDao.selectCount(eventNo);
	}
	
	public int increaseCount(int eventNo) {
		return eventDao.updateCount(eventNo);
	}
	
}
