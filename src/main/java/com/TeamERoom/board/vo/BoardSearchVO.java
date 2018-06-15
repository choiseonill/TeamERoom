package com.TeamERoom.board.vo;

import io.github.seccoding.web.pager.annotations.EndRow;
import io.github.seccoding.web.pager.annotations.StartRow;
import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class BoardSearchVO {
	private int pageNo = -1; // 페이지 값이 넘어왔는지 안넘어 왔는지 알고 싶어서 -1을 줌.
	
	@StartRow
	private int startNumber;
	@EndRow
	private int endNumber;

	private int searchType;
	private String searchKeyword;
	
}