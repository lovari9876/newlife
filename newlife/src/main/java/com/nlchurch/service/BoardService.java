package com.nlchurch.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.nlchurch.dto.BoardDTO;
import com.nlchurch.util.paging.SearchCriteria;

public interface BoardService {

	// list
	public ArrayList<HashMap<String, Object>> listBoard(SearchCriteria scri, int categoryId);

	// list count
	public int countBoardList(SearchCriteria scri, int categoryId);

	// content view
	public HashMap<String, Object> getBoard(long id);

	// 글 insert
	public void createBoard(BoardDTO boardDTO);

	// 글 update
	public void update(BoardDTO boardDTO);

	// 글 delete
	public void deleteBoard(BoardDTO boardDTO);

	// 조회수
	public void countView(long id);

	///////////////////////////////////////////
	// admin용 delete
//	public void deleteContent(long id);
}
