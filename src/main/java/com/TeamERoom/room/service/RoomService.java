package com.TeamERoom.room.service;

import java.util.Map;

public interface RoomService {

	public Map<String, Object> selectRoom(int id);

	public Map<String, Object> selectDetailRoom(int id);

}
