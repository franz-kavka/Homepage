package com.internousdev.homepage.action;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.homepage.dao.OrderDAO;
import com.internousdev.homepage.dto.OrderDTO;
import com.opensymphony.xwork2.ActionSupport;

public class OrderDeleteAction extends ActionSupport implements SessionAware{
	public Map<String,Object>session;
	private String id=null;

	public String execute() throws SQLException{
			OrderDAO orderDAO=new OrderDAO();
			ArrayList<OrderDTO> OrderList=new ArrayList<OrderDTO>();
			int result= orderDAO.deleteOrder(id);
			if(result==0){
				return ERROR;
			}
			OrderList =orderDAO.getOrder();
			session.put("orderList", OrderList);
		return SUCCESS;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}




}
