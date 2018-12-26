package com.internousdev.homepage.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.homepage.dto.ShopDTO;
import com.internousdev.homepage.util.DBConnector;

public class ShopDAO {
	private DBConnector db=new DBConnector();
	private Connection con= db.getConnection();

	public ArrayList<ShopDTO> getShop()throws SQLException{
		ArrayList<ShopDTO> ShopList=new ArrayList<ShopDTO>();
		String sql="SELECT * from shop ORDER BY shop_id DESC";
		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();

			while(rs.next()){
				ShopDTO dto=new ShopDTO();
				dto.setId(rs.getInt("shop_id"));
				dto.setShopTitle(rs.getString("shop_title"));
				dto.setShopPrice(rs.getInt("shop_price"));
				dto.setShopIntro(rs.getString("shop_intro"));
				dto.setShopStock(rs.getInt("shop_stock"));
				dto.setPictureUrl(rs.getString("shop_picurl"));
				ShopList.add(dto);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}
		return ShopList;
	}
}