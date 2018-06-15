package com.TeamERoom.board.dao;

import java.util.List;

import com.TeamERoom.board.vo.BoardSearchVO;
import com.TeamERoom.board.vo.BoardVO;

public interface BoardDao {
	
	public int insertBoard(BoardVO boardVO);
	
	public int deleteBoard(int id);
	
	public BoardVO selectOne(int id);
	
	public List<BoardVO> selectAll(BoardSearchVO boardSearchVO);
	
	public int selectCountAll(BoardSearchVO boardSearchVO);
	
	public int incrementViewCount(int id);
}
