package com.sit21c.login.vo;

public class LoginVo {
	
	//유저번호
	private int no;
	//유저id
	private String id;
	//유저비밀번호
	private String password;
	//유저명
	private String name;
	//유저권한
	private String auth;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAuth() {
		return auth;
	}
	public void setAuth(String auth) {
		this.auth = auth;
	}
	
}
