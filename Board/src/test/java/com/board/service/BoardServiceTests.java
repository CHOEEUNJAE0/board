package com.board.service;

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
public class BoardServiceTests {
	
	private static final Logger log = LoggerFactory.getLogger(BoardServiceTests.class);
	
	@Autowired
	private BoardService service;
	
//	@Test
//	public void testEnroll() {
//		BoardVO vo = new BoardVO();
//		
//		vo.setTitle("service test1");
//		vo.setWriter("service test1");
//		vo.setContent("service test1");
//		
//		service.enroll(vo);
//	}
	@Test
	public void testGetList() {
		service.getList().forEach(board -> log.info("" + board));
	}
	
	@Test
	public void testModify() {
		BoardVO board = new BoardVO();
		board.setBno(1);
		board.setUseyn("사용안함");
		board.setTitle("TEST1로 변경.");
		board.setWriter("TEST1로 변경.");
		board.setContent("TEST1로 변경합니다.");
		
		int result = service.modify(board);
		log.info("result : " + result);
	}

}
