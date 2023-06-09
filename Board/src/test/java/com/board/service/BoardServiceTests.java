package com.board.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.board.model.BoardVO;
import com.board.model.Criteria;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class BoardServiceTests {
	
	private static final Logger log = LoggerFactory.getLogger(BoardServiceTests.class);
	
	@Autowired
	private BoardService service;
	
//	@Test
//	public void testEnroll() {
//		BoardVO vo = new BoardVO();
//		
//		vo.setUseyn("사용안함");
//		vo.setTitle("api service test1");
//		vo.setWriter("api service test1");
//		vo.setContent("api service test1");
//		
//		service.enroll(vo);
//	}
//	@Test
//	public void testGetList() {
//		service.getList().forEach(board -> log.info("" + board));
//	}
//	
//	@Test
//	public void testGETPage() {
//		int bno = 41;
//		log.info("" + service.getPage(bno));
//	}
	
	
//	@Test
//	public void testModify() {
//		BoardVO board = new BoardVO();
//		board.setBno(81);
//		board.setUseyn("사용안함");
//		board.setTitle("TEST81로 다시 변경.");
//		board.setContent("TEST81로 다시 변경합니다.");
//		
//		int result = service.modify(board);
//		log.info("result : " + result);
//	}
//	@Test
//	public void testDelete() {
//		int result = service.delete(42);
//		log.info("result : " + result);
//	}
	
	/*페이징 적용*/
	@Test
	public void testGetListPaging() {
		Criteria cri = new Criteria();
		List list = service.getListPaging(cri);
		list.forEach(board -> log.info(""+board));
	}
}
