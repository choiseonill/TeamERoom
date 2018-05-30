package com.TeamERoom.board.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.TeamERoom.board.vo.BoardVO;
import com.TeamERoom.member.vo.MemberVO;

public class BoardDaoForOracle extends SqlSessionDaoSupport implements BoardDao {

	@Override
	public int insertBoard(BoardVO boardVO) {
		return getSqlSession().insert("BoardDao.insertBoard", boardVO);
	}
	
	@Override
	public List<BoardVO> selectAll() {
		return getSqlSession().selectList("BoardDao.selectAll");
	}
}
