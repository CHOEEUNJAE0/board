package com.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.board.mapper.BoardMapper;
import com.board.model.BoardVO;

/*interface에서 작성한 메서드를 구현 할 class. BoardService interface를 구현한다는 의미로 implements해 줌
	이 class가 Service 역할을 한다는걸 인식 할 수 있게 @Service 어노테이션 추가
*/ 
@Service
public class BoardServiceImpl implements BoardService {
	
	//BoardMapper 주입
	@Autowired
	private BoardMapper mapper;
	
	/*게시판 목록 불러오기*/
	public List<BoardVO> getList() {
		return mapper.getList();
	}
	/*BoardServic interface에서 선언한 메서드 오바라이팅하여 메서드 구현부 작성
	 BoardMapper의 enroll() 메서드를 호출하는 코드 작성 
	 */
	@Override
	public void enroll(BoardVO board) {
		mapper.enroll(board);
	}
	
	/*게시글 상세 조회*/
	@Override
	public BoardVO getPage(int bno) {
		return mapper.getPage(bno);
	}
	
	/*게시물 수정 메서드 호출*/
	public int modify(BoardVO board) {
		return mapper.modify(board);
	}

}
