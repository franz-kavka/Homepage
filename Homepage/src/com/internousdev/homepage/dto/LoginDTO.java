package com.internousdev.homepage.dto;

public class LoginDTO {
	private String loginId;
	private String loginPassword;
	private String userName;
	private String id;
	boolean LoginFlg;

	public String getLoginId() {
		return loginId;
	}
	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}
	public String getLoginPassword() {
		return loginPassword;
	}
	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public boolean getLoginFlg() {
		return LoginFlg;
	}
	public void setLoginFlg(boolean loginFlg) {
		LoginFlg = loginFlg;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}


}
