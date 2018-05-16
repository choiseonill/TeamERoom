package com.TeamERoom.member.web;

<<<<<<< HEAD
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
=======

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
>>>>>>> 948448ce2a8169941178de583638b2b70e80d9fd

import com.TeamERoom.member.service.MemberService;
import com.TeamERoom.member.vo.MemberVO;

import lombok.Setter;

@Controller
public class MemberController {

	@Setter
	private MemberService memberService;

<<<<<<< HEAD
	
	@RequestMapping(value="/signUp" , method = RequestMethod.POST)
	public ModelAndView join(@ModelAttribute("registForm") @Valid MemberVO memberVO, Errors errors, 
						HttpServletRequest request, Model model) {
		
		memberVO.profileSave();
		
		if (errors.hasErrors()) {
			return new ModelAndView("member/join");
		}
		
		if (memberService.createMember(memberVO)) {
			return new ModelAndView("test/main");
		}
		
		return new ModelAndView("member/join");
=======

	
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
>>>>>>> 948448ce2a8169941178de583638b2b70e80d9fd
		
		
	}
	
	
	
<<<<<<< HEAD
	
	
=======
>>>>>>> 948448ce2a8169941178de583638b2b70e80d9fd
}
