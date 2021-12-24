package com.nlchurch.controller;

import java.lang.annotation.Repeatable;
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

// 대메뉴: 새생활뉴스
// 주보 새소식 + 사이트 공지
// 페이지는 1개, 게시판 category_id 는 8, 9 두 개

@Controller
public class NewsController {

	private static final Logger logger = LoggerFactory.getLogger(NewsController.class);

	private int categoryId = 0;

	@Autowired
	private BoardService boardService;

	// 새생활뉴스
	@RequestMapping(value = "/news", method = RequestMethod.GET)
	public String news(Model model, @ModelAttribute("scri") SearchCriteria scri, HttpServletRequest rq)
			throws Exception {
		// 스프링 컨테이너가 // SearchCriteria scri = new SearchCriteria(); //
		// model.attribute("scri", scri); // 를 자동으로 해준다.

		logger.info("news: 새생활뉴스");
		categoryId = 27;
		
		// 한 페이지에 글 12개씩 보이도록
		// list가 media query에 따라 3줄->2줄->1줄 로 변해서 6의 배수여야 함
		scri.setPerPageNum(12); 

		// 쿼리 uri로 보낸 파라미터들 확인
		// System.out.println("query: " + rq.getQueryString());
		// System.out.println("s_content: " + rq.getParameter("s_content"));
		// System.out.println("searchType: " + scri.getSearchType());

		ArrayList<HashMap<String, Object>> newsList = boardService.listBoard(scri, categoryId);
		model.addAttribute("newsList", newsList);
		// model.addAttribute("s_content", s_content);
		// 단순히 jsp에서 select 선택 반영 위한 넘기기

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(boardService.countBoardList(scri, categoryId));

		// perPageNum 부여한 것 잘 가져오니? 네
		logger.info("perPageNum: " + pageMaker.getCri().getPerPageNum());

		model.addAttribute("pageMaker", pageMaker);

		// logger.info(((SearchCriteria)(pageMaker.getCri())).getSearchType());

		return "news/news";
	}
	
}
