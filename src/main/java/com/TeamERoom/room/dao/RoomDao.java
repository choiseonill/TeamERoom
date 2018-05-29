package com.TeamERoom.room.dao;

import java.util.List;

import com.TeamERoom.member.vo.MemberVO;
import com.TeamERoom.room.vo.DetailRoomVO;
import com.TeamERoom.room.vo.RoomInfoVO;
import com.TeamERoom.room.vo.RoomVO;

public interface RoomDao {

	//////
	public RoomVO selectRoom(int id);

	public List<RoomInfoVO> selectRoomInfo(int id);

	public List<DetailRoomVO> selectDetailRoom(int id, int detailId);
	//////
	



}
