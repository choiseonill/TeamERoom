package com.TeamERoom.book.dao;

import java.util.List;

import com.TeamERoom.book.vo.BookingOptionVO;
import com.TeamERoom.book.vo.BookingVO;
import com.TeamERoom.room.vo.RoomVO;

public interface BookDao {
	
	//퀵드로우 메뉴에서 전화걸기 눌렀을때 가져와야 할 정보들 SELECT
	public int selectHostPhoneInfo(int mId);
	
	//퀵드로우 메뉴에서 예약하기 눌렀을때 하는 INSERT 부분
	public List<BookingVO> booking(BookingVO bookingVO);
	public List<BookingOptionVO> bookingOption(BookingOptionVO bookingOptionVO);
	
	
	
}
