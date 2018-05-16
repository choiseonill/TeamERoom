package com.TeamERoom.member.web;


import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.TeamERoom.member.service.MemberService;
import com.TeamERoom.member.vo.MemberVO;

import lombok.Setter;

@Controller
public class MemberController {

	@Setter
	private MemberService memberService;


	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String doLogin(@ModelAttribute MemberVO member, HttpSession session ) {
		
		MemberVO memberVO;
		
		memberVO = memberService.doLogin(member);
		
		if ( memberVO == null ) {
			
			return "redirect:/login";
			
		}
		
		System.out.println(member.getEmail());
		System.out.println(member.getPassword());
		
		
		session.setAttribute("__USER__", memberVO );
		
		
		
		
		return "redirect:/main";
		
		
	}
	
	
	
}
