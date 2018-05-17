package com.TeamERoom.member.dao;

import com.TeamERoom.member.vo.MemberVO;

public interface MemberDao {
	
	public int insertMember(MemberVO testVO);

	public MemberVO doLogin(MemberVO member);

	//회원 가입할때 email check
	public int selectCountMemberEmail(String email);
	
}
