package com.TeamERoom.member.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.TeamERoom.member.service.TestService;
import com.TeamERoom.member.vo.TestVO;

@Controller
public class TestDBController {

	private TestService testService;

	public void setTestService(TestService testService) {
		this.testService = testService;
	}

	@RequestMapping("/testdb")
	public String testDB() {
		
		TestVO testVO = new TestVO();
		
		testVO.setId("test");
		testVO.setTest("123");
		
		testService.testDB(testVO);
		
		System.out.println("TEST!!!!");

		return "";
	}

}
