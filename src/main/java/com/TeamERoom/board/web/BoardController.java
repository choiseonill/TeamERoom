package com.TeamERoom.board.web;

import java.util.List;

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
		boardVO.save();
		if ( isSuccess ) {
			return new ModelAndView("redirect:/main");
		}
		return new ModelAndView("redirect:/board/boardWrite");
	}
		@RequestMapping("/board/event")
		public ModelAndView viewListPage(HttpSession session) {
		ModelAndView view = new ModelAndView();
	
			// if (session.getAttribute(Member.USER) == null) {
			// // /WEB-INF/view/community/list.jsp
			// return new ModelAndView("redirect:/login");
			// }
			view.setViewName("board/event");
	
			List<BoardVO> boardList = boardService.getAll();
	
			view.addObject("boardList", boardList);
			
			return view;
		
		}
}