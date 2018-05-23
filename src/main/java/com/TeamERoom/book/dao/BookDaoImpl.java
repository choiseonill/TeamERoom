package com.TeamERoom.book.dao;

import org.mybatis.spring.support.SqlSessionDaoSupport;


public class BookDaoImpl extends SqlSessionDaoSupport implements BookDao{

	
	
	@Override
	public int testDao() {
		return 0;
	}

}
