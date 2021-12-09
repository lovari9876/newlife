package com.nlchurch.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nlchurch.service.BoardService;

// 대메뉴: 청년 플랫폼 youth-platform
// 게시판 2개
@Controller
public class YouthPlatformController {

	private static final Logger logger = LoggerFactory.getLogger(YouthPlatformController.class);

	@Autowired
	private BoardService boardService;

	// 청년 예배 (board)(영상)
	@RequestMapping(value = "/youth-worship", method = RequestMethod.GET)
	public String youthPlatform(Model model) throws Exception {
		return "youthPlatform/youthWorship";

	}

	// 고백 찬양(영상) : 청년부 찬양 영상 게시판
	@RequestMapping(value = "/confession-praise", method = RequestMethod.GET)
	public String previousSermon(Model model) throws Exception {
		return "youthPlatform/confessionPraise";

	}

}
