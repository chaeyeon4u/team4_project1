package com.mycompany.webapp.controller;

import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.service.EventService;
import com.mycompany.webapp.vo.Event;
import com.mycompany.webapp.vo.EventResult;

@Controller
@RequestMapping("/event")
public class EventController {
	
	//static int count = 0;
	
	private static final Logger logger = LoggerFactory.getLogger(EventController.class);
	
	@Resource private EventService eventService;
	private ExecutorService executorsService = Executors.newFixedThreadPool(1);
	
	@RequestMapping("/detail/{eventNo}")
	public String eventDetail(Model model, @PathVariable int eventNo) {
		Event event = eventService.SearchEventInfo(eventNo);
		Date tempDate = event.getIssueDate();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String issueDate= format.format(tempDate);
		String title = event.getTitle();
		model.addAttribute("issueDate",issueDate);
		model.addAttribute("title",title);
		model.addAttribute("eventNo",eventNo);
		return "event/eventDetail";
	}
	
	@PostMapping("/coupondownload")
	public String couponDownload (Integer eventNo, Principal principal) throws Exception {
		
		Event event = eventService.checkCount(eventNo);
		EventResult eventResult = eventService.checkbeforehistory(eventNo,principal.getName());
		if(eventResult != null) {
			return "event/already";
		}else {
			int currCount = event.getCount();
			int limitCount = event.getLimitCount();

			Callable<Integer> task = new Callable<Integer>() {
				@Override
				public Integer call() throws Exception {
					if(currCount < limitCount) {
						eventService.addWinner(eventNo, principal.getName(),currCount+1);
						return eventService.increaseCount(eventNo);
					} else {
						return 0;
					}
				}
			};
	
			Future<Integer> future = executorsService.submit(task);
	
			// 이벤트 처리가 완료될 때 까지 대기상태가 되게 된다.
			int result = future.get();
				
			if (result == 1) {
				return "event/success";
			} else {
				return "event/fail";
			}
		}
	}
	
	
	
}
