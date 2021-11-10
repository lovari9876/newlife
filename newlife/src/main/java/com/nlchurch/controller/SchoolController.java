package com.nlchurch.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

// 대메뉴: 교회 학교
// 5개 정도 학교 부서 있음
// 게시판 없음
@Controller
public class SchoolController {

	private static final Logger logger = LoggerFactory.getLogger(SchoolController.class);

	// 쥬빌리 유치부
	@RequestMapping(value = "/kindergarten", method = RequestMethod.GET)
	public String kindergarten(Model model) throws Exception {
		return null;

	}

	// 푸른초장 초등부
	@RequestMapping(value = "/elementary", method = RequestMethod.GET)
	public String elementary(Model model) throws Exception {
		return null;

	}

	// 시온의 영광 중고등부
	@RequestMapping(value = "/adolescent", method = RequestMethod.GET)
	public String adolescent(Model model) throws Exception {
		return null;

	}

	// 많은 물소리 청년1부
	@RequestMapping(value = "/youth1", method = RequestMethod.GET)
	public String youth1(Model model) throws Exception {
		return null;

	}

	// 다윗의 열쇠 청년2부
	@RequestMapping(value = "/youth2", method = RequestMethod.GET)
	public String youth2(Model model) throws Exception {
		return null;

	}

}
