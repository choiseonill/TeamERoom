package com.TeamERoom.util;



import java.util.ArrayList;
import java.util.List;

import org.joda.time.DateTime;

public class CalendarUtil {
	
	public static List<Integer> testCalendar() {
		
		List<Integer> calendar = new ArrayList<>();
		
		//오늘
		DateTime dt = new DateTime(2018, 12, 31, 0, 0);
		
		//시작 년 원 일
		int year = dt.getYear();
		int month = dt.getMonthOfYear();
		int day = dt.getDayOfMonth();		
		int lastDay = dt.dayOfMonth().getMaximumValue();
		
		//오늘 기준 +30
		DateTime dtt = dt.plusMonths(1);
		
		//마지막날 월 일
		int afterYear = dtt.getYear();
		int afterMonth = dtt.getMonthOfYear();
		int afterDay = dtt.getDayOfMonth();
		int afterLastDay = dtt.dayOfMonth().getMaximumValue();
		
		calendar.add(year);
		calendar.add(month);
		calendar.add(day);
		calendar.add(lastDay);
		
		calendar.add(afterYear);
		calendar.add(afterMonth);
		calendar.add(afterDay);
		calendar.add(afterLastDay);
		
		for(int i=0; i<calendar.size(); i++) {
			System.out.println(calendar.get(i));
		}
		
		return calendar;
		
	}
	
	public static void main(String[] args) {

		testCalendar();
	
	}
	
	
	
}
