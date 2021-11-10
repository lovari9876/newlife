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
@Controller
public class IntroductionController {

	private static final Logger logger = LoggerFactory.getLogger(IntroductionController.class);

	@Autowired
	private BoardService boardService;

	// 인사말
	@RequestMapping(value = "/greeting", method = RequestMethod.GET)
	public String greeting(Model model) throws Exception {
		return null;

	}
	
	// 목회철학
	@RequestMapping(value = "/statementOfFaith", method = RequestMethod.GET)
	public String statementOfFaith(Model model) throws Exception {
		return null;

	}
	
	// 세 책 이야기
	@RequestMapping(value = "/books", method = RequestMethod.GET)
	public String books(Model model) throws Exception {
		return null;

	}
	
	// 예배시간(예배안내)
	@RequestMapping(value = "/serviceTime", method = RequestMethod.GET)
	public String serviceTime(Model model) throws Exception {
		return null;

	}
	
	// 오시는 길
	@RequestMapping(value = "/map", method = RequestMethod.GET)
	public String map(Model model) throws Exception {
		return null;

	}

	////////////////////////////////////////////////////////////
	// 게시판 리스트
//	@RequestMapping(value = "/tlist", method = RequestMethod.GET)
//	public String tlist(Model model, /* Principal principal, */ @ModelAttribute("scri") SearchCriteria scri,
//			HttpServletRequest rq
//	/* @RequestParam(name="s_content", defaultValue = "n") String s_content, */ ) throws Exception {
//		// @RequestParam으로 받으면, 처음에 검색어 없이 /tlist로 갈때는 없는 파라미터 오류 발생
//
//		// 스프링 컨테이너가
//		// SearchCriteria scri = new SearchCriteria();
//		// model.attribute("scri", scri)
//		// 를 자동으로 해준다.
//
//		logger.info("tlist");
//
//		// 로그인 안되어있는 상태에서도 볼 수 있음
////		if (principal != null) {
////			String m_id = principal.getName();
////			MemberVO memberVO = myPageService.mypage(m_id);
////			model.addAttribute("memberVO", memberVO);
////		}
//
//		// 한 페이지에 글 15개씩 보이도록
//		scri.setPerPageNum(15);
//
//		// 쿼리 uri로 보낸 파라미터들 확인
//		System.out.println("query: " + rq.getQueryString());
//		System.out.println("s_content: " + rq.getParameter("s_content"));
//		System.out.println("searchType: " + scri.getSearchType());
//
////			HashMap<String, Object> search = new HashMap<>();
////			search.put("scri", scri);
////			
//		String s_content = rq.getParameter("s_content");
////			search.put("s_content", s_content);
//
//		String sort = rq.getParameter("sort");
//
//		ArrayList<HashMap<String, Object>> tList = secondhandService.selectTradeList(scri, s_content, sort);
//		model.addAttribute("tList", tList);
//		model.addAttribute("s_content", s_content); // 단순히 jsp에서 select 선택 반영 위한 넘기기
//		model.addAttribute("sort", sort);
//
//		System.out.println(tList);
//
//		PageMaker pageMaker = new PageMaker();
//		pageMaker.setCri(scri);
//		pageMaker.setTotalCount(secondhandService.tradeListCount(scri, s_content));
//
//		// perPageNum 부여한 것 잘 가져오니? 네
//		// System.out.println(pageMaker.getCri().getPerPageNum());
//
//		model.addAttribute("pageMaker", pageMaker);
//
//		// System.out.println(((SearchCriteria) (pageMaker.getCri())).getSearchType());
//
//		return "secondhand/tlist";
//	}

}
