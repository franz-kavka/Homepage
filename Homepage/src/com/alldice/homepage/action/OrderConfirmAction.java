package com.alldice.homepage.action;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.alldice.homepage.util.InputChecker;
import com.opensymphony.xwork2.ActionSupport;

public class OrderConfirmAction extends ActionSupport implements SessionAware{
	public Map<String,Object>session;
	private String name;
	private String yubin;
	private String pref;
	private String jusyo;
	private String tatemono;
	private String mail;
	private String message;
	private String payment;
	private StringBuilder yubinNum = new StringBuilder();
	private boolean errorFlg =false;
	private List<String> nameErrorMessageList = new ArrayList<String>();
	private List<String> yubinErrorMessageList = new ArrayList<String>();
	private List<String> emailErrorMessageList = new ArrayList<String>();

	public String execute() throws SQLException{

		//入力内容チェック inputchecker
				InputChecker inputChecker = new InputChecker();
				nameErrorMessageList = inputChecker.doCheck("氏名", name, 2, 16, true, true, true, false, false, false, true, false, false);
				yubinErrorMessageList = inputChecker.doCheck("郵便番号", yubin, 7, 9, false, false, false, true, true, false, true, false, false);
				emailErrorMessageList = inputChecker.doCheck("メールアドレス", mail, 1, 32, true, false, false, true, true, false, false, false, false);
				if(nameErrorMessageList.size()!=0||yubinErrorMessageList.size()!=0||emailErrorMessageList.size()!=0){
					errorFlg=true;
					yubinNum.append(yubin);
					if(yubinNum.indexOf("〒")!=-1){
					yubinNum.deleteCharAt(yubinNum.indexOf("〒"));
					}
					return ERROR;
				}
		return SUCCESS;
	}

	public List<String> getNameErrorMessageList() {
		return nameErrorMessageList;
	}

	public List<String> getYubinErrorMessageList() {
		return yubinErrorMessageList;
	}


	public List<String> getEmailErrorMessageList() {
		return emailErrorMessageList;
	}


	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setYubin(String yubin) {
		this.yubin = yubin;
	}

	public void setPref(String pref) {
		this.pref = pref;
	}

	public void setJusyo(String jusyo) {
		this.jusyo = jusyo;
	}

	public void setTatemono(String tatemono) {
		this.tatemono = tatemono;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getName() {
		return name;
	}

	public String getYubin() {
		return yubin;
	}

	public String getPref() {
		return pref;
	}

	public String getJusyo() {
		return jusyo;
	}

	public String getTatemono() {
		return tatemono;
	}

	public String getMail() {
		return mail;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}


	public String getMessage() {
		return message;
	}


	public void setMessage(String message) {
		this.message = message;
	}


	public StringBuilder getYubinNum() {
		return yubinNum;
	}

	public boolean isErrorFlg() {
		return errorFlg;
	}

}
