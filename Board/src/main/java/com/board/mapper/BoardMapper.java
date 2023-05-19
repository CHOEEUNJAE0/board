package com.board.mapper;

import java.util.List;

import com.board.model.BoardVO;

public interface BoardMapper {
	
	/*게시판 목록 불러오기*/
	public List<BoardVO> getList();
	
	/*게시판 등록*/
	public void enroll (BoardVO board);
	


}