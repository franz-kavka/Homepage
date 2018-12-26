package com.internousdev.homepage.action;
import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.homepage.dao.GalleryDAO;
import com.opensymphony.xwork2.ActionSupport;

public class GalleryAddAction extends ActionSupport implements SessionAware{
	public Map<String,Object>session;
	private String gallery;

	public String execute() throws SQLException{
			GalleryDAO galleryDAO=new GalleryDAO();
			int up =galleryDAO.setGallery(gallery);
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

	public void setGallery(String gallery) {
		this.gallery = gallery;
	}



}
