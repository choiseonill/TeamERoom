package com.TeamERoom.member.dao;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.TeamERoom.member.vo.MemberVO;

public class MemberDaoImpl extends SqlSessionDaoSupport implements MemberDao{
	
	@Override
	public MemberVO doLogin(MemberVO member) {
		return getSqlSession().selectOne("MemberDao.doLogin", member);
	}
	
	
	

}
