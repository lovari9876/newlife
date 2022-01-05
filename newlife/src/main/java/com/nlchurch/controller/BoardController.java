package com.nlchurch.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nlchurch.dto.BoardDTO;
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
	public String getBoard(@PathVariable long id, Model model) throws Exception {

		logger.info("getBoard: 글 내용 보기");

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

		return "common/getBoard";
	}

	// 글쓰기 write board view
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String writeBoard(@ModelAttribute("board") BoardDTO board, Model model) throws Exception {

		logger.info("write: 글 쓰기 뷰");

		// 게시판 category 선택하는 <select>의 <option> value 받아오기
		// 유지보수가 편하려면!
		ArrayList<HashMap<String, Object>> categoryList = boardService.listCategory();
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("board", board);
		
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

		return "common/writeBoard";
	}
	
	// createBoard 글 db에 저장
	@RequestMapping(value = "/create-board", method = RequestMethod.POST)
	public String createBoard(@ModelAttribute("board") BoardDTO board) throws Exception {

		logger.info("createBoard: 글 쓰기");

		logger.info("title: " + board.getTitle());
		logger.info("category_id: " + board.getCategory_id());
		
		// 일단 가라로 member_id 써주기..
		logger.info(board.toString());
		board.setMember_id(1);		
		
		// 글 insert
		boardService.createBoard(board);
		
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
		
		String path = boardService.getCategoryPath(categoryId);		
		logger.info("게시판 경로: " + path);
		
		// 쓴 글 return
		return path + "/" + board.getId(); //  c_path + "/" + id
	} 
	
	// update board
	// delete board
	
	
	

}
