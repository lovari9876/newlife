package com.nlchurch.dto;

// 게시글
public class Board_fileDTO {

	private long file_id; // 파일 번호
	private long board_id; // 게시글 번호

	// for resultMap
	private FileDTO fileDTO;
	private BoardDTO boardDTO;

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

	public FileDTO getFileDTO() {
		return fileDTO;
	}

	public void setFileDTO(FileDTO fileDTO) {
		this.fileDTO = fileDTO;
	}

	public BoardDTO getBoardDTO() {
		return boardDTO;
	}

	public void setBoardDTO(BoardDTO boardDTO) {
		this.boardDTO = boardDTO;
	}

	

}