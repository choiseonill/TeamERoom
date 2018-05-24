package com.TeamERoom.book.service;

import com.TeamERoom.book.dao.BookDao;

import lombok.Setter;

public class BookServiceImpl implements BookService{

	@Setter
	private BookDao bookDao;
	
	이용관
	@Override
	public boolean testService() {
		// TODO Auto-generated method stub
		return false;
	}
	
}
