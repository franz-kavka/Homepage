package com.internousdev.homepage.action;
import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.homepage.dao.ArticleDAO;
import com.opensymphony.xwork2.ActionSupport;

public class BlogDeleteAction extends ActionSupport implements SessionAware{
	public Map<String,Object>session;
	private int id;

	public String execute() throws SQLException{
			ArticleDAO articleDAO=new ArticleDAO();
			int up =articleDAO.delArticle(id);
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
