package com.TeamERoom.member.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.TeamERoom.member.service.MemberService;
import com.TeamERoom.member.vo.MemberVO;

import lombok.Setter;

@Controller
public class MemberController {

	@Setter
	private MemberService memberService;


	@RequestMapping("/testdb")
	public String testDB() {
		
		MemberVO testVO = new MemberVO();
		
		testVO.setId("test");
		testVO.setTest("123");
		
		memberService.testDB(testVO);
		
		System.out.println("TEST!!!!");

		return "";
	}

}
