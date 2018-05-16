package com.TeamERoom.board.web;

import org.springframework.stereotype.Controller;

import com.TeamERoom.board.service.BoardService;

@Controller
public class BoardController {
	
	private BoardService boardService;

	public void setBoardService(BoardService boardService) {
		this.boardService = boardService;
	}
	
	

}
