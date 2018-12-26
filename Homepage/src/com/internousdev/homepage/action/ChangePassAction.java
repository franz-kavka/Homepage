package com.internousdev.homepage.action;
import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.homepage.dao.AdminDAO;
import com.opensymphony.xwork2.ActionSupport;

public class ChangePassAction extends ActionSupport implements SessionAware{
	public Map<String,Object>session;
	private String newId;
	private String newPass;

	public String execute() throws SQLException{
			AdminDAO adminDAO=new AdminDAO();
			int result= adminDAO.updateOrder(newId,newPass);
			if(result==0){
				return ERROR;
			}
		return SUCCESS;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public void setNewId(String newId) {
		this.newId = newId;
	}

	public void setNewPass(String newPass) {
		this.newPass = newPass;
	}


}
