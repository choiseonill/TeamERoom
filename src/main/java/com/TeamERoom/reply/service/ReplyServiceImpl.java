package com.TeamERoom.reply.service;

import com.TeamERoom.reply.dao.ReplyDao;

import lombok.Setter;

public class ReplyServiceImpl implements ReplyService {
	
	@Setter
	private ReplyDao replyDao;

}
