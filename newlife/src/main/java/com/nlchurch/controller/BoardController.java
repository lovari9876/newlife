package com.nlchurch.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale.Category;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.ILoggerFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nlchurch.dto.BoardDTO;
import com.nlchurch.dto.CategoryDTO;
import com.nlchurch.service.BoardService;
import com.nlchurch.util.paging.PageMaker;
import com.nlchurch.util.paging.SearchCriteria;

// 게시판 컨트롤러
// board view
// write view

@Controller
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Autowired
	private BoardService boardService;

	// ==========================================================================
	// 게시판 불러오기 listBoards
	// 글 게시판, 영상 게시판만 분리
	// ==========================================================================
	@GetMapping(value = { "/yongdigi", "/meditation", "/spring-of-life", "/news" })
	public String listBoards(HttpServletRequest request, @ModelAttribute("scri") SearchCriteria scri, Model model)
			throws Exception {

		logger.info("listBoards: 게시판 글 목록");
		logger.info("request.getServletPath(): " + request.getServletPath());

		// 필요한 변수 선언
		String returnString = ""; // return값
		CategoryDTO category = null; // view에서 필요한 해당 게시판 정보
		long categoryId = 0; // getId() 반복 막기

		// path를 category별 분기 처리
		if (request.getServletPath().equals("/yongdigi")) {
			logger.info("yongdigi 게시판");
			category = boardService.getCategoryByPath("/yongdigi");
			categoryId = category.getId();
			returnString = "board/listBoards";

		} else if (request.getServletPath().equals("/meditation")) {
			logger.info("meditation 게시판");
			category = boardService.getCategoryByPath("/meditation");
			categoryId = category.getId();
			returnString = "board/listBoards";

		} else if (request.getServletPath().equals("/spring-of-life")) {
			logger.info("spring-of-life 게시판");
			category = boardService.getCategoryByPath("/spring-of-life");
			categoryId = category.getId();
			returnString = "board/listBoards";

		} else if (request.getServletPath().equals("/news")) {
			logger.info("news 게시판");
			category = boardService.getCategoryByPath("/news");
			categoryId = category.getId();
			returnString = "board/listBoards";
		}

		// 한 페이지에 글 12개씩 보이도록
		// list가 media query에 따라 3줄->2줄->1줄 로 변해서 6의 배수여야 함
		scri.setPerPageNum(12);

		// 쿼리 uri로 보낸 파라미터들 확인
		// System.out.println("query: " + rq.getQueryString());
		// System.out.println("s_content: " + rq.getParameter("s_content"));
		// System.out.println("searchType: " + scri.getSearchType());

		model.addAttribute("category", category);

		ArrayList<HashMap<String, Object>> boardList = boardService.listBoards(scri, categoryId);
		model.addAttribute("boardList", boardList);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(boardService.countBoards(scri, categoryId));

		// perPageNum 부여한 것 잘 가져오니? 네
		logger.info("perPageNum: " + pageMaker.getCri().getPerPageNum());

		model.addAttribute("pageMaker", pageMaker);

		// logger.info(((SearchCriteria)(pageMaker.getCri())).getSearchType());

		return returnString;
	}

	// ==========================================================================
	// 영상 게시판 불러오기 listWorshipBoards: 영상게시판은 worship 테이블까지 같이 가져옴
	// 글 게시판, 영상 게시판만 분리
	// ==========================================================================
	@GetMapping(value = { "/worship", "/youth-worship", "/confession-praise", "/time-of-hermon", "/tower-of-david" })
	public String listWorshipBoards(HttpServletRequest request, @ModelAttribute("scri") SearchCriteria scri, Model model)
			throws Exception {

		logger.info("listWorshipBoards: 영상 게시판 글 목록");
		logger.info("request.getServletPath(): " + request.getServletPath());

		// 필요한 변수 선언
		String returnString = ""; // return값
		CategoryDTO category = null; // view에서 필요한 해당 게시판 정보
		long categoryId = 0; 

		// path를 category별 분기 처리
		if (request.getServletPath().equals("/worship")) {
			logger.info("worship 게시판");
			category = boardService.getCategoryByPath("/worship");
			categoryId = category.getId();
			returnString = "board/listWorshipBoards";

		} else if (request.getServletPath().equals("/youth-worship")) {
			logger.info("youth-worship 게시판");
			category = boardService.getCategoryByPath("/youth-worship");
			categoryId = category.getId();
			returnString = "board/listWorshipBoards";

		} else if (request.getServletPath().equals("/confession-praise")) {
			logger.info("confession-praise 게시판");
			category = boardService.getCategoryByPath("/confession-praise");
			categoryId = category.getId();
			returnString = "board/listWorshipBoards";

		} else if (request.getServletPath().equals("/time-of-hermon")) {
			logger.info("time-of-hermon 게시판");
			category = boardService.getCategoryByPath("/time-of-hermon");
			categoryId = category.getId();
			returnString = "board/listWorshipBoards";

		} else if (request.getServletPath().equals("/tower-of-david")) {
			logger.info("tower-of-david 게시판");
			category = boardService.getCategoryByPath("/tower-of-david");
			categoryId = category.getId();
			returnString = "board/listWorshipBoards";
		}

		// 한 페이지에 글 12개씩 보이도록
		// list가 media query에 따라 3줄->2줄->1줄 로 변해서 6의 배수여야 함
		scri.setPerPageNum(12);

		// 쿼리 uri로 보낸 파라미터들 확인
		// System.out.println("query: " + rq.getQueryString());
		// System.out.println("s_content: " + rq.getParameter("s_content"));
		// System.out.println("searchType: " + scri.getSearchType());

		model.addAttribute("category", category);

		ArrayList<HashMap<String, Object>> boardList = boardService.listWorshipBoards(scri, categoryId);
		model.addAttribute("boardList", boardList);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(boardService.countBoards(scri, categoryId));

		// perPageNum 부여한 것 잘 가져오니? 네
		logger.info("perPageNum: " + pageMaker.getCri().getPerPageNum());

		model.addAttribute("pageMaker", pageMaker);

		// logger.info(((SearchCriteria)(pageMaker.getCri())).getSearchType());

		return returnString;
	}

	// ==========================================================================
	// 글 상세보기 get board
	// ==========================================================================
	@GetMapping(value = { "/worship/{id}", "/youth-worship/{id}", "/confession-praise/{id}", "/time-of-hermon/{id}",
			"/yongdigi/{id}", "/meditation/{id}", "/spring-of-life/{id}", "/news/{id}" })
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
		boardService.countViews(id);

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
	
	// ==========================================================================
	// 글쓰기 write board view
	// ==========================================================================
	@GetMapping(value = "/write")
	public String writeBoard(@ModelAttribute("board") BoardDTO board, Model model) throws Exception {

		logger.info("writeBoard: 글 쓰기 뷰");

		// 게시판 category 선택하는 <select>의 <option> value 받아오기
		ArrayList<HashMap<String, Object>> categoryList = boardService.listCategories();
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("board", board);

		return "board/writeBoard";
	}

	// ==========================================================================
	// createBoard 글 db에 저장
	// ==========================================================================
	@PostMapping(value = "/create-board")
	public String createBoard(@ModelAttribute("board") BoardDTO board) throws Exception {

		logger.info("createBoard: 글 쓰기");

		// 일단 가라로 member_id 써주기..
		logger.info(board.toString());
		board.setMember_id(1);

		// 글 insert
		boardService.createBoard(board);

		String path = boardService.getCategoryById(board.getCategory_id()).getPath();
		logger.info("게시판 경로: " + path);

		// 쓴 글 return
		// mapper.xml에서 useGeneratedKeys="true" keyProperty="id" 해줘서 getId()로 불러오기 가능
		return "redirect:" + path + "/" + board.getId(); // c_path + "/" + id
		// redirect:를 해줘야 controller 거쳐간다.
		// controller method 다시 호출하는 것!
		// 내가 controller 매핑을 /로 시작하도록 해뒀기에 redirect:/로 시작해야 정상적 작동한다.
		// DB에 path가 controller RequestMapping대로 /로 시작하도록 저장해둠
	}

	// ==========================================================================
	// 글 수정 뷰 modify board view
	// ==========================================================================
	@GetMapping(value = "/modify/{id}")
	public String modifyBoard(@PathVariable long id, Model model) throws Exception {

		logger.info("modifyBoard: 글 수정 뷰");

		// 게시판 category 선택하는 <select>의 <option> value 받아오기
		// 유지보수가 편하려면!
		ArrayList<HashMap<String, Object>> categoryList = boardService.listCategories();
		model.addAttribute("categoryList", categoryList);

		// get board
		HashMap<String, Object> board = boardService.getBoard(id);
		model.addAttribute("board", board);

		return "board/modifyBoard";
	}

	// ==========================================================================
	// 글 수정 update board
	// ==========================================================================
	@PostMapping(value = "/update-board")
	public String updateBoard(@ModelAttribute("board") BoardDTO board) throws Exception {

		logger.info("updateBoard: 글 수정");
		logger.info(board.toString());

		// 글 update
		boardService.updateBoard(board);

		String path = boardService.getCategoryById(board.getCategory_id()).getPath();
		logger.info("게시판 경로: " + path);

		// 쓴 글 return
		// mapper.xml에서 useGeneratedKeys="true" keyProperty="id" 해줘서 getId()로 불러오기 가능
		return "redirect:" + path + "/" + board.getId(); // c_path + "/" + id
		// redirect:를 해줘야 controller 거쳐간다.
		// controller method 다시 호출하는 것!
		// 내가 controller 매핑을 /로 시작하도록 해뒀기에 redirect:/로 시작해야 정상적 작동한다.
		// DB에 path가 controller RequestMapping대로 /로 시작하도록 저장해둠
	}

	// ==========================================================================
	// 글 삭제 delete board
	// ==========================================================================
	@GetMapping(value = "/delete-board/{path}/{id}")
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
