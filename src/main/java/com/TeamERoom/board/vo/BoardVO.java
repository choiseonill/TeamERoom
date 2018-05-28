package com.TeamERoom.board.vo;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class BoardVO {
	private int ID;
	private String type;
	private String title;
	private String body;
	private String write_date;
	private String file;
	private int status;
	// TODO download util 추가
}
