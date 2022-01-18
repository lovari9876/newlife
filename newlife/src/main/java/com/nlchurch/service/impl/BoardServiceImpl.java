package com.nlchurch.service.impl;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nlchurch.dto.BoardDTO;
import com.nlchurch.dto.CategoryDTO;
import com.nlchurch.mapper.BoardMapper;
import com.nlchurch.service.BoardService;
import com.nlchurch.util.paging.SearchCriteria;

@Service("boardService")
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardMapper boardMapper;

	// list boards
	@Override
	public ArrayList<HashMap<String, Object>> listBoards(SearchCriteria scri, long categoryId) {
		return boardMapper.listBoards(scri, categoryId);
	}
	
	// list worship(video) boards
	@Override
	public ArrayList<HashMap<String, Object>> listWorshipBoards(SearchCriteria scri, long categoryId) {
		return boardMapper.listWorshipBoards(scri, categoryId);
	}

	// count boards
	@Override
	public long countBoards(SearchCriteria scri, long categoryId) {
		return boardMapper.countBoards(scri, categoryId);
	}

	// content view
	@Override
	public HashMap<String, Object> getBoard(long id) {
		return boardMapper.getBoard(id);
	}

	// list categories
	@Override
	public ArrayList<HashMap<String, Object>> listCategories() {
		return boardMapper.listCategories();
	}

	// category 하나를 id로 가져오기
	public CategoryDTO getCategoryById(long id) {
		return boardMapper.getCategoryById(id);
	}

	// category 하나를 path로 가져오기
	public CategoryDTO getCategoryByPath(String path) {
		return boardMapper.getCategoryByPath(path);
	}

	// 글 insert
	@Override
	public void createBoard(BoardDTO boardDTO) { // 나중에 파라미터로 멤버 id 들어감
		boardMapper.createBoard(boardDTO);
	}

	// 글 update
	@Override
	public void updateBoard(BoardDTO boardDTO) {
		boardMapper.updateBoard(boardDTO);
	}

	// 글 delete
	@Override
	public void deleteBoard(long id) {
		boardMapper.deleteBoard(id);
	}

	// 조회수
	@Override
	public void countViews(long id) {
		boardMapper.countViews(id);
	}


}
