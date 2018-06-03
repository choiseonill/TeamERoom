package com.TeamERoom.board.service;

import java.util.List;

import com.TeamERoom.board.vo.BoardSearchVO;
import com.TeamERoom.board.vo.BoardVO;

import io.github.seccoding.web.pager.explorer.PageExplorer;

public interface BoardService {

	public boolean writeBoard(BoardVO BoardVO);
	
	public PageExplorer getAll(BoardSearchVO boardSearchVO);
	
	public BoardVO selectOne(int id);
	
	public boolean increamentVC(int id);
	
	public boolean deleteBoard(int id);
	
}
