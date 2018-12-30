package com.alldice.homepage.action;
import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.alldice.homepage.dao.ArticleDAO;
import com.opensymphony.xwork2.ActionSupport;

public class BlogAddAction extends ActionSupport implements SessionAware{
	public Map<String,Object>session;
	private String articleTitle;
	private String articleBody;
	private String articleImg;
	public String execute() throws SQLException{
		if(articleImg.isEmpty()){
			this.articleImg=null;
		}
		ArticleDAO dao=new ArticleDAO();
		dao.addArticle(articleTitle,articleBody,articleImg);

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

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
