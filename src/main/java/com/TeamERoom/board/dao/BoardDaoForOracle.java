package com.TeamERoom.board.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.TeamERoom.board.vo.BoardSearchVO;
import com.TeamERoom.board.vo.BoardVO;

public class BoardDaoForOracle extends SqlSessionDaoSupport implements BoardDao {

	@Override
	public int insertBoard(BoardVO boardVO) {
		return getSqlSession().insert("BoardDao.insertBoard", boardVO);
	}

	@Override
	public List<BoardVO> selectAll(BoardSearchVO boardSerchVO) {
		return getSqlSession().selectList("BoardDao.selectAll", boardSerchVO);
	}

	@Override
	public int selectCountAll(BoardSearchVO boardSerchVO) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("BoardDao.selectCountAll", boardSerchVO);
	}

	@Override
	public BoardVO selectOne(int id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("BoardDao.selectOne", id);
	}


}
