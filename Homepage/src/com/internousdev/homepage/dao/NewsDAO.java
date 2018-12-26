package com.internousdev.homepage.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.homepage.dto.NewsDTO;
import com.internousdev.homepage.util.DBConnector;
import com.internousdev.homepage.util.DateUtil;

public class NewsDAO {
	private DBConnector db=new DBConnector();
	private Connection con= db.getConnection();
	private DateUtil dateUtil=new DateUtil();
	private int up=0;

	public ArrayList<NewsDTO> getNews()throws SQLException{
		ArrayList<NewsDTO> NewsList=new ArrayList<NewsDTO>();
		String sql="SELECT * from news ORDER BY news_id DESC ";
		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();

			while(rs.next()){
				NewsDTO dto=new NewsDTO();
				dto.setNewsBody(rs.getString("news_body"));
				dto.setDate(rs.getString("insert_date"));
				dto.setId(rs.getInt("news_id"));
				NewsList.add(dto);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}
		return NewsList;
	}

	public int setNews(String news)throws SQLException{
		String sql="insert into news (news_body,insert_date)values(?,?) ";
		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, news);
			ps.setString(2, dateUtil.getDate());
			up=ps.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}
		return up;
	}

	public int delNews(int id) throws SQLException{
		String sql="DELETE FROM news WHERE news_id = ?";
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
