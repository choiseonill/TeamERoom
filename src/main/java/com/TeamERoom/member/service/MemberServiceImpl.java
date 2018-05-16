package com.TeamERoom.member.service;

import com.TeamERoom.member.dao.MemberDao;
import com.TeamERoom.member.vo.MemberVO;

import lombok.Setter;

public class MemberServiceImpl implements MemberService {

	@Setter
	private MemberDao memberDao;

	
	

	@Override
<<<<<<< HEAD
	public boolean createMember(MemberVO memberVO) {
		return memberDao.insertMember(memberVO) >0;
	}

	
	
=======
	public MemberVO doLogin(MemberVO member) {

		return memberDao.doLogin(member);
		
	}


	

>>>>>>> 948448ce2a8169941178de583638b2b70e80d9fd
}
