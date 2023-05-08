package com.board.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Controller : 해당 class를 spring bean으로 인식하기 위한 어노테이션 
 * RequestMapping : '/board'로 시작 하는 모든 처리를 BoardController가 할 수 있도록 지정
 */

@Controller
@RequestMapping("/board/*")
public class BoardController {
	//log 메서드 이용하기 위해
	private static final Logger log = LoggerFactory.getLogger(BoardController.class);
	
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
}
