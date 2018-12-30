package com.alldice.homepage.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import com.alldice.homepage.dto.ArticleDTO;
import com.alldice.homepage.util.DBConnector;
import com.alldice.homepage.util.DateUtil;

public class ArticleDAO {
	private DBConnector db=new DBConnector();
	private Connection con= db.getConnection();
	private DateUtil dateUtil=new DateUtil();
	String date=null;

	//Home画面での表示
	public ArrayList<ArticleDTO> getArticle()throws SQLException{
		ArrayList<ArticleDTO> ArticleList=new ArrayList<ArticleDTO>();
		String sql="SELECT article_id,article_title,article_img,insert_date from articles ORDER BY article_id DESC";
		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();

			while(rs.next()){
				ArticleDTO dto=new ArticleDTO();
				String date = new SimpleDateFormat("yyyy年MM月dd日").format(rs.getDate("insert_date"));
				dto.setId(rs.getInt("article_id"));
				dto.setArticleTitle(rs.getString("article_title"));
				dto.setArticleImg(rs.getString("article_img"));
				dto.setDate(date);
				dto.setRow(rs.getRow());
				ArticleList.add(dto);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}
		return ArticleList;
	}
	//最新記事のIDを取得（ブログ画面の最新遷移などのため
	public int NewArticle() throws SQLException{
		String sql="SELECT MAX(article_id) FROM articles";
		int max=0;
		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();

			if(rs.next()){
				max = rs.getInt("MAX(article_id)");
		}

		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}
		return max;
	}
	//選択した記事の表示
	public ArrayList<ArticleDTO> showTheArticle(int id)throws SQLException{
		ArrayList<ArticleDTO> ArticleList=new ArrayList<ArticleDTO>();
		String sql="SELECT * FROM articles WHERE article_id = ?";
		ArticleDTO dto=new ArticleDTO();

		try{

			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();

			if(rs.next()){
				String date = new SimpleDateFormat("yyyy年MM月dd日").format(rs.getDate("insert_date"));
				dto.setId(rs.getInt("article_id"));
				dto.setArticleBody(rs.getString("article_body"));
				dto.setArticleTitle(rs.getString("article_title"));
				dto.setArticleImg(rs.getString("article_img"));
				dto.setDate(date);
				int max=NewArticle();
				dto.setRow(max);
				ArticleList.add(dto);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}
		return ArticleList;
	}

	//最新の記事の表示
	public ArrayList<ArticleDTO> showNewArticle()throws SQLException{
		ArrayList<ArticleDTO> ArticleList=new ArrayList<ArticleDTO>();
		String sql="SELECT * FROM articles ORDER BY article_id DESC limit 1";
		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				ArticleDTO dto=new ArticleDTO();
				String date = new SimpleDateFormat("yyyy年MM月dd日").format(rs.getDate("insert_date"));
				dto.setId(rs.getInt("article_id"));
				dto.setArticleBody(rs.getString("article_body"));
				dto.setArticleTitle(rs.getString("article_title"));
				dto.setArticleImg(rs.getString("article_img"));
				dto.setDate(date);
				int max=NewArticle();
				dto.setRow(max);
				ArticleList.add(dto);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}
		return ArticleList;
	}

	//前の記事の表示
	public ArrayList<ArticleDTO> showBeforeArticle(int id)throws SQLException{
		ArrayList<ArticleDTO> ArticleList=new ArrayList<ArticleDTO>();
		String sql="SELECT * FROM articles WHERE article_id <? ORDER BY article_id DESC limit 1 ";
		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();

			if(rs.next()){
				ArticleDTO dto=new ArticleDTO();
				String date = new SimpleDateFormat("yyyy年MM月dd日").format(rs.getDate("insert_date"));
				dto.setId(rs.getInt("article_id"));
				dto.setArticleBody(rs.getString("article_body"));
				dto.setArticleTitle(rs.getString("article_title"));
				dto.setArticleImg(rs.getString("article_img"));
				dto.setDate(date);
				int max=NewArticle();
				dto.setRow(max);
				ArticleList.add(dto);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}
		return ArticleList;
	}

	//次の記事の表示
	public ArrayList<ArticleDTO> showNextArticle(int id)throws SQLException{
		ArrayList<ArticleDTO> ArticleList=new ArrayList<ArticleDTO>();
		String sql="SELECT * FROM articles WHERE article_id >?  limit 1 ";
		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				ArticleDTO dto=new ArticleDTO();
				String date = new SimpleDateFormat("yyyy年MM月dd日").format(rs.getDate("insert_date"));
				dto.setId(rs.getInt("article_id"));
				dto.setArticleBody(rs.getString("article_body"));
				dto.setArticleTitle(rs.getString("article_title"));
				dto.setArticleImg(rs.getString("article_img"));
				dto.setDate(date);
				int max=NewArticle();
				dto.setRow(max);
				ArticleList.add(dto);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}
		return ArticleList;
	}

	//記事の追加
	public void addArticle(String articleTitle,String articleBody,String articleImg)throws SQLException{
		String sql="INSERT INTO articles (article_title,article_body,article_img,insert_date)values(?,?,?,?) ";
		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, articleTitle);
			ps.setString(2, articleBody);
			ps.setString(3, articleImg);
			ps.setString(4, dateUtil.getDate());

			ps.execute();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}
	}

	public int getArchive(ArticleDTO dto) throws SQLException{
		String sql="SELECT article_title,insert_date FROM articles";
		int max=0;
		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();

			while(rs.next()){
				rs.getString("article_title");
		}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}
		return max;
	}

	public int delArticle(int id) throws SQLException{
		String sql="DELETE FROM articles WHERE article_id = ?";
		int del=0;
		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, id);
			del=ps.executeUpdate();

		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}
		return del;
	}

}
