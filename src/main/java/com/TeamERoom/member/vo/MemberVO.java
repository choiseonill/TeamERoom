package com.TeamERoom.member.vo;

import java.io.File;
import java.io.IOException;
import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
@Setter
@Getter
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
	
	//DB 저장 할때
	private MultipartFile file;
	
	//write로 입력할때
	private String img;

	
	public void setBizName(String bizName) {
		if (bizName == null) {
			bizName = "";
		}
		this.bizName = bizName;
	}

	

	public void setBizNumber(String bizNumber) {
		if (bizNumber == null) {
			bizNumber = "";
		}
		this.bizNumber = bizNumber;
	}

	public String getImg() {
		if (img == null) {
			img = "";
		}
		return img;
	}

	

	public String profileSave() {
		if (   file != null && !file.isEmpty()       ) {

			img = file.getOriginalFilename();

			File newSImg = new File("C:\\Users\\YongGwan\\Desktop\\TeamERoom\\profile\\" + file.getOriginalFilename());
			
			try {
				file.transferTo(newSImg);
				return newSImg.getAbsolutePath();
			} catch (IllegalStateException e) {
				throw new RuntimeException(e.getMessage(), e);
			} catch (IOException e) {
				throw new RuntimeException(e.getMessage(), e);
			}
			
			
			
		}
		return null;
	}
	
	
	

}
