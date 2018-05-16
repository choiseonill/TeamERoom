package com.TeamERoom.member.service;

import com.TeamERoom.member.dao.MemberDao;
import com.TeamERoom.member.vo.MemberVO;

import lombok.Setter;

public class MemberServiceImpl implements MemberService {

	@Setter
	private MemberDao memberDao;

	
	

	@Override
	public MemberVO doLogin(MemberVO member) {

		return memberDao.doLogin(member);
		
	}


	

}
