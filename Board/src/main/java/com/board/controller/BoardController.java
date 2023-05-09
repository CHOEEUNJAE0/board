package com.board.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.board.model.BoardVO;
import com.board.service.BoardService;

/**
 * Controller : 해당 class를 spring bean으로 인식하기 위한 어노테이션 
 * RequestMapping : '/board'로 시작 하는 모든 처리를 BoardController가 할 수 있도록 지정
 */

@Controller
@RequestMapping("/board/*")
public class BoardController {
	//log 메서드 이용하기 위해
	private static final Logger log = LoggerFactory.getLogger(BoardController.class);
	
	/*view로부터 전송받은 db를 board 테이블에 등록하는 작업. 앞에서 board 테이블에 db 삽입 쿼리를 실행하는 mapper,service 메서드를 작성하였기 때문에 해당 메서드를 호툴하고 	*
	*단지 뷰로부터 전달 받은 데이터를 파라미터로 부여하여 넘겨 주기 위해 boardservice interface 의존성 주입
	*/
	@Autowired
	private BoardService bservice;
	//게시판 목록 페이지
	@GetMapping("/list")
	// =>RequestMapping(value="list", method=RequestMethod.GET)
	public void boardListGET() {
		log.info("게시판 목록 페이지 진입 성공");
	}
	//게시판 등록 페이지
	@GetMapping("/enroll")
	// =>RequestMapping(value="board", method=RequestMethod.GET)
	public void boardEnrollGET() {
		log.info("게시판 등록 페이지 진입 성공");
	}
	
	@PostMapping("/enroll")
	// =>RequestMapping(value="board", method=RequestMethod.POST)
	//view가 전송하는 데이터를 받기 위해 BoardVO class를 파라비터로 받음
	public String boardEnrollPOST(BoardVO board, RedirectAttributes rttr) {
		log.info("BoardVO : " + board);
		//BoardService에서 등록을 수행하는 메서드 enroll() 호출. 해당 메서드에서 데이터를 전달하기 위해 인자 값으로 view로부터 전달 받은 BoardVO 삽입
		bservice.enroll(board);
		//addFlasAttribute() : 일회성으로 데이터 전달. 게시판 목록 화면으로 이동시 등록 성공 여부 알려주는 문자 전송
		rttr.addFlashAttribute("result", "enroll success");
		//게시판 등록 기능 수행 후 등록 페이지 벗어나기 위헤 return값으로 list 페이지. return 주기 위해 void를 String으로 변경
		return "redirect:/board/list";
	}
}
