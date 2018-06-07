package com.TeamERoom.room.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import com.TeamERoom.book.dao.BookDao;
import com.TeamERoom.book.vo.BookingVO;
import com.TeamERoom.member.dao.MemberDao;
import com.TeamERoom.member.vo.MemberVO;
import com.TeamERoom.room.dao.RoomDao;
import com.TeamERoom.room.vo.DetailRoomVO;
import com.TeamERoom.room.vo.RoomInfoVO;
import com.TeamERoom.room.vo.RoomVO;
import com.TeamERoom.util.CalendarUtil;

import lombok.Setter;
import oracle.net.aso.e;

@Setter
public class RoomServiceImpl implements RoomService {

	private RoomDao roomDao;
	private MemberDao memberDao;
	private BookDao bookDao;

	@Override
	public Map<String, Object> selectRoom(int id) {

		Map<String, Object> detailMap = new HashMap<>();

		RoomVO room = roomDao.selectRoom(id);
		List<RoomInfoVO> roomInfo = roomDao.selectRoomInfo(id);
		List<DetailRoomVO> detailRoom = roomDao.selectDetailRoom(id, 0);

		detailMap.put("room", room);
		detailMap.put("roomInfo", roomInfo);
		detailMap.put("detailRoom", detailRoom);

		return detailMap;

	}

	@Override
	public Map<String, Object> selectDetailRoom(int id) {

		Map<String, Object> detailOneMap = new HashMap<>();

		List<DetailRoomVO> dRoom = roomDao.selectDetailRoom(0, id);

		DetailRoomVO originDRoom = dRoom.get(0);// 어차피 하나라서??

		int roomId = originDRoom.getRoomId();
		
		RoomVO originRoom = roomDao.selectRoom(roomId);
		int hostId = originRoom.getMId();
		MemberVO host = memberDao.selectHostInfo(hostId);

		// 예약된 날짜 가져와서 스플릿후 리스트로 만들기
		List<Integer> days = new ArrayList<>();
		List<Integer> aftDays = new ArrayList<>();

		Map<Integer, List<Integer>> bookingMap = new HashMap<>();

		CalendarUtil cal = new CalendarUtil();

		int year = cal.testCalendar().get(0);
		int month = cal.testCalendar().get(1);
		int lastDay = cal.testCalendar().get(3);

		int nxtYear = cal.testCalendar().get(5);
		int nxtMonth = cal.testCalendar().get(6);
		int nxtLastDay = cal.testCalendar().get(8);

		List<BookingVO> book = bookDao.selectBookVO(id);
		// 이번달 인 애들

		
		
		Map<String, Integer> dateMap =  new HashMap<String, Integer>();
		book.stream()
				   .collect(Collectors.groupingBy(data -> data.getBookDate() ) )
				   .entrySet()
				   .stream()
				   .map( test -> {
					   //Map<String, Integer> dateMap =  new HashMap<String, Integer>();
					   String date = test.getKey();
					   int count = test.getValue().size();
					   System.out.println(date + "date");
					   System.out.println("date" + date);
					   System.out.println("count"+ count);
					   dateMap.put(date, count);
					   
					   return 0;
				   } )
				   .collect(Collectors.toList());
		
		System.out.println("=================================");
		System.out.println(dateMap.get("2018-06-07"));
		System.out.println(dateMap.get("2018-06-06"));
		System.out.println(dateMap.get("2018-06-05"));
		System.out.println("=================================");
		
		
		System.out.println(book.size() + "book 크기");

		/*
		 * for (int i = 0; i < book.size(); i++) {
		 * 
		 * if (book.get(i).getBookDate().contains(year + "-" + month)) {
		 * 
		 * System.out.println("들어옴");
		 * 
		 * String[] day = book.get(i).getBookDate().split(","); String realDay = day[2];
		 * 
		 * int rrealDay = Integer.parseInt(realDay);
		 * 
		 * for (int p = 1; p <= lastDay; p++) { System.out.println("들어옴2"); if (rrealDay
		 * == p) { String[] times = book.get(i).getBookTimes().split(",");
		 * 
		 * for (int q = 0; q < times.length; q++) {
		 * days.add(Integer.parseInt(times[q])); }
		 * 
		 * bookingMap.put(cal.testCalendar().get(1), days);
		 * 
		 * } }
		 * 
		 * }
		 * 
		 * else if (book.get(i).getBookDate().contains(nxtYear + "," + nxtMonth)) {
		 * 
		 * String[] day = book.get(i).getBookDate().split(","); String realDay = day[2];
		 * 
		 * int rrealDay = Integer.parseInt(realDay);
		 * 
		 * for (int p = 1; p <= lastDay; p++) {
		 * 
		 * if (rrealDay == p) { String[] times = book.get(i).getBookTimes().split(",");
		 * 
		 * for (int q = 0; q < times.length; q++) {
		 * days.add(Integer.parseInt(times[q])); }
		 * 
		 * bookingMap.put(cal.testCalendar().get(6), days);
		 * 
		 * } }
		 * 
		 * }
		 * 
		 * }
		 */
		detailOneMap.put( "dateMap", dateMap );
		detailOneMap.put( "droom", dRoom );
		detailOneMap.put( "room", originRoom );
		detailOneMap.put( "host", host );
		// detailOneMap.put("book", book);
		return detailOneMap;
	}

	@Override
	public List<RoomInfoVO> selectRoomInfo(int id) {
		return roomDao.selectRoomInfo(id);
	}

}
