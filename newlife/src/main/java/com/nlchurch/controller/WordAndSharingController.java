package com.nlchurch.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nlchurch.service.BoardService;

// 대메뉴: 말씀과 나눔 word-and-sharing
// 게시판 4개
@Controller
public class WordAndSharingController {

	private static final Logger logger = LoggerFactory.getLogger(WordAndSharingController.class);

	@Autowired
	private BoardService boardService;

	// 헐몬의 시간 (board)(영상)
	@RequestMapping(value = "/timeOfHermon", method = RequestMethod.GET)
	public String timeOfHermon(Model model) throws Exception {
		return "word-and-sharing/time-of-hermon";

	}

	// 용디기의 생각(board)
	@RequestMapping(value = "/yongdigi", method = RequestMethod.GET)
	public String yongdigi(Model model) throws Exception {
		return "word-and-sharing/yongdigi";

	}

	// 매일 묵상(board)
	@RequestMapping(value = "/meditation", method = RequestMethod.GET)
	public String meditation(Model model) throws Exception {
		return "word-and-sharing/meditation";

	}

	// 생명샘 말씀(board)
	@RequestMapping(value = "/springOfLife", method = RequestMethod.GET)
	public String springOfLife(Model model) throws Exception {
		return "word-and-sharing/springOfLife";

	}
}