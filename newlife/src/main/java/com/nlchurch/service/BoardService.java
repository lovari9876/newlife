package com.nlchurch.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.nlchurch.dto.BoardDTO;
import com.nlchurch.dto.CategoryDTO;
import com.nlchurch.util.paging.SearchCriteria;

public interface BoardService {

	// list boards
	public ArrayList<HashMap<String, Object>> listBoards(SearchCriteria scri, long categoryId);

	// list worship(video) boards
	public ArrayList<HashMap<String, Object>> listWorshipBoards(SearchCriteria scri, long categoryId);
	
	// count boards
	public long countBoards(SearchCriteria scri, long categoryId);

	// content view
	public HashMap<String, Object> getBoard(long id);

	// list categories
	public ArrayList<HashMap<String, Object>> listCategories();

	// category 하나를 id로 가져오기
	public CategoryDTO getCategoryById(long id);

	// category 하나를 path로 가져오기
	public CategoryDTO getCategoryByPath(String path);

	// 글 insert
	public void createBoard(BoardDTO boardDTO);

	// 글 update
	public void updateBoard(BoardDTO boardDTO);

	// 글 delete
	public void deleteBoard(long id);

	// 조회수
	public void countViews(long id);

	///////////////////////////////////////////
	// admin용 delete
//	public void deleteContent(long id);
}
