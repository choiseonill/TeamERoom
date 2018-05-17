package com.TeamERoom.member.web;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.TeamERoom.member.service.MemberService;
import com.TeamERoom.member.vo.MemberVO;
import com.TeamERoom.util.DownloadUtil;

import lombok.Setter;

@Controller
public class MemberController {

	@Setter
	private MemberService memberService;

	@RequestMapping(value = "/signUp", method = RequestMethod.POST)
	public ModelAndView join(@ModelAttribute("registForm") @Valid MemberVO memberVO, Errors errors,
			HttpServletRequest request, Model model) {

		memberVO.profileSave();
		System.out.println(memberVO.getEmail() + "~~~!!!");

		if (errors.hasErrors()) {
			return new ModelAndView("member/join");
		}

		if (memberService.createMember(memberVO)) {
			return new ModelAndView("redirect:/main");
		}

		return new ModelAndView("redirect:/main");
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String doLogin(@ModelAttribute MemberVO member, HttpSession session) {

		MemberVO memberVO = memberService.doLogin(member);

		if (memberVO == null) {
			return "redirect:/login";
		}

		session.setAttribute("__USER__", memberVO);
		return "test/main";

	}

	@RequestMapping("/getPic/{id}")
	public void download(@PathVariable int id, HttpServletRequest request, HttpServletResponse response,
			HttpSession session) {

		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@" + id);
		
		
		MemberVO member = (MemberVO) session.getAttribute("__USER__");
		String pImage = member.getImg();

		System.out.println(pImage);

		DownloadUtil download = new DownloadUtil("C:\\Users\\YongGwan\\Desktop\\TeamERoom\\profile\\" + pImage);

		try {
			download.download(request, response, pImage);
		} catch (UnsupportedEncodingException e) {
			throw new RuntimeException(e.getMessage(), e);
		}

	}

}
