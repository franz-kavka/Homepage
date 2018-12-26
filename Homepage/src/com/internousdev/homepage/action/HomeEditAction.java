package com.internousdev.homepage.action;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.homepage.dao.ArticleDAO;
import com.internousdev.homepage.dao.NewsDAO;
import com.internousdev.homepage.dto.ArticleDTO;
import com.internousdev.homepage.dto.NewsDTO;
import com.opensymphony.xwork2.ActionSupport;

public class HomeEditAction extends ActionSupport implements SessionAware{
	public Map<String,Object>session;

	public String execute() throws SQLException{


		//記事取得
			//ArticleDAOから記事を取得
			ArticleDAO artDAO = new ArticleDAO();
			ArrayList<ArticleDTO> ArticleList=new ArrayList<ArticleDTO>();

			//ArticleDTOに統合

			//List ArticleListに挿入
			ArticleList=artDAO.getArticle();
			session.put("top", ArticleList.get(0));

			ArticleList.remove(0);
			session.put("blogList", ArticleList);
			session.put("newest", ArticleList.get(ArticleList.size()-1).getId());


		//info取得
			//InfoDAOから記事を取得
			NewsDAO newsDAO=new NewsDAO();
			ArrayList<NewsDTO> NewsList=new ArrayList<NewsDTO>();
			//InfoDTOに統合
			//InfoListに挿入
			NewsList =newsDAO.getNews();
			//session.put(InfoList)
			session.put("newsList", NewsList);

		return SUCCESS;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}


}
