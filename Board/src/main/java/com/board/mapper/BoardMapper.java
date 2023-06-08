package com.board.mapper;

import java.util.List;

import com.board.model.BoardVO;

public interface BoardMapper {
	
	/*게시판 목록 불러오기*/
	public List<BoardVO> getList();
	
	/*게시판 등록*/
	public void enroll (BoardVO board);
	
	/*게시글 상세 조회*/
	//하나의 게시판 정보를 얻기 위해서 그 게시판의 게시판 번호를 알아야 함
	//게시판 정보 데이터를 전달 받을 수 있게 int형 변수를 파라미터로 추가
	public BoardVO getPage (int bno);
	
	/*게시판 수정*/
	//수정 데이터가 필요하기때문에 BoardVO를 파라미터로 지정.
	//수정을 수행하는 메소드의 경우 반환 타입이 필요없지만 INT로 설정 하면 성공시 1, 실패시0 반환
	public int modify(BoardVO board);
	
	/*게시글 삭제*/
	//파라미터를 int type으로 줘서 성공하면 1 반환, 실패하면 0반환
	public int delete(int bno);

}
