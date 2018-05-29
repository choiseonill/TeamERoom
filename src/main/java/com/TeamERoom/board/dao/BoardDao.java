package com.TeamERoom.board.dao;

import java.util.List;

import com.TeamERoom.board.vo.BoardVO;

public interface BoardDao {
	
	public int insertBoard(BoardVO boardVO);
	
	public List<BoardVO> selectAll();

}
