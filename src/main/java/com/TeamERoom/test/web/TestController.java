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
	
	@RequestMapping("/roomdetail")
	public String testroomdetailPage() {
		return "room/roomdetail";
	
	}
	
	@RequestMapping("/roomComments")
	public String testroomCommentsPage() {
		return "board/roomComments";
	
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
	
	
	@RequestMapping("/ss")
	public String userR() {
		return "admin/AdminReservationManagement";
	
	}
	

	
	
}
