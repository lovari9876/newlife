package com.nlchurch.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nlchurch.service.BoardService;

// 대메뉴: 교회 사역
// 4개 정도 있음
// 게시판 없음
@Controller
public class MissionController {

	private static final Logger logger = LoggerFactory.getLogger(MissionController.class);

	@Autowired
	private BoardService boardService;

	// 유치부
	@RequestMapping(value = "/sermon", method = RequestMethod.GET)
	public String sermon(Model model) throws Exception {
		return null;

	}

	// 초등부
	@RequestMapping(value = "/timeOfHermon", method = RequestMethod.GET)
	public String timeOfHermon(Model model) throws Exception {
		return null;

	}

	// 중고등부
	@RequestMapping(value = "/youthPlatform", method = RequestMethod.GET)
	public String youthPlatform(Model model) throws Exception {
		return null;

	}

	// 청년1부
	@RequestMapping(value = "/previousSermon", method = RequestMethod.GET)
	public String previousSermon(Model model) throws Exception {
		return null;

	}

	// 청년2부
	@RequestMapping(value = "/previousSe1rmon", method = RequestMethod.GET)
	public String previousSe1rmon(Model model) throws Exception {
		return null;

	}

}
