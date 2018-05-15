package com.TeamERoom.member.service;

import com.TeamERoom.member.dao.TestDao;
import com.TeamERoom.member.vo.TestVO;

public class TestServiceImpl implements TestService {

	private TestDao testDao;

	public void setTestDao(TestDao testDao) {
		this.testDao = testDao;
	}

	@Override
	public int testDB(TestVO testVO) {
		testDao.testDB(testVO);
		return 0;
	}

}
