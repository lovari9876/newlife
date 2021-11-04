package com.nlchurch.dto;

// 게시글
public class RoleDTO {

	private long id; // 권한 번호
	private String authority; // 권한

	// constructors
	public RoleDTO() {
	}

	// getters and setters
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

}