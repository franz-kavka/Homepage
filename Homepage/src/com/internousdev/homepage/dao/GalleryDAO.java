package com.internousdev.homepage.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.homepage.dto.GalleryDTO;
import com.internousdev.homepage.util.DBConnector;

public class GalleryDAO {
	private DBConnector db=new DBConnector();
	private Connection con= db.getConnection();
	private int up=0;

	public ArrayList<GalleryDTO> getGallery()throws SQLException{
		ArrayList<GalleryDTO> GalleryList=new ArrayList<GalleryDTO>();
		String sql="SELECT * from gallery";
		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();

			while(rs.next()){
				GalleryDTO dto=new GalleryDTO();
				dto.setId(rs.getInt("gallery_id"));
				dto.setGalleryUrl(rs.getString("gallery_picurl"));
				GalleryList.add(dto);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}
		return GalleryList;
	}

	public int setGallery(String gallery)throws SQLException{
		String sql="insert into gallery (gallery_picurl)values(?) ";
		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, gallery);
			up=ps.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}
		return up;
	}

	public int delGallery(int id)throws SQLException{
		String sql="DELETE FROM gallery WHERE gallery_id = ?";
		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, id);
			up=ps.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}
		return up;
	}
//	public int ItemHistoryDelete()throws SQLException{
//		String sql="DELETE FROM item_info_transaction";
//		PreparedStatement ps;
//		int result=0;
//		try{
//			ps=con.prepareStatement(sql);
//			result=ps.executeUpdate();
//		}catch(SQLException e){
//			e.printStackTrace();
//		}finally{
//			con.close();
//		}
//		return result;
//
//	}
//
//	public int ItemHistoryDeleteIt(int id)throws SQLException{
//		String sql="DELETE FROM item_info_transaction WHERE id = ?";
//		PreparedStatement ps;
//		int res=0;
//		try{
//			ps=con.prepareStatement(sql);
//			ps.setInt(1, id);
//			res=ps.executeUpdate();
//		}catch(SQLException e){
//			e.printStackTrace();
//		}finally{
//			con.close();
//		}
//		return res;
//	}

}
