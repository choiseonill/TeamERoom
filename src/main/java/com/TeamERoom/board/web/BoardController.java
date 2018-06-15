package com.TeamERoom.board.web;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.TeamERoom.board.service.BoardService;
import com.TeamERoom.board.vo.BoardVO;
import com.TeamERoom.util.DownloadUtil;


@Controller
public class BoardController {
	
	private BoardService boardService;

	public void setBoardService(BoardService boardService) {
		this.boardService = boardService;
	}
	
	@RequestMapping(value = "/board/write", method = RequestMethod.GET)
	public String viewWritePage() {
		return "/board/write"; 
	}
	
	@RequestMapping(value = "/board/write", method = RequestMethod.POST)
	public ModelAndView doWrite(@ModelAttribute("writeForm") 
								 @Valid BoardVO boardVO,
								 Errors errors) {
			
		ModelAndView view = new ModelAndView();
		if( errors.hasErrors() ) {
			view.setViewName("/board/write");
			view.addObject("BoardVO", boardVO);
			return view;
		}
		boardVO.save();
		
		boolean isSuccess = boardService.writeBoard(boardVO);
		if ( isSuccess ) {
			return new ModelAndView("redirect:/boarder");
		}
		return new ModelAndView("redirect:/board/boardWrite");
	}
	
	@RequestMapping("/boarder")
	public ModelAndView viewListPage(BoardVO boardVO, 
									  HttpServletRequest request,
									  HttpServletResponse response,
									  HttpSession session) {
	   ModelAndView view = new ModelAndView();
	   List<BoardVO> boardList = boardService.getAll();
//	   for ( BoardVO board : boardList ) {
//		  String filename = board.getFileName();
//	   }
	   
//	   for ( BoardVO board : boardList ) {
//		   if ( board.getFileName().length() > 0 ) {
//			   String filename = board.getFileName(); 
//		       DownloadUtil download = new DownloadUtil("C:\\Users\\Admin\\Desktop\\팀프로젝트 종합\\boardImage\\" + filename);
//		       try {
//		           download.download(request, response, filename);
//		       } catch (UnsupportedEncodingException e) {
//		          throw new RuntimeException(e.getMessage(), e);
//		       }
//		   }
//	   }
//		 if (session.getAttribute(Member.USER) == null) {
//		 // /WEB-INF/view/community/list.jsp
//		 return new ModelAndView("redirect:/login");
//		 }
		view.setViewName("board/boarder");
		view.addObject("boardList", boardList);
		
		return view;
	
	}

}
