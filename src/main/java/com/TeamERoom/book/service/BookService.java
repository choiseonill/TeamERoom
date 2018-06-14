package com.TeamERoom.book.service;


import com.TeamERoom.book.vo.BookingVO;

public interface BookService {
	public boolean testService();
	
	public boolean createBooking(BookingVO bookingVO);
}
