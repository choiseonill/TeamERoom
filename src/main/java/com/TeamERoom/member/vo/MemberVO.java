package com.TeamERoom.member.vo;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

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
	private String img;
	
	//write로 입력할때
	private MultipartFile profile;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}

	public String getBizName() {
		return bizName;
	}

	public void setBizName(String bizName) {
		if (bizName == null) {
			bizName = "";
		}
		this.bizName = bizName;
	}

	public String getBizNumber() {
		return bizNumber;
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

	public void setImg(String img) {
		this.img = img;
	}
	
	public String profileSave() {
		if (   profile != null && !profile.isEmpty()       ) {

			img = profile.getOriginalFilename();

			File newSImg = new File("C:\\Users\\YongGwan\\Desktop\\TeamERoom\\profile" + profile.getOriginalFilename());
			
			try {
				profile.transferTo(newSImg);
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
