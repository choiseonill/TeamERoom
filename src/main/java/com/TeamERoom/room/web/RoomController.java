package com.TeamERoom.room.web;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.TeamERoom.member.vo.MemberVO;
import com.TeamERoom.room.service.RoomService;
import com.TeamERoom.room.vo.DetailRoomVO;
import com.TeamERoom.room.vo.RoomInfoVO;
import com.TeamERoom.room.vo.RoomVO;
import com.TeamERoom.util.CalendarUtil;
import com.TeamERoom.util.DownloadUtil;

import lombok.Setter;

@Controller
public class RoomController {

	@Setter
	private RoomService roomService;

	@RequestMapping("/roomdetail")
	public ModelAndView testroomdetailPage() {

		ModelAndView view = new ModelAndView();

		view.setViewName("room/roomdetail");

		Map<String, Object> detailMap = new HashMap<>();

		detailMap = roomService.selectRoom(1);

		if (detailMap == null) {

			return new ModelAndView("redirect:/main");

		}

		RoomVO room = (RoomVO) detailMap.get("room");

		List<RoomInfoVO> infoList = (List<RoomInfoVO>) detailMap.get("roomInfo");

		view.addObject("room", room);

		for (RoomInfoVO roomInfo : infoList) {

			String[] splited = roomInfo.getBody().split(",");

			if (roomInfo.getInfoType() == 0) {

				view.addObject("warn", splited);

			}
			if (roomInfo.getInfoType() == 1) {

				view.addObject("info", splited);

			}

		}

		List<DetailRoomVO> detailRoom = (List<DetailRoomVO>) detailMap.get("detailRoom");
		view.addObject("detailRoom", detailRoom);
		return view;

	}

	@RequestMapping("/getRoomImg/{img:.+}")
	public void download(@PathVariable String img, HttpServletRequest request, HttpServletResponse response,
			HttpSession session) {
		DownloadUtil download = new DownloadUtil("C:\\Users\\YongGwan\\Desktop\\TeamERoom\\roomImg\\" + img);

		try {
			download.download(request, response, img);
		} catch (UnsupportedEncodingException e) {
			throw new RuntimeException(e.getMessage(), e);
		}

	}

	@RequestMapping("/reserveRoom")
	public ModelAndView regist(@RequestParam(defaultValue = "3", name = "id") int id) {
		System.out.println("path + " + id);
		ModelAndView view = new ModelAndView();
		view.setViewName("room/reserveRoom");
		
		Map<String, Object> detailOneMap = new HashMap<>();
		detailOneMap = roomService.selectDetailRoom(id);
		
		List<DetailRoomVO> dOriginRoom = (List<DetailRoomVO>) detailOneMap.get("droom");

		DetailRoomVO dRoom = dOriginRoom.get(0);
		RoomVO room = (RoomVO) detailOneMap.get("room");
		MemberVO host = (MemberVO) detailOneMap.get("host");
		
		List<RoomInfoVO> infoList = roomService.selectRoomInfo(room.getId());
		
		for (RoomInfoVO roomInfo : infoList) {

			String[] splited = roomInfo.getBody().split(",");

			if (roomInfo.getInfoType() == 0) {

				view.addObject("warn", splited);

			}
			if (roomInfo.getInfoType() == 1) {

				view.addObject("info", splited);

			}

		}
		
		CalendarUtil cal = new CalendarUtil();
		
		
		view.addObject("calendar", cal.testCalendar());
		view.addObject("dRoom", dRoom);
		view.addObject("room", room);
		view.addObject("host", host);
		
		return view;

	}

}
