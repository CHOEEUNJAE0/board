package com.board.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.board.model.BoardVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class BoardMapperTests {
	
	//정상적으로 처리가 되었다는 표시가 뜨면 select문을 통해 db에서 직접 확인 할 수 있다.
	
	private static final Logger log = LoggerFactory.getLogger(BoardMapperTests.class);
	
	@Autowired
	private BoardMapper mapper;
	
//	@Test
//	public void testEnroll() {
//		
//		BoardVO vo = new BoardVO();
//		
//		vo.setTitle("TEST1 입니다");
//		vo.setWriter("TEST1");
//		vo.setContent("TEST1의 내용 입니다.");
//		
//		mapper.enroll(vo);
//		
//	}
//	@Test
//	public void testGetList() {
//		List list = mapper.getList();
//		/*일반적인 for문*/
//		/*
//			for(int i=0; i<list.size(); i++) {
//				log.info(""+list.get(i));
//				}
//		 */
//		
//		/*foreach문(향상된  for문)*/
//		/*for(Object a : list){
//		 	log.info(""+a)
//		 	}
//		 */
//		/*foreach문 & 람다식*/
//		list.forEach(board -> log.info("" + board));
//	}
	
	/*게시글 상세 조회*/
//    @Test
//   public void testGetPage() {
//       
//       /* 실제 존재하는 페이지 */
//       int bno = 41;
//       
//       log.info("" + mapper.getPage(bno));
//       
//   }
	
//	
//	/*게시물 수정*/
	@Test
	public void testModify() {
		BoardVO board = new BoardVO();
		board.setBno(81);
		board.setUseyn("사용");
		board.setTitle("TEST81로 한 번 더 변경");
		board.setContent("TEST81로 한 번 더 변경합니다");
		
		int result = mapper.modify(board);
		log.info("result : " + result);
	}
	
	/*게시글 삭제*/
//	@Test
//	public void testDelete() {
//		int result = mapper.delete(101);
//		log.info("result : " + result);
//	}
}
