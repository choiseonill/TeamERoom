package com.TeamERoom.room.vo;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class DetailRoomVO {

	private int id;
	private int roomId;
	private String title;
	private String info;
	private int type;
	private String image;
	private int minTime;
	private int minPeople;
	private int maxPeople;
	private int pricePerTime;
	private int pricePerTimeWeekend;

	
}
