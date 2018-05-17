package com.TeamERoom.member.service;

import com.TeamERoom.member.vo.MemberVO;

public interface MemberService {
	
	public boolean createMember(MemberVO memberVO);
	

	
	public MemberVO doLogin(MemberVO member);

}
