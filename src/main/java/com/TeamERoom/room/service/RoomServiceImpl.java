package com.TeamERoom.room.service;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.TeamERoom.room.dao.RoomDao;
import com.TeamERoom.room.vo.DetailRoomVO;
import com.TeamERoom.room.vo.RoomInfoVO;
import com.TeamERoom.room.vo.RoomVO;

import lombok.Setter;

public class RoomServiceImpl implements RoomService {
	
	@Setter
	private RoomDao roomDao;

	@Override
	public Map<String, Object> selectRoom(int id) {
		
		
		Map<String, Object> detailMap = new HashMap<>();
		
		RoomVO room = roomDao.selectRoom(id);
		List<RoomInfoVO> roomInfo = roomDao.selectRoomInfo(id);
		List<DetailRoomVO> detailRoom = roomDao.selectDetailRoom(id);
		
		detailMap.put("room", room);
		detailMap.put("roomInfo", roomInfo);
		detailMap.put("detailRoom", detailRoom);
		
		return detailMap;
		
	}

	@Override
	public Map<String, Object> selectDetailRoom(int id) {
		Map<String, Object> detailOneMap = new HashMap<>();
		
		DetailRoomVO droom = roomDao.selectOneDetailRoom(id);
		detailOneMap.put("droom", droom);
		
		return detailOneMap;
	}
	

}
