package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/event")
public class EventController {
	
	@RequestMapping("/detail")
	public String eventDetail() {
		return "event/eventDetail";
	}
}
