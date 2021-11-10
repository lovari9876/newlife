package com.nlchurch.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nlchurch.service.BoardService;

// 대메뉴: 교회소개
// 게시판 없음
@Controller
public class IntroductionController {

	private static final Logger logger = LoggerFactory.getLogger(IntroductionController.class);

	@Autowired
	private BoardService boardService;

	// 인사말
	@RequestMapping(value = "/greeting", method = RequestMethod.GET)
	public String greeting(Model model) throws Exception {
		return null;

	}

	// 목회철학
	@RequestMapping(value = "/statementOfFaith", method = RequestMethod.GET)
	public String statementOfFaith(Model model) throws Exception {
		return null;

	}

	// 세 책 이야기
	@RequestMapping(value = "/books", method = RequestMethod.GET)
	public String books(Model model) throws Exception {
		return null;

	}

	// 예배시간(예배안내)
	@RequestMapping(value = "/serviceTime", method = RequestMethod.GET)
	public String serviceTime(Model model) throws Exception {
		return null;

	}

	// 오시는 길: 카카오맵 연동 필수
	@RequestMapping(value = "/map", method = RequestMethod.GET)
	public String map(Model model) throws Exception {
		return null;

	}

}
