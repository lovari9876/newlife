package com.nlchurch.controller;

import java.util.ArrayList;
import java.util.HashMap;

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
import com.nlchurch.util.paging.SearchCriteria;

// 대메뉴: 새생활뉴스....더 나은 이름 있으면 교체.. 
// 주보 새소식, 사이트 공지
// 게시판 2개
@Controller
public class InfomationController {

	private static final Logger logger = LoggerFactory.getLogger(InfomationController.class);

	@Autowired
	private BoardService boardService;

	// 새소식
	@RequestMapping(value = "/news", method = RequestMethod.GET)
	public String news(Model model, @ModelAttribute("scri") SearchCriteria scri, HttpServletRequest rq)
			throws Exception {

		// 스프링 컨테이너가
		// SearchCriteria scri = new SearchCriteria();
		// model.attribute("scri", scri)
		// 를 자동으로 해준다.

		logger.info("news 새소식");

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

//		String sort = rq.getParameter("sort");

//		ArrayList<HashMap<String, Object>> tList = secondhandService.selectTradeList(scri, s_content, sort);
//		model.addAttribute("tList", tList);
//		model.addAttribute("s_content", s_content); // 단순히 jsp에서 select 선택 반영 위한 넘기기
//		model.addAttribute("sort", sort);

		System.out.println(tList);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(BoardService.tradeListCount(scri, s_content));

		// perPageNum 부여한 것 잘 가져오니? 네
		// System.out.println(pageMaker.getCri().getPerPageNum());

		model.addAttribute("pageMaker", pageMaker);

		// System.out.println(((SearchCriteria) (pageMaker.getCri())).getSearchType());

		return "secondhand/tlist";

	}

	// 공지사항
	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public String notice(Model model) throws Exception {
		return null;

	}

}
