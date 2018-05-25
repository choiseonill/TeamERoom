package com.TeamERoom.room.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class RoomVO {
	private int id;
	private int mId;
	private String roomTitle;
	private String intro;
	private String info;
	private int roomStartTime;
	private int roomEndTime;
	private String url;
	private int roomStatus;
	// 0~6으로 해서 0은 일요일 6은 토요일
	private int holiday;
	private String roomEmail;
	private String roomPhone;
	private String address;
	private String bank;
	private String depositor;
	private String accountNumber;
	private String roomImage;

	// private int category;
}
