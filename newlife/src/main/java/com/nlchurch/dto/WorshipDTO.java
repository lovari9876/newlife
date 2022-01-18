package com.nlchurch.dto;

import java.sql.Date;

// 예배와 영상
// 평소엔 예배지만 유튜브 특별영상들도 포함
public class WorshipDTO {

	private long id; // 번호
	private long board_id; // 게시글 번호
	private String service_name; // 예배 이름: 수요예배, 주일 2부 예배, 성회 등 (쉼표로 나눠서 입력하게 하기)
	private Date service_date; // 예배 실제 날짜: only date (MySql에서 date타입)
	private String minister; // 설교자: '김용덕 목사'처럼 이름과 직책 같이 적어넣기 (특별 영상이면 설교자가 없으므로 default 0)
	private String bible; // 성경 몇장 몇절-몇절: 그냥 통째로 넣을 것 (특별 영상이면 성경이 없으므로 default 0)

	// for resultMap
	private BoardDTO boardDTO;

	// constructors
	public WorshipDTO() {
	}

	// getters and setters
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getBoard_id() {
		return board_id;
	}

	public void setBoard_id(long board_id) {
		this.board_id = board_id;
	}

	public String getService_name() {
		return service_name;
	}

	public void setService_name(String service_name) {
		this.service_name = service_name;
	}

	public Date getService_date() {
		return service_date;
	}

	public void setService_date(Date service_date) {
		this.service_date = service_date;
	}

	public String getMinister() {
		return minister;
	}

	public void setMinister(String minister) {
		this.minister = minister;
	}

	public String getBible() {
		return bible;
	}

	public void setBible(String bible) {
		this.bible = bible;
	}

	public BoardDTO getBoardDTO() {
		return boardDTO;
	}

	public void setBoardDTO(BoardDTO boardDTO) {
		this.boardDTO = boardDTO;
	}

}