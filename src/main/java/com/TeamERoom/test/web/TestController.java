package com.TeamERoom.test.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TestController {
	
	@RequestMapping("/main")
	public String testmainPage() {
		
		
		
		return "test/main";
	}
	
	@RequestMapping("/roomdetail")
	public String testroomdetailPage() {
		return "test/roomdetail";
	
	}
	
	@RequestMapping("/roomComments")
	public String testroomCommentsPage() {
		return "test/roomComments";
	
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String testloginPage() {
		return "test/login";
	
	}
	
	@RequestMapping("/singup")
	public String testsingupPage() {
		return "test/singup";
	
	}
	
	@RequestMapping("/test")
	public String testtestPage() {
		return "test/test";
	
	}
	
	@RequestMapping("/reservation")
	public String testreservationPage() {
		return "test/reservation";
	
	}
}
