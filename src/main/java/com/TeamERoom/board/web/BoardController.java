package com.TeamERoom.board.web;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.TeamERoom.board.service.BoardService;
import com.TeamERoom.board.vo.BoardVO;

@Controller
public class BoardController {
	
	private BoardService boardService;

	public void setBoardService(BoardService boardService) {
		this.boardService = boardService;
	}
	
	@RequestMapping(value = "/board/boardWrite", method = RequestMethod.GET)
	public String viewWritePage() {
		return "/board/boardWrite"; 
	}
	
	@RequestMapping(value = "/board/boardWrite", method = RequestMethod.POST)
	public ModelAndView doWrite(@ModelAttribute("writeForm") 
								 @Valid BoardVO boardVO) {
			
		boolean isSuccess = boardService.writeBoard(boardVO);
		if ( isSuccess ) {
			return new ModelAndView("redirect:/main");
		}
		return new ModelAndView("redirect:/board/boardWrite");
	}
	

}
