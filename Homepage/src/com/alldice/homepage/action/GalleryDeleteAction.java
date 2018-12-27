package com.alldice.homepage.action;
import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.alldice.homepage.dao.GalleryDAO;
import com.opensymphony.xwork2.ActionSupport;

public class GalleryDeleteAction extends ActionSupport implements SessionAware{
	public Map<String,Object>session;
	private int id;

	public String execute() throws SQLException{
			GalleryDAO galleryDAO=new GalleryDAO();
			int up =galleryDAO.delGallery(id);
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
