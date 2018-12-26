package com.internousdev.homepage.dto;

public class ShopDTO {
	private int id;
	private String shopTitle;
	private int shopPrice;
	private String shopIntro;
	private int shopStock;
	private String pictureUrl;
	private int count;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getShopIntro() {
		return shopIntro;
	}
	public void setShopIntro(String shopIntro) {
		this.shopIntro = shopIntro;
	}
	public String getPictureUrl() {
		return pictureUrl;
	}
	public void setPictureUrl(String pictureUrl) {
		this.pictureUrl = pictureUrl;
	}
	public int getShopStock() {
		return shopStock;
	}
	public void setShopStock(int shopStock) {
		this.shopStock = shopStock;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}






}