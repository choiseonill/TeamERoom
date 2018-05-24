package com.TeamERoom.book.vo;

import com.TeamERoom.member.vo.MemberVO;
import com.TeamERoom.room.vo.DetailRoomVO;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BookingVO {
	
	private int id;
	private int detailId;
	private int mId;
	private String bookName;
	private String bookPhone;
	private String bookEmail;
	private String bookRequest;
	private String bookDate;
	private int bookStartTime;
	private int bookEndTime;
	private int bookPeople;
	private int bookStatus;
	
	private MemberVO memberVO;
	private BookingOptionVO bookingOptionVO;
	private DetailRoomVO detailRoomVO;
	
}
