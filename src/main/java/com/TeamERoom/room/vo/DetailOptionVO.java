package com.TeamERoom.room.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class DetailOptionVO {

	private int id;
	
	//detailRoom의 id
	private int detailId;
	
	private String name;
	
	private String body;
	
	private int quantity;
	
	private int price;
	
	private String image;
}
