package com.internousdev.homepage.action;
import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class BlogPreviewAction extends ActionSupport implements SessionAware{
	public Map<String,Object>session;
	private String articleTitle;
	private String articleBody;
	private String articleImg;
	private String date;
	public String execute() throws SQLException{
		if(articleImg.isEmpty()){
		this.articleImg=null;
	}
		this.articleBody=articleBody.replace("\r\n", "<br>");
		return SUCCESS;
	}

	public String getArticleTitle() {
		return articleTitle;
	}


	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}


	public String getArticleBody() {
		return articleBody;
	}


	public void setArticleBody(String articleBody) {
		this.articleBody = articleBody;
	}


	public String getArticleImg() {
		return articleImg;
	}


	public void setArticleImg(String articleImg) {
		this.articleImg = articleImg;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
