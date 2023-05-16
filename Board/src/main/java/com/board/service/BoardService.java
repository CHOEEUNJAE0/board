package com.board.service;

import java.util.List;

import com.board.model.BoardVO;

//기능 수행 하는 메서드
public interface BoardService {
	
	/*게시판 목록 불러오기*/
	public List<BoardVO> getList();
	
	/*게시판 등록*/
	public void enroll(BoardVO board);
}
