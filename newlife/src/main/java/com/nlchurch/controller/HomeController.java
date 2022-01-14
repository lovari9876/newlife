package com.nlchurch.controller;

import java.security.Principal;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nlchurch.service.BoardService;

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private BoardService boardService;

	// 메인화면
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model/* , Principal principal */) throws Exception {

		logger.info("home: 메인 화면");

		// ArrayList 로 가져오니까 categoryList로 명명
		// odel.addAttribute("categoryList", boardService.listCategories());
		
		
		
		/*
		 * // 히트다 히트 model.addAttribute("hit", boardService.selectHitList()); // 베스트
		 * model.addAttribute("best", boardService.selectBestList()); // 랭킹(글 많이 쓴)
		 * model.addAttribute("rankW", boardService.rankWrite()); // 랭킹(댓글 많이 쓴)
		 * model.addAttribute("rankWC", boardService.rankWriteCo()); // 랭킹(신고많이받은)
		 * model.addAttribute("rankRe", boardService.rankReport());
		 */

		/*
		 * // 후원하기 위한 후원자 정보 if (principal != null) { String m_id = principal.getName();
		 * MemberVO memberVO = myPageService.mypage(m_id);
		 * model.addAttribute("memberVO", memberVO); }
		 */

		return "index";
	}

	// 에러 페이지 일단 임시로!
	@RequestMapping(value = "/error", method = RequestMethod.GET)
	public String error(Locale locale, Model model/* , Principal principal */) throws Exception {

		return "error/errorNullPointer";
	}

}
