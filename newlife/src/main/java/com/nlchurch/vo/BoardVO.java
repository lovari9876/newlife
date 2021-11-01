package com.nlchurch.vo;

import java.sql.Timestamp;

// 게시글
public class BoardVO {

	private long id; // 게시글 번호
	private long category_id; // 게시판번호
	private long member_id; // 작성자 회원 번호
	private String title; // 글 제목
	private String content; // 글 내용
	private boolean show_status; // 보여주기 여부: 0=N, 1=Y
	private long view_tally; // 조회수
	private Timestamp create_date; // 작성일
	private Timestamp last_update; // 수정일

	// for resultMap
	private CategoryVO categoryVO;
	private MemberVO memberVO;

	// constructors
	public BoardVO() {
	}

	// getters and setters
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getCategory_id() {
		return category_id;
	}

	public void setCategory_id(long category_id) {
		this.category_id = category_id;
	}

	public long getMember_id() {
		return member_id;
	}

	public void setMember_id(long member_id) {
		this.member_id = member_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public boolean isShow_status() {
		return show_status;
	}

	public void setShow_status(boolean show_status) {
		this.show_status = show_status;
	}

	public long getView_tally() {
		return view_tally;
	}

	public void setView_tally(long view_tally) {
		this.view_tally = view_tally;
	}

	public Timestamp getCreate_date() {
		return create_date;
	}

	public void setCreate_date(Timestamp create_date) {
		this.create_date = create_date;
	}

	public Timestamp getLast_update() {
		return last_update;
	}

	public void setLast_update(Timestamp last_update) {
		this.last_update = last_update;
	}

	public CategoryVO getCategoryVO() {
		return categoryVO;
	}

	public void setCategoryVO(CategoryVO categoryVO) {
		this.categoryVO = categoryVO;
	}

	public MemberVO getMemberVO() {
		return memberVO;
	}

	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}

}