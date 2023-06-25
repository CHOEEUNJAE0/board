package com.board.service;

import java.util.List;

import com.board.model.BoardVO;
import com.board.model.Criteria;

//기능 수행 하는 메서드
public interface BoardService {
	
	/*게시판 목록 불러오기*/
	public List<BoardVO> getList();
	
	/*게시판 목록 불러오기(페이징 적용)*/
	public List<BoardVO> getListPaging(Criteria cri);
	
	/*게시판 등록*/
	public void enroll(BoardVO board);
	
	/*게시글 상세 조회*/
	public BoardVO getPage(int bno);
	
	/*게시물 수정*/
	public int modify(BoardVO board);
	
	/*게시물 삭제*/
	public int delete(int bno);
	
	/*게시물 총 갯수*/
	public int getTotal();
	
	/*게시물 조회수 증가*/
	//void viewCount(Integer bno) throws Exception;
}
