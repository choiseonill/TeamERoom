package com.TeamERoom.board.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.TeamERoom.board.service.BoardService;
import com.TeamERoom.board.vo.BoardSearchVO;
import com.TeamERoom.board.vo.BoardVO;
import com.TeamERoom.member.vo.MemberVO;

import io.github.seccoding.web.pager.explorer.PageExplorer;

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
		
		@RequestMapping("/board/reset")
		public String resetInit(HttpSession session) {
			session.removeAttribute("__SEARCH__");
			return "redirect:/board/event";
		}
		@RequestMapping("/board/event")
		public ModelAndView viewListPage(BoardSearchVO boardSearchVO, HttpSession session) {
		
		if ( boardSearchVO.getPageNo() < 0 ) {
			System.out.println("1");
			//Session 에 저장된 SerachVO를 가져옴
				boardSearchVO = (BoardSearchVO) session.getAttribute("__SEARCH__");
				//Session 에 저장된 SerachVO가 없을 경우, PageN = 0으로 초기화
				if ( boardSearchVO == null ) {
					System.out.println("2");
					 boardSearchVO = new BoardSearchVO();
					 boardSearchVO.setPageNo(0);
					}
			}
			session.setAttribute("__SEARCH__", boardSearchVO);
			
			
			ModelAndView view = new ModelAndView();
			
			view.setViewName("board/event");
			
			view.addObject("search", boardSearchVO);
			
			PageExplorer pageExplorer = boardService.getAll(boardSearchVO);
			
			view.addObject("pageExplorer", pageExplorer);
			
			return view;
		}
		@RequestMapping("/board/delete/{id}")
		public String deleteBoard(HttpSession session, @PathVariable int id) {
			
			boardService.deleteBoard(id);
		
			return "redirect:/board/event";
		}
		
		@RequestMapping("/board/increament/{id}")
		public String increamentViewCount(HttpSession session, @PathVariable int id) {
		
			boardService.increamentVC(id);
			
			return "redirect:/board/event";
		}
}