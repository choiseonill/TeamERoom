package com.TeamERoom.test.web;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.TeamERoom.board.service.BoardService;
import com.TeamERoom.board.vo.BoardVO;


@Controller
public class TestController {
	
	private BoardService boardService;

	public void setBoardService(BoardService boardService) {
		this.boardService = boardService;
	}
	
	
	
<<<<<<< HEAD
	@RequestMapping("/roomComments")
	public String testroomCommentsPage() {
		return "/roomComments";
=======
	@RequestMapping("/roomdetail")
	public String testroomdetailPage() {
		return "room/roomdetail";
	
	}
	
	@RequestMapping("/roomComments")
	public String testroomCommentsPage() {
		return "board/roomComments";
	
>>>>>>> origin/mkmk
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
	
	
	@RequestMapping("/registRoom")
	public String testRegistRoomPage() {
		return "room/registRoom";
	
	}
	
	@RequestMapping("/like")
<<<<<<< HEAD
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
=======
	public String testLikePage() {
		return "member/like";
		
	}
>>>>>>> origin/mkmk
	
	@RequestMapping("/review")
	public String testReviewPage() {
		return "member/review";
		
	}
	
	@RequestMapping("/roomdetailregist")
	public String rdr() {
		return "room/roomdetailregist";
	
	}
	
	@RequestMapping("/roomdetailregist1")
	public String rdrr() {
		return "room/roomdetailregist1";
	
	}
	
	@RequestMapping("/roomdetailregist2")
	public String rdrrr() {
		return "room/roomdetailregist2";
	}
	
	
}
