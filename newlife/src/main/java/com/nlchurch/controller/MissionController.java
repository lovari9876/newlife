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
// 메뉴 2개
// 게시판 없음
@Controller
public class MissionController {

	private static final Logger logger = LoggerFactory.getLogger(MissionController.class);

	// 중보 기관 및 선교사
	@RequestMapping(value = "/intercessory", method = RequestMethod.GET)
	public String intercessory(Model model) throws Exception {
		return null;

	}

	// 크리스천 싱글즈 (only link) 
	// 아마 그냥 view에서 링크로 걸듯..
	@RequestMapping(value = "/singles", method = RequestMethod.GET)
	public String singles(Model model) throws Exception {
		return null;

	}
}
