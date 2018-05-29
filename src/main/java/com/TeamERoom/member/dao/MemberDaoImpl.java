package com.TeamERoom.member.dao;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.TeamERoom.member.vo.MemberVO;

public class MemberDaoImpl extends SqlSessionDaoSupport implements MemberDao {

	@Override
	public int insertMember(MemberVO memberVO) {
		return getSqlSession().insert("MemberDao.insertMember", memberVO);
	}

	@Override
	public MemberVO doLogin(MemberVO member) {
		return getSqlSession().selectOne("MemberDao.doLogin", member);
	}

	//회원 가입할때 email check
	@Override
	public int selectCountMemberEmail(String email) {
		return getSqlSession().selectOne("MemberDao.selectCountMemberEmail", email);
	}

	@Override
	public MemberVO selectHostInfo(int id) {
		return getSqlSession().selectOne("MemberDao.selectHostInfo", id);
	}
	
	



}
