package com.TeamERoom.book.web;

import org.springframework.stereotype.Controller;

import com.TeamERoom.book.service.BookService;

import lombok.Setter;

@Controller
public class BookController {

	@Setter
	BookService bookService;
	
	
}
