package com.nt.dto;

public class UserLoginDatails {

	private String userName;
	private String pwd;
	
	public UserLoginDatails() {
		super();
	}
	public UserLoginDatails(String userName, String pwd) {
		super();
		this.userName = userName;
		this.pwd = pwd;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
}
