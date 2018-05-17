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
	private MultipartFile file;
	
	//write로 입력할때
	private String img;

	
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



	public MultipartFile getFile() {
		return file;
	}



	public void setFile(MultipartFile file) {
		this.file = file;
	}



	public String getBizName() {
		return bizName;
	}



	public String getBizNumber() {
		return bizNumber;
	}



	public void setImg(String img) {
		this.img = img;
	}



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
