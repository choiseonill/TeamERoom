package com.TeamERoom.book.web;

import java.util.Calendar;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.TeamERoom.book.service.BookService;

import lombok.Setter;


@Controller
public class BookController {

	
	@Setter
	BookService bookService;
	
	
/*	@RequestMapping()
	public ModelAndView BookCalendar() {
		Calendar cal = Calendar.getInstance();
		Today = cal.get(Calendar.)
		
	}
	*/
	
	
	
	
}
