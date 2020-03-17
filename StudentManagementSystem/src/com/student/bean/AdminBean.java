package com.student.bean;

public class AdminBean {
	
	private String userID;
	private String adminPassWord;
	private String adminEmail;
	
	public AdminBean() {
		
	}

	public AdminBean(String userID, String adminPassWord, String adminEmail) {
		super();
		this.userID = userID;
		this.adminPassWord = adminPassWord;
		this.adminEmail = adminEmail;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getAdminPassWord() {
		return adminPassWord;
	}

	public void setAdminPassWord(String adminPassWord) {
		this.adminPassWord = adminPassWord;
	}

	public String getAdminEmail() {
		return adminEmail;
	}

	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}
	
}
