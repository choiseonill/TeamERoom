package com.TeamERoom.member.dao;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.TeamERoom.member.vo.TestVO;

public class TestDaoImpl extends SqlSessionDaoSupport implements TestDao{

	@Override
	public int testDB(TestVO testVO) {
		getSqlSession().insert("TestDao.testDB", testVO);
		return 0;
	}
	
	
	
	

}
