package com.TeamERoom.test.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TestController {
	
	@RequestMapping("/main")
	public String testmainPage() {
		return "/main";
	}
	
	@RequestMapping("/roomComments")
	public String testroomCommentsPage() {
		return "/roomComments";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String testloginPage() {
		return "member/login";
	}
	
	@RequestMapping(value = "/singup", method = RequestMethod.POST)
	public String testsingupPage() {
		return "member/singup";
	}
	
	@RequestMapping("/test")
	public String testtestPage() {
		return "/test";
	
	}
	
	@RequestMapping("/reservation")
	public String testreservationPage() {
		return "board/reservation";
	
	}
	
	@RequestMapping("/like")
	public String like() {
		return "member/like";
	
	}
	
	@RequestMapping("/notice")
	public String notice() {
		return "board/notice";
	
	}
	
	@RequestMapping("/event")
	public String event() {
		return "board/event";
	
	}
	
	@RequestMapping("/onetoone")
	public String onetoone() {
		return "board/onetoone";
	
	}
	
	@RequestMapping("/roomRegist")
	public String ttt() {
		return "room/roomRegist";
	
	}
	

	
	
}
