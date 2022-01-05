package com.nlchurch.dto;

import java.sql.Timestamp;

// 게시글
public class CategoryDTO {

	private long id; // 게시판 번호
	private long parent_id; // 상위 게시판 번호: 상위가 없으면 0
	private String name; // 게시판 이름
	private String path; // 게시판 경로
	private Timestamp create_date; // 생성일
	private Timestamp last_update; // 수정일

	// constructors
	public CategoryDTO() {
	}
	
	public CategoryDTO(long id, long parent_id, String name, String path, Timestamp create_date,
			Timestamp last_update) {
		super();
		this.id = id;
		this.parent_id = parent_id;
		this.name = name;
		this.path = path;
		this.create_date = create_date;
		this.last_update = last_update;
	}

	// getters and setters
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getParent_id() {
		return parent_id;
	}

	public void setParent_id(long parent_id) {
		this.parent_id = parent_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
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

}