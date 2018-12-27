package com.alldice.homepage.dto;

public class ArticleDTO {
	private int id;
	private String articleTitle;
	private String articleBody;
	private String articleImg;
	private String date;
	private int row;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getArticleTitle() {
		return articleTitle;
	}
	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}
	public String getArticleBody() {
		return articleBody;
	}
	public void setArticleBody(String articleBody) {
		this.articleBody = articleBody;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getArticleImg() {
		return articleImg;
	}
	public void setArticleImg(String articleImg) {
		this.articleImg = articleImg;
	}
	public int getRow() {
		return row;
	}
	public void setRow(int row) {
		this.row = row;
	}






}