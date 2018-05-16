package com.TeamERoom.member.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberVO {

	private String id;
	private String email;
	private int status;
	private String name;
	private String phone;
	private String password;
	private String salt;
	private String bizName;
	private String bizNumber;
	private String img;
	private MultipartFile profile;
	
	
}
