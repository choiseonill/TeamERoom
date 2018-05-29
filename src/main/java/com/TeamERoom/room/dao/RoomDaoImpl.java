package com.TeamERoom.room.dao;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.TeamERoom.member.vo.MemberVO;
import com.TeamERoom.room.vo.DetailRoomVO;
import com.TeamERoom.room.vo.RoomInfoVO;
import com.TeamERoom.room.vo.RoomVO;


public class RoomDaoImpl extends SqlSessionDaoSupport implements RoomDao {

	/////////////
	@Override
	public RoomVO selectRoom(int id) {
		return getSqlSession().selectOne( "RoomDao.selectRoom",  id);
	}

	@Override
	public List<RoomInfoVO> selectRoomInfo(int id) {
		return getSqlSession().selectList("RoomDao.selectRoomInfo", id);
	}

	@Override
	public List<DetailRoomVO> selectDetailRoom(int id, int detailId) {
		
		Map<String, Integer> idMap = new HashMap<>();
		
		idMap.put("roomId", id);
		idMap.put("detailId", detailId);
		
		
		return getSqlSession().selectList("RoomDao.selectDetailRoom", idMap);
	}
	///////////////

	

}
