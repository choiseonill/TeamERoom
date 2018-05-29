package com.TeamERoom.room.service;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.TeamERoom.member.dao.MemberDao;
import com.TeamERoom.member.vo.MemberVO;
import com.TeamERoom.room.dao.RoomDao;
import com.TeamERoom.room.vo.DetailRoomVO;
import com.TeamERoom.room.vo.RoomInfoVO;
import com.TeamERoom.room.vo.RoomVO;

import lombok.Setter;
@Setter
public class RoomServiceImpl implements RoomService {
	
	
	private RoomDao roomDao;
	private MemberDao memberDao;
	

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
		
		DetailRoomVO originDRoom = dRoom.get(0);
		
		
		int roomId = originDRoom.getRoomId();
		
		
		RoomVO originRoom = roomDao.selectRoom(roomId);
		
		int hostId = originRoom.getMId();
		System.out.println("host Id : "+hostId);
		
		MemberVO host = memberDao.selectHostInfo(hostId);
		
		detailOneMap.put("droom", dRoom);
		detailOneMap.put("room", originRoom);
		detailOneMap.put("host", host);
		return detailOneMap;
	}

	@Override
	public List<RoomInfoVO> selectRoomInfo(int id) {
		return roomDao.selectRoomInfo(id);
	}
	

}
