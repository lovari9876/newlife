package com.nlchurch.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nlchurch.service.BoardService;
import com.nlchurch.util.paging.PageMaker;
import com.nlchurch.util.paging.SearchCriteria;

// 대메뉴: 새생활뉴스....더 나은 이름 있으면 교체.. 
// 주보 새소식, 사이트 공지
// 게시판 2개
@Controller
public class InfomationController {

	private static final Logger logger = LoggerFactory.getLogger(InfomationController.class);

	@Autowired
	private BoardService boardService;

	// content view
	@RequestMapping(value = "/content", method = RequestMethod.GET)
	public String home(Locale locale, Model model/* , Principal principal */) throws Exception {

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

		return "content/content-view";
		// 디미토리 보니까 직장인 게시판 글이면 "work/글번호" 이렇게 되어있다.
	}

	// 새소식: 주보
	@RequestMapping(value = "/weekly", method = RequestMethod.GET)
	public String weekly(Model model, @ModelAttribute("scri") SearchCriteria scri, HttpServletRequest rq)
			throws Exception {

		// 스프링 컨테이너가
		// SearchCriteria scri = new SearchCriteria();
		// model.attribute("scri", scri)
		// 를 자동으로 해준다.

		logger.info("weekly 새소식;주보");

		// 로그인 안되어있는 상태에서도 볼 수 있음
//		if (principal != null) {
//			String m_id = principal.getName();
//			MemberVO memberVO = myPageService.mypage(m_id);
//			model.addAttribute("memberVO", memberVO);
//		}

		// 한 페이지에 글 15개씩 보이도록
		scri.setPerPageNum(15);

//		// 쿼리 uri로 보낸 파라미터들 확인
//		System.out.println("query: " + rq.getQueryString());
//		System.out.println("s_content: " + rq.getParameter("s_content"));
//		System.out.println("searchType: " + scri.getSearchType());

		ArrayList<HashMap<String, Object>> weekly = boardService.listBoard(scri);
		model.addAttribute("weekly", weekly);
//		model.addAttribute("s_content", s_content); // 단순히 jsp에서 select 선택 반영 위한 넘기기

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(boardService.countBoardList(scri));

		// perPageNum 부여한 것 잘 가져오니? 네
		logger.info("perPageNum: " + pageMaker.getCri().getPerPageNum());

		model.addAttribute("pageMaker", pageMaker);

		// System.out.println(((SearchCriteria) (pageMaker.getCri())).getSearchType());

		return "information/weekly";

	}

	// 공지사항
	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public String notice(Model model) throws Exception {
		return null;

	}

}
