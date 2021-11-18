package com.nlchurch.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nlchurch.service.BoardService;

// 대메뉴: 말씀과 찬양
// 중메뉴: 1. 예배 영상  2. 말씀과 나눔  3. 찬양
// 게시판 다수
@Controller
public class WordAndPraiseController {

	private static final Logger logger = LoggerFactory.getLogger(WordAndPraiseController.class);

	@Autowired
	private BoardService boardService;

	// 중메뉴: 1. 예배 영상 worship-videos
	// 주일/주중 설교 (board)(영상)
	@RequestMapping(value = "/sermon", method = RequestMethod.GET)
	public String sermon(Model model) throws Exception {
		return "word-and-praise/worship-videos/sermon";

	}

	// 청년 플랫폼 (board)(영상)
	@RequestMapping(value = "/youthPlatform", method = RequestMethod.GET)
	public String youthPlatform(Model model) throws Exception {
		return "word-and-praise/worship-videos/youth-platform";

	}

	// 지난 설교 모음 (바둑판, 구글 드라이브 연결)(영상)
	@RequestMapping(value = "/previousSermon", method = RequestMethod.GET)
	public String previousSermon(Model model) throws Exception {
		return "word-and-praise/worship-videos/previous-sermon";

	}

	/////////////////////////////////////////////////////////////////////
	// 중메뉴: 2. 말씀과 나눔 word-and-sharing
	// 헐몬의 시간 (board)(영상)
	@RequestMapping(value = "/timeOfHermon", method = RequestMethod.GET)
	public String timeOfHermon(Model model) throws Exception {
		return "word-and-praise/worship-videos/time-of-hermon";

	}
	
	// 용디기의 생각(board)
	@RequestMapping(value = "/yongdigi", method = RequestMethod.GET)
	public String yongdigi(Model model) throws Exception {
		return "word-and-praise/word-and-sharing/yongdigi";

	}

	// 매일 묵상(board)
	@RequestMapping(value = "/meditation", method = RequestMethod.GET)
	public String meditation(Model model) throws Exception {
		return "word-and-praise/word-and-sharing/meditation";

	}

	// 생명샘 말씀(board)
	@RequestMapping(value = "/springOfLife", method = RequestMethod.GET)
	public String springOfLife(Model model) throws Exception {
		return "word-and-praise/word-and-sharing/springOfLife";

	}

	/////////////////////////////////////////////////////////////////////
	// 중메뉴: 3. 찬양
	// 예배 찬양(board)(음성파일 구글드라이브 바로연결해서 다운 및 플레이가능하게)
	@RequestMapping(value = "/praise", method = RequestMethod.GET)
	public String praise(Model model) throws Exception {
		return "word-and-praise/praise/praise";

	}

}
