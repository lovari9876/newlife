package com.nlchurch.dto;

// 게시글
public class Board_fileDTO {

	private long file_id; // 파일 번호
	private long board_id; // 게시글 번호

	// for resultMap
	private FileDTO fileVO;
	private BoardDTO boardVO;

	// constructors
	public Board_fileDTO() {
	}

	// getters and setters
	public long getFile_id() {
		return file_id;
	}

	public void setFile_id(long file_id) {
		this.file_id = file_id;
	}

	public long getBoard_id() {
		return board_id;
	}

	public void setBoard_id(long board_id) {
		this.board_id = board_id;
	}

	public FileDTO getFileVO() {
		return fileVO;
	}

	public void setFileVO(FileDTO fileVO) {
		this.fileVO = fileVO;
	}

	public BoardDTO getBoardVO() {
		return boardVO;
	}

	public void setBoardVO(BoardDTO boardVO) {
		this.boardVO = boardVO;
	}

}