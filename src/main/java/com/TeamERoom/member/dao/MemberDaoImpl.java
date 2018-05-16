package com.TeamERoom.member.dao;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.TeamERoom.member.vo.MemberVO;

public class MemberDaoImpl extends SqlSessionDaoSupport implements MemberDao{

	@Override
	public int testDB(MemberVO testVO) {
		getSqlSession().insert("TestDao.testDB", testVO);
		return 0;
	}
	
	
	
	

}
