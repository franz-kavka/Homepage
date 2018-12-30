package com.alldice.homepage.action;
import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class BuyConfirmAction extends ActionSupport implements SessionAware {
	public Map<String,Object> session;
//	private BuyItemCompleteDAO dao= new BuyItemCompleteDAO();

	public String execute() throws SQLException{
//		dao.buyItemInfo();
		String result=SUCCESS;
		return result;
	}
	@Override
	public void setSession(Map<String,Object> session){
		this.session=session;
	}
}
