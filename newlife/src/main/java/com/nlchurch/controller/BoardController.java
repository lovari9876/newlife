package com.nlchurch.controller;

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

// 일반적인 게시판들의 공유하는 기능 컨트롤러
// board view
// write view

@Controller
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	private int categoryId = 0;

	@Autowired
	private BoardService boardService;

	// board view
	@RequestMapping(value = { "/worship/{id}", "/youth-worship/{id}", "/confession-praise/{id}", "/time-of-hermon/{id}",
			"/yongdigi/{id}", "/meditation/{id}", "/spring-of-life/{id}", "/news/{id}" }, method = RequestMethod.GET)
	public String getBoardView(Model model, HttpServletRequest rq, @PathVariable long id) throws Exception {

		logger.info("getBoardView: 글 내용 보기");

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

		return "common/boardView";
	}

	// create board view
	@RequestMapping(value = "/create-board-view", method = RequestMethod.GET)
	public String createBoardView(Model model, HttpServletRequest rq) throws Exception {

		logger.info("createBoardView: 글 쓰기 뷰");

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

		return "common/createBoardView";
	}
	
	// create board	
	@RequestMapping(value = "/create-board", method = RequestMethod.POST)
	public String createBoard(Model model, HttpServletRequest rq /*@ModelAttribute("")*/ ) throws Exception {

		logger.info("createBoard: 글 쓰기");

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

		return ""; //  c_path + "/" + id
	} 
	
	// update board
	// delete board
	
	
	

}
