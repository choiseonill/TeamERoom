package com.TeamERoom.room.web;

import org.springframework.stereotype.Controller;

import com.TeamERoom.room.service.RoomService;

import lombok.Setter;

@Controller
public class RoomController {
	
	@Setter
	private RoomService roomService;

}
