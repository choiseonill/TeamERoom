package com.TeamERoom.board.vo;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class BoardVO {
	private int B_Id;
	private int type;
	private String B_title;
	private String B_body;
	private String B_write_date;
	private String B_file;
	private int B_status;
	// TODO download util 추가
}
