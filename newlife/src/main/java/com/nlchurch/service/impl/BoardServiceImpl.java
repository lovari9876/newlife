package com.nlchurch.service.impl;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nlchurch.dto.BoardDTO;
import com.nlchurch.mapper.BoardMapper;
import com.nlchurch.service.BoardService;
import com.nlchurch.util.paging.SearchCriteria;

@Service("BoardService")
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardMapper boardMapper;

	// list
	@Override
	public ArrayList<HashMap<String, Object>> listBoard(SearchCriteria scri, int categoryId) {
		return boardMapper.listBoard(scri, categoryId);
	}

	// list count
	@Override
	public int countBoardList(SearchCriteria scri, int categoryId) {
		return boardMapper.countBoardList(scri, categoryId);
	}

	// content view
	@Override
	public HashMap<String, Object> getBoard(long id) {
		return boardMapper.getBoard(id);
	}

	// 글 insert
	@Override
	public void createBoard(BoardDTO boardDTO) { // 나중에 파라미터로 멤버 id 들어감
		boardMapper.createBoard(boardDTO);
	}

	// 글 update
	@Override
	public void update(BoardDTO boardDTO) {
		boardMapper.update(boardDTO);
	}

	// 글 delete
	@Override
	public void deleteBoard(BoardDTO boardDTO) {
		boardMapper.deleteBoard(boardDTO);
	}

	// 조회수
	@Override
	public void countView(long id) {
		boardMapper.countView(id);
	}

}
