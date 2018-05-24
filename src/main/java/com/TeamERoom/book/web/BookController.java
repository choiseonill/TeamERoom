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
//
//	@RequestMapping()
//	public ModelAndView BookCalendar() {
//		ModelAndView view = new ModelAndView();
//		return view;
//
//	}
//
//	public static void main(String[] args) {
//		int year = Integer.parseInt("2018");
//		int month = Integer.parseInt("5");
//		int START_DAY_OF_WEEK = 0;
//		int END_DAY = 0;
//		
//		Calendar sDay = Calendar.getInstance();
//		Calendar eDay = Calendar.getInstance();
//		
//		// 월의 경우 0부터 11까지의 값을 가지므로 1을 빼줘야합니다.
//		sDay.set(year, month-1, 1);
//		eDay.set(year, month, 1);
//		
//		// 다음날의 첫날에서 하루를 빼면 현재들의 마지막 날이 됩니다.
//		eDay.add(Calendar.DATE, -1);
//		
//		// 첫 번째 요일이 무슨 요일인지 알아냅니다.
//		START_DAY_OF_WEEK = sDay.get(Calendar.DAY_OF_WEEK);
//		// 지정된 날짜를 얻어옵니다.
//		END_DAY = eDay.get(Calendar.DATE);
//		
//		System.out.println("      "+ year + "년 " + month + "월");
//		System.out.println(" SU MO TU WE TH FR SA ");
//		
//        // 시작일을 위한 공백
//		for(int i=1; i<START_DAY_OF_WEEK; i++){
//			System.out.print("   ");
//		}
//		
//		for(int i=1, n=START_DAY_OF_WEEK; i<=END_DAY; i++, n++){
//			System.out.print((i < 10)? "  "+i : " "+i); // 10 미만일 경우 띄어쓰기
//			if(n%7==0) System.out.println();
//		}
//	
//
//
//		
//		
//
//		// Calendar cal = Calendar.getInstance();
//		// Calendar tt = Calendar.getInstance();
//		//
//		// int year = cal.get(Calendar.YEAR);
//		// int month = cal.get(Calendar.MONTH);
//		// int date = cal.get(Calendar.DATE);
//		// int plus = 30;
//		// cal.set(year, month, date);
//		//
//		// System.out.println(
//		// "오늘" + cal.get(Calendar.YEAR) + " " + (cal.get(Calendar.MONTH) + 1) + " " +
//		// cal.get(Calendar.DATE));
//		//
//		// // 그달의 마지막 날 알려줌
//		// int lastDay = cal.getActualMaximum(Calendar.DATE);
//		// int minusDay = lastDay - date;
//		// plus = plus - minusDay - 1;
//		//
//		// // 다음 달의 대한 정보
//		// tt.set(2018, 0 + 1, 31);
//		//
//		// if (tt.getActualMaximum(Calendar.DATE) >= plus) {
//		// // 오늘 에서 남은 날들의 수를 빼고 남은 날들이 그 다음 달의 날 수 보다 적다면
//		// cal.set(year, month + 1, plus);
//		// System.out.println("IF " + plus);
//		// } else if (tt.getActualMaximum(Calendar.DATE) < plus) {
//		// // plus 가 다음달의 날 수를 초과한다면
//		// // plus 에서 남은 날들을 뺴고 이 날자가 30일 되는 날
//		// plus = plus - tt.getActualMaximum(Calendar.DATE) - 1;
//		// System.out.println("ELSE IF" + plus);
//		//
//		// cal.set(year, month + 2, plus);
//		// }
//		//
//		// System.out.println(
//		// "최종" + cal.get(Calendar.YEAR) + " " + (cal.get(Calendar.MONTH) + 1) + " " +
//		// cal.get(Calendar.DATE));
//
//	}

}
