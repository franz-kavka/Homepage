package com.internousdev.homepage.action;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.homepage.dao.GalleryDAO;
import com.internousdev.homepage.dto.GalleryDTO;
import com.opensymphony.xwork2.ActionSupport;

public class GalleryEditAction extends ActionSupport implements SessionAware{
	public Map<String,Object>session;

	public String execute() throws SQLException{
			GalleryDAO galleryDAO=new GalleryDAO();
			ArrayList<GalleryDTO> GalleryList=new ArrayList<GalleryDTO>();
			GalleryList =galleryDAO.getGallery();
			session.put("galleryList", GalleryList);

		return SUCCESS;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}


}
