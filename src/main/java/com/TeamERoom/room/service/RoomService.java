package com.TeamERoom.room.service;

import java.util.List;
import java.util.Map;

import com.TeamERoom.room.vo.RoomInfoVO;

public interface RoomService {

	public Map<String, Object> selectRoom(int id);

	public Map<String, Object> selectDetailRoom(int id);
	
	public List<RoomInfoVO> selectRoomInfo( int id );

}
