package com.mycompany.webapp.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.service.EventService;
import com.mycompany.webapp.vo.Event;

@Controller
@RequestMapping("/event")
public class EventController {
	
	@Resource private EventService eventService;
	
	
	@RequestMapping("/detail/{eventNo}")
	public String eventDetail(Model model, @PathVariable int eventNo) {
		Event event = eventService.SearchEventInfo(eventNo);
		System.out.println(event);
		Date tempDate = event.getIssueDate();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String issueDate= format.format(tempDate);
		String title = event.getTitle();
		model.addAttribute("issueDate",issueDate);
		model.addAttribute("title",title);
		return "event/eventDetail";
	}
	
}
