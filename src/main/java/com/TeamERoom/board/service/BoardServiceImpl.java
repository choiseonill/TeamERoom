package com.TeamERoom.board.service;

import java.util.List;

import com.TeamERoom.board.dao.BoardDao;
import com.TeamERoom.board.vo.BoardVO;


public class BoardServiceImpl implements BoardService {
	private BoardDao boardDao;
	
	public void setBoardDao(BoardDao boardDao) {
		this.boardDao = boardDao;
	}
	

	@Override
	public boolean writeBoard(BoardVO BoardVO) {
		if( boardDao.insertBoard(BoardVO) > 0 ) {
			return true;
		}
		return false;
	}


	@Override
	public List<BoardVO> getAll() {
		// TODO Auto-generated method stub
		return boardDao.selectAll();
	}
	
	


}
