package com.internousdev.homepage.action;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.homepage.dao.ShopDAO;
import com.internousdev.homepage.dto.ShopDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ShopAction extends ActionSupport implements SessionAware {
	public Map<String,Object> session;


		public String execute() throws SQLException{

			if(!session.containsKey("CartList")){
//				session.remove("CartList");
			}
			//sessionに詰め込み
			//Shop情報の取得
			ShopDAO shopDAO = new ShopDAO();
			ArrayList<ShopDTO> ShopList=new ArrayList<ShopDTO>();
			ShopList=shopDAO.getShop();
			session.put("shopList", ShopList);

			return SUCCESS;
		}

	public void setSession(Map<String, Object> session) {
		this.session = session;

	}}
