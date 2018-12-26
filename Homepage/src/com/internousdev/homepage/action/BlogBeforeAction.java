package com.internousdev.homepage.action;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.homepage.dao.ArticleDAO;
import com.internousdev.homepage.dto.ArticleDTO;
import com.opensymphony.xwork2.ActionSupport;

public class BlogBeforeAction extends ActionSupport implements SessionAware{
	public Map<String,Object>session;
	private int id;

	public String execute() throws SQLException{

		//記事取得
			//ArticleDAOから記事を取得
			ArticleDAO artDAO = new ArticleDAO();
			ArrayList<ArticleDTO> ArticleList=new ArrayList<ArticleDTO>();
			//List ArticleListに挿入

			ArticleList=artDAO.showBeforeArticle(id);
			session.put("articleList", ArticleList);

		return SUCCESS;
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

	public int getId() {
		return id;
	}

}
