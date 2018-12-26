package com.internousdev.homepage.action;
import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.homepage.dao.NewsDAO;
import com.opensymphony.xwork2.ActionSupport;

public class NewsDeleteAction extends ActionSupport implements SessionAware{
	public Map<String,Object>session;
	private int id=0;

	public String execute() throws SQLException{
			NewsDAO newsDAO=new NewsDAO();
			System.out.println(id);
			int up =newsDAO.delNews(id);
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

	public void setId(int id) {
		this.id = id;
	}





}
