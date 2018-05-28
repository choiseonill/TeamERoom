package com.TeamERoom.room.vo;

import com.TeamERoom.Image.vo.ImageVO;
import com.TeamERoom.member.vo.MemberVO;
import com.TeamERoom.reply.dao.ReplyDao;
import com.TeamERoom.reply.vo.ReplyVO;

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
	
	private DetailRoomVO detailRoomVO;
	private DetailOptionVO detailOptionVO;
	private MemberVO memberVO;
	private LikesVO likesVO;
	private ImageVO imageVO;
	private ReplyVO replyVO;
	private OptionsVO optionsVO;
	private CategoryVO categoryVO;
	
	
	
}
