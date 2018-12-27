package com.alldice.homepage.dto;

public class OrderDTO {
	private String id;
	private String name;
	private String yubin;
	private String pref;
	private String jusyo;
	private String tatemono;
	private String mail;
	private String message;
	private String shopTitle;
	private int shipflg;
	private int shopPrice;
	private int count;
	private String date;
	private String payment;
	private int orderNumber;

	public int getShipflg() {
		return shipflg;
	}
	public void setShipflg(int shipflg) {
		this.shipflg = shipflg;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getYubin() {
		return yubin;
	}
	public void setYubin(String yubin) {
		this.yubin = yubin;
	}
	public String getPref() {
		return pref;
	}
	public void setPref(String pref) {
		this.pref = pref;
	}
	public String getJusyo() {
		return jusyo;
	}
	public void setJusyo(String jusyo) {
		this.jusyo = jusyo;
	}
	public String getTatemono() {
		return tatemono;
	}
	public void setTatemono(String tatemono) {
		this.tatemono = tatemono;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getShopTitle() {
		return shopTitle;
	}
	public void setShopTitle(String shopTitle) {
		this.shopTitle = shopTitle;
	}
	public int getShopPrice() {
		return shopPrice;
	}
	public void setShopPrice(int shopPrice) {
		this.shopPrice = shopPrice;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public int getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(int orderNumber) {
		this.orderNumber = orderNumber;
	}

}