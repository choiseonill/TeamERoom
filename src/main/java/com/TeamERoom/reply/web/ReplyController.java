package com.TeamERoom.reply.web;

import org.springframework.stereotype.Controller;

import com.TeamERoom.reply.service.ReplyService;

import lombok.Setter;

@Controller
public class ReplyController {
	
	@Setter
	private ReplyService replyService;

}
