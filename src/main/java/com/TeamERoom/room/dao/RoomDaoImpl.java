package com.TeamERoom.room.dao;


import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

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
	public List<DetailRoomVO> selectDetailRoom(int id) {
		return getSqlSession().selectList("RoomDao.selectDetailRoom", id);
	}
	///////////////
	
	///////////
	@Override
	public DetailRoomVO selectOneDetailRoom(int id) {
		return getSqlSession().selectOne("RoomDao.selectOneDetailRoom",id);
	}
	///////////

}
