package com.nlchurch.mapper;

import java.util.ArrayList;
import java.util.HashMap;

import com.nlchurch.dto.BoardDTO;
import com.nlchurch.util.paging.SearchCriteria;

public interface BoardMapper {

	// list
	public ArrayList<HashMap<String, Object>> listBoard(SearchCriteria scri, String s_content, String sort);

	// list count
	public int countBoardList(SearchCriteria scri, String s_content);

	// content view
	public HashMap<String, Object> getBoard(long id);

	// 글 insert
	public void createBoard(BoardDTO boardDTO, int m_id);

	// 글 update
	public void update(BoardDTO boardDTO);

	// delete
	public void deleteBoard(BoardDTO boardDTO);

	// 조회수
	public void countView(long id);

	///////////////////////////////////////////
	// admin용 delete
//	public void deleteContent(long id);
}
