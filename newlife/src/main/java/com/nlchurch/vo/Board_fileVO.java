package com.nlchurch.vo;

// 게시글
public class Board_fileVO {

	private long file_id; // 파일 번호
	private long board_id; // 게시글 번호

	// for resultMap
	private FileVO fileVO;
	private BoardVO boardVO;

	// constructors
	public Board_fileVO() {
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

	public FileVO getFileVO() {
		return fileVO;
	}

	public void setFileVO(FileVO fileVO) {
		this.fileVO = fileVO;
	}

	public BoardVO getBoardVO() {
		return boardVO;
	}

	public void setBoardVO(BoardVO boardVO) {
		this.boardVO = boardVO;
	}

}