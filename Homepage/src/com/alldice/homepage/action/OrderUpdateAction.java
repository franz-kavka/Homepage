package com.alldice.homepage.action;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.alldice.homepage.dao.OrderDAO;
import com.alldice.homepage.dto.OrderDTO;
import com.opensymphony.xwork2.ActionSupport;

public class OrderUpdateAction extends ActionSupport implements SessionAware{
	public Map<String,Object>session;
	private String id=null;

	public String execute() throws SQLException{
			OrderDAO orderDAO=new OrderDAO();
			ArrayList<OrderDTO> OrderList=new ArrayList<OrderDTO>();
			int result= orderDAO.updateOrder(id);
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
