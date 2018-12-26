package com.internousdev.homepage.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.internousdev.homepage.dto.LoginDTO;
import com.internousdev.homepage.util.DBConnector;


public class LoginDAO {
	private DBConnector db =new DBConnector();
	private Connection con= db.getConnection();
	private LoginDTO dto=new LoginDTO();

	public LoginDTO getLoginUserInfo(String loginUserId,String loginPassword){
		String sql="select * from admin where admin_id=? and admin_pass=?";

		try{
			PreparedStatement ps= con.prepareStatement(sql);
			ps.setString(1, loginUserId);
			ps.setString(2, loginPassword);

			ResultSet rs=ps.executeQuery();

			if(rs.next()){
				dto.setLoginId(rs.getString("admin_id"));
				dto.setLoginPassword(rs.getString("admin_pass"));

				if(!(rs.getString("admin_id").equals(null))){
					dto.setLoginFlg(true);
				}
			}
			}catch(Exception e){
				e.printStackTrace();
			}
			return dto;
		}

		public LoginDTO getLoginDTO(){
			return dto;
		}

	}
