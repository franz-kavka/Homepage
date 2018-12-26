package com.internousdev.homepage.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.homepage.util.DBConnector;

public class AdminDAO {
	private DBConnector db=new DBConnector();
	private Connection con= db.getConnection();

	public int updateOrder(String newId, String newPass)throws SQLException{
		String sql="UPDATE admin SET admin_id = ?,admin_pass=?";
		int result=0;
		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, newId);
			ps.setString(2, newPass);
			result=ps.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}

}
