package com.TeamERoom.book.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.TeamERoom.book.service.BookService;
import com.TeamERoom.book.vo.BookingVO;

import lombok.Setter;

@Controller
public class BookController {

	@Setter
	BookService bookService;
	
	@RequestMapping(value="/book", method = RequestMethod.POST)
	public ModelAndView booking(@ModelAttribute("bookingForm") BookingVO bookingVO ) {
		ModelAndView view = new ModelAndView();
		
		System.out.println(bookingVO.getBookDate());
		view.setViewName("redirect:/main");
		
		return view;
		
	}
	
	
	
	
	
}
