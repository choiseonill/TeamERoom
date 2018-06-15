package com.TeamERoom.board.service;

import java.util.List;

import com.TeamERoom.board.dao.BoardDao;
import com.TeamERoom.board.vo.BoardSearchVO;
import com.TeamERoom.board.vo.BoardVO;

import io.github.seccoding.web.pager.Pager;
import io.github.seccoding.web.pager.PagerFactory;
import io.github.seccoding.web.pager.explorer.ClassicPageExplorer;
import io.github.seccoding.web.pager.explorer.PageExplorer;


public class BoardServiceImpl implements BoardService {
	
	private BoardDao boardDao;
	
	public void setBoardDao(BoardDao boardDao) {
		this.boardDao = boardDao;
	}
	

	@Override
	public boolean writeBoard(BoardVO BoardVO) {
		
		if( BoardVO.getFile() != null && !BoardVO.getFile().isEmpty() ) {
			BoardVO.setFileName(BoardVO.getFile().getOriginalFilename());
		}
		if( boardDao.insertBoard(BoardVO) > 0 ) {
			
			return true;
		}
		return false;
	}


	@Override
	public PageExplorer getAll(BoardSearchVO boardSearchVO) {
		
		Pager pager = PagerFactory.getPager(Pager.ORACLE, boardSearchVO.getPageNo()+"", boardDao.selectCountAll(boardSearchVO));
		
		PageExplorer pageExplorer = pager.makePageExplorer(ClassicPageExplorer.class, boardSearchVO);
		
		pageExplorer.setList(boardDao.selectAll(boardSearchVO));
		
		return pageExplorer;
	}


	@Override
	public BoardVO selectOne(int id) {
		// TODO Auto-generated method stub
		return boardDao.selectOne(id);
	}


	@Override
	public boolean deleteBoard(int id) {
		
		if(boardDao.deleteBoard(id) >0){
			return true;
		}
			return false;
	}

	@Override
	public int incrementVC(int id) {

		return boardDao.incrementViewCount(id);
	}

	
	


}
