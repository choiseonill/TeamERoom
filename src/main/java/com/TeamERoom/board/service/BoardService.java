package com.TeamERoom.board.service;

import java.util.List;

import com.TeamERoom.board.vo.BoardVO;

public interface BoardService {

	public boolean writeBoard(BoardVO BoardVO);
	
	public List<BoardVO> getAll();
	
}
