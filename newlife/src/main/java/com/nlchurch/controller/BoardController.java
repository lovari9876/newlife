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

	@Autowired
	private BoardService boardService;

	
	
	
	// 글 상세보기 get board ==========================================================================
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

		// 조회수 +1
		boardService.countView(id);
		
		// get board 글 내용 보기
		HashMap<String, Object> board = boardService.getBoard(id);
		
		// board 너 있니?
		// 없으면 NullPointerException 발생
		// null인 board에다가 뭘 시도했기 때문에..
		// 걸리면 에러페이지 처리!
		logger.info(board.toString());
			
		model.addAttribute("board", board);

		return "board/getBoard";
	}

	
	// 글쓰기 write board view ==========================================================================
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String writeBoard(@ModelAttribute("board") BoardDTO board, Model model) throws Exception {

		logger.info("writeBoard: 글 쓰기 뷰");

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

		return "board/writeBoard";
	}
	
	
	// createBoard 글 db에 저장 ==========================================================================
	@RequestMapping(value = "/create-board", method = RequestMethod.POST)
	public String createBoard(@ModelAttribute("board") BoardDTO board) throws Exception {

		logger.info("createBoard: 글 쓰기");
		
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
		
		String path = boardService.getCategoryPath(board.getCategory_id());		
		logger.info("게시판 경로: " + path);
		
		// 쓴 글 return
		// mapper.xml에서 useGeneratedKeys="true" keyProperty="id" 해줘서 getId()로 불러오기 가능
		return "redirect:" + path + "/" + board.getId(); //  c_path + "/" + id
		// redirect:를 해줘야 controller 거쳐간다.
		// controller method 다시 호출하는 것!
		// 내가 controller 매핑을 /로 시작하도록 해뒀기에 redirect:/로 시작해야 정상적 작동한다.
		// DB에 path가 controller RequestMapping대로 /로 시작하도록 저장해둠
	} 


	// 글 수정 뷰  modify board view ==========================================================================
	@RequestMapping(value = "/modify/{id}", method = RequestMethod.GET)
	public String modifyBoard(@PathVariable long id, Model model) throws Exception {

		logger.info("modifyBoard: 글 수정 뷰");

		// 게시판 category 선택하는 <select>의 <option> value 받아오기
		// 유지보수가 편하려면!
		ArrayList<HashMap<String, Object>> categoryList = boardService.listCategory();
		model.addAttribute("categoryList", categoryList);
		
		// get board
		HashMap<String, Object> board = boardService.getBoard(id);
		model.addAttribute("board", board);
		
		return "board/modifyBoard";
	}

	
	// 글 수정 update board ==========================================================================
	@RequestMapping(value = "/update-board", method = RequestMethod.POST)
	public String updateBoard(@ModelAttribute("board") BoardDTO board) throws Exception {

		logger.info("updateBoard: 글 수정");
		logger.info(board.toString());
		
		// 글 update
		boardService.updateBoard(board);
				
		String path = boardService.getCategoryPath(board.getCategory_id());		
		logger.info("게시판 경로: " + path);
		
		// 쓴 글 return
		// mapper.xml에서 useGeneratedKeys="true" keyProperty="id" 해줘서 getId()로 불러오기 가능
		return "redirect:" + path + "/" + board.getId(); //  c_path + "/" + id
		// redirect:를 해줘야 controller 거쳐간다.
		// controller method 다시 호출하는 것!
		// 내가 controller 매핑을 /로 시작하도록 해뒀기에 redirect:/로 시작해야 정상적 작동한다.
		// DB에 path가 controller RequestMapping대로 /로 시작하도록 저장해둠
	} 
	
	
	// 글 삭제 delete board ==========================================================================
	@RequestMapping(value = "/delete-board/{path}/{id}", method = RequestMethod.GET)
	public String deleteBoard(@PathVariable("path") String path, @PathVariable("id") long id) throws Exception {

		logger.info("deleteBoard: 글 수정");
		
		// 글 delete
		boardService.deleteBoard(id);
		
		logger.info("게시판 경로: " + path);
		
		return "redirect:/" + path; // 해당 게시판 list로 가기
		// redirect:를 해줘야 controller 거쳐간다.
		// controller method 다시 호출하는 것!
		// 내가 controller 매핑을 /로 시작하도록 해뒀기에 redirect:/로 시작해야 정상적 작동한다.
		// DB에 path가 controller RequestMapping대로 /로 시작하도록 저장해둠
	} 
	
	

}
