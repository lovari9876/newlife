package com.nlchurch.vo;

import java.sql.Timestamp;

// 게시글
public class FileVO {

	private long id; // 파일 번호
	private String name; // 파일 이름
	private String org_name; // 원본 파일 이름
	private String attach_type; // 사실 아직 모름... ㅠ
	private long byte_size; // 크기
	private String type; // 확장자
	private boolean show_status; // 보여주기 여부: 0=N, 1=Y
	private int height; // 높이
	private int width; // 너비
	private Timestamp create_date; // 작성일
	private Timestamp last_update; // 수정일

	// constructors
	public FileVO() {
	}

	// getters and setters
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getOrg_name() {
		return org_name;
	}

	public void setOrg_name(String org_name) {
		this.org_name = org_name;
	}

	public String getAttach_type() {
		return attach_type;
	}

	public void setAttach_type(String attach_type) {
		this.attach_type = attach_type;
	}

	public long getByte_size() {
		return byte_size;
	}

	public void setByte_size(long byte_size) {
		this.byte_size = byte_size;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public boolean isShow_status() {
		return show_status;
	}

	public void setShow_status(boolean show_status) {
		this.show_status = show_status;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getWidth() {
		return width;
	}

	public void setWidth(int width) {
		this.width = width;
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