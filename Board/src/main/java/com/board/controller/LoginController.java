package com.board.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
@RequestMapping(value="/main/*")
public class LoginController {
	//log 메서드 이용하기 위해
	private static final Logger log = LoggerFactory.getLogger(LoginController.class);
	
	//로그인 페이지
	@GetMapping("/login")
	public void loginGET() {
		log.info("로그인 페이지 진입 성공");
	}
}	
