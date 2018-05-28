package com.TeamERoom.board.vo;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class BoardVO {
	private int B_Id;
	private int Type;
	private String B_Type_Title;
	private String B_Type_Body;
	private String B_Type_Write_Date;
	private String B_File;
	private int B_Status;
	// TODO download util 추가
}
