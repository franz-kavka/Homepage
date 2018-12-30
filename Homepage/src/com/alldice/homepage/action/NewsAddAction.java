package com.alldice.homepage.action;
import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.alldice.homepage.dao.NewsDAO;
import com.opensymphony.xwork2.ActionSupport;

public class NewsAddAction extends ActionSupport implements SessionAware{
	public Map<String,Object>session;
	private String news;

	public String execute() throws SQLException{
			NewsDAO newsDAO=new NewsDAO();
			int up =newsDAO.setNews(news);
			if(up !=0){
				return SUCCESS;
			}
			return ERROR;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public void setNews(String news) {
		this.news = news;
	}



}
