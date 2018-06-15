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
	public List<BoardVO> selectAll(BoardSearchVO boardSearchVO) {
		
		return getSqlSession().selectList("BoardDao.selectAll", boardSearchVO);
	}
<<<<<<< HEAD

	@Override
	public int selectCountAll(BoardSearchVO boardSearchVO) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("BoardDao.selectCountAll", boardSearchVO);
	}

	@Override
	public BoardVO selectOne(int id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("BoardDao.selectOne", id);
	}

	@Override
	public int deleteBoard(int id) {
		// TODO Auto-generated method stub
		return getSqlSession().delete("BoardDao.deleteBoard", id);
	}

	@Override
	public int incrementViewCount(int id) {
		// TODO Auto-generated method stub
		System.out.println("여기까지옴!! ");
		return getSqlSession().update("BoardDao.incrementViewCount", id);
	}


=======
>>>>>>> origin/진항
}
