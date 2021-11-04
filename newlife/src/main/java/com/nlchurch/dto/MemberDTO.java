package com.nlchurch.dto;

import java.sql.Timestamp;

// 게시글
public class MemberDTO {

	private long id; // 회원 번호
	private long role_id; // 권한 번호
	private String username; // 멤버 아이디
	private String password; // 비밀번호
	private Timestamp last_password_change; // 비밀번호 수정일시
	private String name; // 이름
	private String nickname; // 닉네임
	private String email; // 이메일
	private boolean is_withdraw; // 탈퇴여부: 0=N=false, 1=Y=true
	private Timestamp create_date; // 작성일
	private Timestamp last_update; // 수정일
	private Timestamp withdraw_date; // 탈퇴일

	// for resultMap
	private RoleDTO roleVO;

	// constructors
	public MemberDTO() {
	}

	// getters and setters
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getRole_id() {
		return role_id;
	}

	public void setRole_id(long role_id) {
		this.role_id = role_id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Timestamp getLast_password_change() {
		return last_password_change;
	}

	public void setLast_password_change(Timestamp last_password_change) {
		this.last_password_change = last_password_change;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public boolean isIs_withdraw() {
		return is_withdraw;
	}

	public void setIs_withdraw(boolean is_withdraw) {
		this.is_withdraw = is_withdraw;
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

	public Timestamp getWithdraw_date() {
		return withdraw_date;
	}

	public void setWithdraw_date(Timestamp withdraw_date) {
		this.withdraw_date = withdraw_date;
	}

	public RoleDTO getRoleVO() {
		return roleVO;
	}

	public void setRoleVO(RoleDTO roleVO) {
		this.roleVO = roleVO;
	}

}