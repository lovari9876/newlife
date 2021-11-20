package com.nlchurch.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nlchurch.service.BoardService;

// 대메뉴: 예배와 찬양
// 게시판 1개
@Controller
public class WorshipAndPraiseController {

	private static final Logger logger = LoggerFactory.getLogger(WorshipAndPraiseController.class);

	@Autowired
	private BoardService boardService;

	// 예배 영상 worship-videos (게시판)
	// 예배 영상은 게시판에서 해당 예배 글을 누르면 유튜브 영상과 찬양 사운드바가 둘 다 나오게 할 것임
	@RequestMapping(value = "/worship", method = RequestMethod.GET)
	public String sermon(Model model) throws Exception {
		return "Worship-and-praise/worship";

	}

	// 지난 설교 모음 (바둑판, 구글 드라이브 연결)(음성파일 only)
	@RequestMapping(value = "/previousSermon", method = RequestMethod.GET)
	public String previousSermon(Model model) throws Exception {
		return "Worship-and-praise/previous-sermon";

	}

}
