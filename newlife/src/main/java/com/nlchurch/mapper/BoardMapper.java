package com.nlchurch.mapper;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Param;

import com.nlchurch.dto.BoardDTO;
import com.nlchurch.util.paging.SearchCriteria;

// MyBatis는 Data Mapper의 한 종류
// 그래서 MyBatis를 쓰면 sqlSession를 객체를 통해, xml에 저장한 sql문을 실행해서 결과도 받아다 준다.
// 이런 Access를 담당해주기 때문에 DAO가 필요없고, java class파일 내부에 sql문을 쓸 필요도 없음
// 그래서 DAO 대신 data mapping 해준다는 의미로, Mapper 클래스 사용

public interface BoardMapper {

	// list
	public ArrayList<HashMap<String, Object>> listBoard(SearchCriteria scri, @Param("categoryId") String categoryId);

	// list count
	public int countBoardList(SearchCriteria scri, @Param("categoryId") String categoryId);

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
