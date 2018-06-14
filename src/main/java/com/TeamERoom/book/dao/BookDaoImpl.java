package com.TeamERoom.book.dao;

import java.util.List;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import com.TeamERoom.book.vo.BookingOptionVO;
import com.TeamERoom.book.vo.BookingVO;
import com.TeamERoom.room.vo.RoomVO;


public class BookDaoImpl extends SqlSessionDaoSupport implements BookDao{

	
	//퀵드로우 메뉴에서 전화걸기 눌렀을때 가져와야 할 정보들
	@Override
	public int selectHostPhoneInfo(int mId) {
		return 0;
	}
	
	//퀵드로우 메뉴에서 예약하기 눌렀을때 하는 INSERT 부분
	@Override
	public List<BookingVO> booking(BookingVO bookingVO) {
		return null;
	}

	@Override
	public List<BookingOptionVO> bookingOption(BookingOptionVO bookingOptionVO) {
		return null;
	}

	
	
	@Override
	public List<BookingVO> selectBookVO(int id ) {
		return getSqlSession().selectList("BookDao.selectBookVO", id);
	}

	@Override
	public int insertBookVO(BookingVO bookingVO) {
		return getSqlSession().insert("BookDao.insertBookVO", bookingVO);
	}





	
	
	

}
