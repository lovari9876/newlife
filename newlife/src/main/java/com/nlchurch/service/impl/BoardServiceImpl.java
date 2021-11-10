package com.nlchurch.service.impl;

import java.util.ArrayList;
import java.util.HashMap;

import com.nlchurch.dto.BoardDTO;
import com.nlchurch.mapper.BoardMapper;
import com.nlchurch.service.BoardService;
import com.nlchurch.util.paging.SearchCriteria;

public class BoardServiceImpl implements BoardService {

	@Override
	public ArrayList<HashMap<String, Object>> listBoard(SearchCriteria scri, String s_content, String sort) {
		return BoardMapper.selectTradeList(scri, s_content, sort);
	}

	@Override
	public int countBoardList(SearchCriteria scri, String s_content) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public HashMap<String, Object> getBoard(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void createBoard(BoardDTO boardDTO, int m_id) {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(BoardDTO boardDTO) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteBoard(BoardDTO boardDTO) {
		// TODO Auto-generated method stub

	}

	@Override
	public void countView(long id) {
		// TODO Auto-generated method stub

	}

}
