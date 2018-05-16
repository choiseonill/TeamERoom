package com.TeamERoom.member.service;

import com.TeamERoom.member.dao.MemberDao;
import com.TeamERoom.member.vo.MemberVO;

public class MemberServiceImpl implements MemberService {

	private MemberDao memberDao;

	
	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}


	@Override
	public int testDB(MemberVO testVO) {
		memberDao.testDB(testVO);
		return 0;
	}

}
