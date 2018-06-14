package com.TeamERoom.book.service;

import java.util.List;

import com.TeamERoom.book.dao.BookDao;
import com.TeamERoom.book.vo.BookingVO;

import lombok.Setter;

public class BookServiceImpl implements BookService{

	@Setter
	private BookDao bookDao;
	
	
	@Override
	public boolean testService() {
		// TODO Auto-generated method stub
		return false;
	}


	@Override
	public boolean createBooking(BookingVO bookingVO) {
		return bookDao.insertBookVO(bookingVO)>0;
	}


	
}
