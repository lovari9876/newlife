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
// 메뉴 5개 + 중메뉴(1. 교회학교 2. 교회사역)
// 게시판 없음
@Controller
public class IntroductionController {

	private static final Logger logger = LoggerFactory.getLogger(IntroductionController.class);

	@Autowired
	private BoardService boardService;

	// 인사말
	@RequestMapping(value = "/greeting", method = RequestMethod.GET)
	public String greeting(Model model) throws Exception {
		return "introduction/greeting";

	}

	// 목회철학
	@RequestMapping(value = "/statement-of-faith", method = RequestMethod.GET)
	public String statementOfFaith(Model model) throws Exception {
		return "introduction/statementOfFaith";

	}

	// 세 책 이야기
	@RequestMapping(value = "/books", method = RequestMethod.GET)
	public String books(Model model) throws Exception {
		return "introduction/books";

	}

	// 예배시간(예배안내)
	@RequestMapping(value = "/service-time", method = RequestMethod.GET)
	public String serviceTime(Model model) throws Exception {
		return "introduction/serviceTime";

	}

	// 오시는 길: 카카오맵 연동
	@RequestMapping(value = "/map", method = RequestMethod.GET)
	public String map(Model model) throws Exception {
		return "introduction/map";

	}

	/////////////////////////////////////////////////////////////////////
	// 중메뉴: 1. 교회학교 school
	// 쥬빌리 유치부
	@RequestMapping(value = "/kindergarten", method = RequestMethod.GET)
	public String kindergarten(Model model) throws Exception {
		return "introduction/school/kindergarten";

	}

	// 푸른초장 초등부
	@RequestMapping(value = "/elementary", method = RequestMethod.GET)
	public String elementary(Model model) throws Exception {
		return "introduction/school/elementary";

	}

	// 시온의 영광 중고등부
	@RequestMapping(value = "/adolescent", method = RequestMethod.GET)
	public String adolescent(Model model) throws Exception {
		return "introduction/school/adolescent";

	}

	// 많은 물소리 청년1부
	@RequestMapping(value = "/youth1", method = RequestMethod.GET)
	public String youth1(Model model) throws Exception {
		return "introduction/school/youth1";

	}

	// 다윗의 열쇠 청년2부
	@RequestMapping(value = "/youth2", method = RequestMethod.GET)
	public String youth2(Model model) throws Exception {
		return "introduction/school/youth2";

	}

	/////////////////////////////////////////////////////////////////////
	// 중메뉴: 2. 교회사역 mission
	// 중보 기관 및 선교사
	@RequestMapping(value = "/intercessory", method = RequestMethod.GET)
	public String intercessory(Model model) throws Exception {
		return "introduction/mission/intercessory";

	}

	// 크리스천 싱글즈 (only link)
	// 아마 그냥 view에서 링크로 걸듯..

}
