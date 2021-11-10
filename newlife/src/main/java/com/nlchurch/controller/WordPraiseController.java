package com.nlchurch.controller;

import java.security.Principal;
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
import com.nlchurch.util.paging.SearchCriteria;

// 대메뉴: 말씀과 찬양
// 중메뉴: 1. 예배 영상  2. 말씀과 나눔  3. 찬양
@Controller
public class WordPraiseController {

	private static final Logger logger = LoggerFactory.getLogger(WordPraiseController.class);

	@Autowired
	private BoardService boardService;

	// 중메뉴: 1. 예배 영상
	// 주일/주중 설교 (board)(영상)
	@RequestMapping(value = "/sermon", method = RequestMethod.GET)
	public String sermon(Model model) throws Exception {
		return null;

	}

	// 헐몬의 시간 (board)(영상)
	@RequestMapping(value = "/timeOfHermon", method = RequestMethod.GET)
	public String timeOfHermon(Model model) throws Exception {
		return null;

	}

	// 청년 플랫폼 (board)(영상)
	@RequestMapping(value = "/youthPlatform", method = RequestMethod.GET)
	public String youthPlatform(Model model) throws Exception {
		return null;

	}

	// 지난 설교 모음 (바둑판, 구글 드라이브 연결)(영상)
	@RequestMapping(value = "/previousSermon", method = RequestMethod.GET)
	public String previousSermon(Model model) throws Exception {
		return null;

	}

	/////////////////////////////////////////////////////////////////////
	// 중메뉴: 2. 말씀과 나눔
	// 용디기의 생각(board)
	@RequestMapping(value = "/yongdigi", method = RequestMethod.GET)
	public String yongdigi(Model model) throws Exception {
		return null;

	}

	// 매일 묵상(board)
	@RequestMapping(value = "/meditation", method = RequestMethod.GET)
	public String meditation(Model model) throws Exception {
		return null;

	}

	// 생명샘 말씀(board)
	@RequestMapping(value = "/springOfLife", method = RequestMethod.GET)
	public String springOfLife(Model model) throws Exception {
		return null;

	}

	/////////////////////////////////////////////////////////////////////
	// 중메뉴: 3. 찬양
	// 예배 찬양(board)(음성파일 구글드라이브 바로연결해서 다운 및 플레이가능하게)
	@RequestMapping(value = "/praise", method = RequestMethod.GET)
	public String praise(Model model) throws Exception {
		return null;

	}

	/////////////////////////////////////////////////////////////////////
	// 게시판 리스트
	@RequestMapping(value = "/tlist", method = RequestMethod.GET)
	public String tlist(Model model, /* Principal principal, */ @ModelAttribute("scri") SearchCriteria scri,
			HttpServletRequest rq
	/* @RequestParam(name="s_content", defaultValue = "n") String s_content, */ ) throws Exception {
		// @RequestParam으로 받으면, 처음에 검색어 없이 /tlist로 갈때는 없는 파라미터 오류 발생

		// 스프링 컨테이너가
		// SearchCriteria scri = new SearchCriteria();
		// model.attribute("scri", scri)
		// 를 자동으로 해준다.

		logger.info("tlist");

		// 로그인 안되어있는 상태에서도 볼 수 있음
//		if (principal != null) {
//			String m_id = principal.getName();
//			MemberVO memberVO = myPageService.mypage(m_id);
//			model.addAttribute("memberVO", memberVO);
//		}

		// 한 페이지에 글 15개씩 보이도록
		scri.setPerPageNum(15);

		// 쿼리 uri로 보낸 파라미터들 확인
		System.out.println("query: " + rq.getQueryString());
		System.out.println("s_content: " + rq.getParameter("s_content"));
		System.out.println("searchType: " + scri.getSearchType());

//			HashMap<String, Object> search = new HashMap<>();
//			search.put("scri", scri);
//			
		String s_content = rq.getParameter("s_content");
//			search.put("s_content", s_content);

		String sort = rq.getParameter("sort");

		ArrayList<HashMap<String, Object>> tList = secondhandService.selectTradeList(scri, s_content, sort);
		model.addAttribute("tList", tList);
		model.addAttribute("s_content", s_content); // 단순히 jsp에서 select 선택 반영 위한 넘기기
		model.addAttribute("sort", sort);

		System.out.println(tList);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(secondhandService.tradeListCount(scri, s_content));

		// perPageNum 부여한 것 잘 가져오니? 네
		// System.out.println(pageMaker.getCri().getPerPageNum());

		model.addAttribute("pageMaker", pageMaker);

		// System.out.println(((SearchCriteria) (pageMaker.getCri())).getSearchType());

		return "secondhand/tlist";
	}

}
