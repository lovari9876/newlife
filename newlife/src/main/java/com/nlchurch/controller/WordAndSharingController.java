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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.nlchurch.service.BoardService;
import com.nlchurch.util.paging.PageMaker;
import com.nlchurch.util.paging.SearchCriteria;

// 대메뉴: 말씀과 나눔 word-and-sharing
// 게시판 4개
@Controller
public class WordAndSharingController {

	private static final Logger logger = LoggerFactory.getLogger(WordAndSharingController.class);
	private int categoryId = 0;

	@Autowired
	private BoardService boardService;

	// 헐몬의 시간 (board)(영상)
	@RequestMapping(value = "/time-of-hermon", method = RequestMethod.GET)
	public String timeOfHermon(Model model) throws Exception {
		return "wordAndSharing/timeOfHermon";

	}

	// 용디기의 생각(board)
	@RequestMapping(value = "/yongdigi", method = RequestMethod.GET)
	public String yongdigi(Model model) throws Exception {
		return "wordAndSharing/yongdigi";

	}

	// 매일 묵상(board)
	@RequestMapping(value = "/meditation", method = RequestMethod.GET)
	public String meditation(Model model) throws Exception {
		return "wordAndSharing/meditation";

	}

	// 생명샘 말씀(board)
	@RequestMapping(value = "/spring-of-life", method = RequestMethod.GET)
	public String springOfLife(Model model, @ModelAttribute("scri") SearchCriteria scri, HttpServletRequest rq)
			throws Exception {
		// 스프링 컨테이너가 // SearchCriteria scri = new SearchCriteria(); //
		// model.attribute("scri", scri); // 를 자동으로 해준다.

		logger.info("spring of life: 생명샘 말씀");
		categoryId = 27;

		// 로그인 안되어있는 상태에서도 볼 수 있음
		// if (principal != null) {
		// String m_id = principal.getName();
		// MemberVO memberVO = myPageService.mypage(m_id);
		// model.addAttribute("memberVO", memberVO);
		// }

		// 한 페이지에 글 15개씩 보이도록
		scri.setPerPageNum(15);

		// 쿼리 uri로 보낸 파라미터들 확인
		// System.out.println("query: " + rq.getQueryString());
		// System.out.println("s_content: " + rq.getParameter("s_content"));
		// System.out.println("searchType: " + scri.getSearchType());

		ArrayList<HashMap<String, Object>> springOfLifeList = boardService.listBoard(scri, categoryId);
		model.addAttribute("springOfLifeList", springOfLifeList);
		// model.addAttribute("s_content", s_content);
		// 단순히 jsp에서 select 선택 반영 위한 넘기기

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(boardService.countBoardList(scri, categoryId));

		// perPageNum 부여한 것 잘 가져오니? 네
		logger.info("perPageNum: " + pageMaker.getCri().getPerPageNum());

		model.addAttribute("pageMaker", pageMaker);

		// System.out.println(((SearchCriteria)(pageMaker.getCri())).getSearchType());

		return "wordAndSharing/springOfLife";

	}
	
	// content view
	@RequestMapping(value = "/spring-of-life/{id}", method = RequestMethod.GET)
	public String contentView(Model model, HttpServletRequest rq, @PathVariable long id) 
			throws Exception {

		logger.info("contentView: 글 내용 보기");	
		
		// 로그인 안되어있는 상태에서도 볼 수 있음
		// if (principal != null) {
		// String m_id = principal.getName();
		// MemberVO memberVO = myPageService.mypage(m_id);
		// model.addAttribute("memberVO", memberVO);
		// }

		// 쿼리 uri로 보낸 파라미터들 확인
		// System.out.println("query: " + rq.getQueryString());
		// System.out.println("s_content: " + rq.getParameter("s_content"));
		// System.out.println("searchType: " + scri.getSearchType());

		HashMap<String, Object> board = boardService.getBoard(id);
		model.addAttribute("board", board);
		
		return "content/content-view";
		// 디미토리 보니까 직장인 게시판 글이면 "work/글번호" 이렇게 되어있다.
	}

}

