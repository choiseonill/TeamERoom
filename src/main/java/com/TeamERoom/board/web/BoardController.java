package com.TeamERoom.board.web;

<<<<<<< HEAD
import java.util.HashMap;
import java.util.Map;
=======
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.UUID;
>>>>>>> origin/진항

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
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
<<<<<<< HEAD
import com.TeamERoom.member.vo.MemberVO;

import io.github.seccoding.web.pager.explorer.PageExplorer;
import jdk.nashorn.internal.ir.RuntimeNode.Request;
=======
import com.TeamERoom.util.DownloadUtil;

>>>>>>> origin/진항

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
<<<<<<< HEAD
		
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
		
		@RequestMapping(value="/api/incrementVC/{id}", method = RequestMethod.GET)
		@ResponseBody
		public int incrementViewCount(@PathVariable int id, HttpSession session) {
			
			 System.out.println("id 들어왔니 : "+id);
			 boardService.incrementVC(id);
			 BoardVO board = boardService.selectOne(id);
			 int viewCount = board.getViewCount(); 
			 System.out.println("view Count" + viewCount);
			return viewCount;
		}
}
=======
	
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
>>>>>>> origin/진항
