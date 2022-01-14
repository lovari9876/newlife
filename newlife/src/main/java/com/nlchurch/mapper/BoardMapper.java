package com.nlchurch.mapper;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.nlchurch.dto.BoardDTO;
import com.nlchurch.dto.CategoryDTO;
import com.nlchurch.util.paging.SearchCriteria;

// MyBatis는 Data Mapper의 한 종류
// 그래서 MyBatis를 쓰면 sqlSession를 객체를 통해, xml에 저장한 sql문을 실행해서 결과도 받아다 준다.
// 이런 Access를 담당해주기 때문에 DAO가 필요없고, java class파일 내부에 sql문을 쓸 필요도 없음
// 그래서 DAO 대신 data mapping 해준다는 의미로, Mapper 클래스 사용

@Mapper
public interface BoardMapper {

	// list boards
	public ArrayList<HashMap<String, Object>> listBoards(SearchCriteria scri, @Param("categoryId") long categoryId);

	// count boards
	public long countBoards(SearchCriteria scri, @Param("categoryId") long categoryId);

	// content view
	public HashMap<String, Object> getBoard(@Param("id") long id);
	
	// list categories
	public ArrayList<HashMap<String, Object>> listCategories();

	// category 하나를 id로 가져오기
	public CategoryDTO getCategoryById(@Param("id") long id);

	// category 하나를 path로 가져오기
	public CategoryDTO getCategoryByPath(@Param("path") String path);
	
	// 글 insert
	public void createBoard(@Param("boardDTO") BoardDTO boardDTO);

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
