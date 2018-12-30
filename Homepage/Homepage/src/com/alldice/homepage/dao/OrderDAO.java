package com.alldice.homepage.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.alldice.homepage.dto.OrderDTO;
import com.alldice.homepage.dto.ShopDTO;
import com.alldice.homepage.util.DBConnector;
import com.alldice.homepage.util.DateUtil;

public class OrderDAO {
	private DBConnector db=new DBConnector();
	private Connection con= db.getConnection();
	private DateUtil dateUtil=new DateUtil();
	private int result=0;

	public int insertOrder(String name,String yubin,String pref,String jusyo,String tatemono,String mail,String message,List<ShopDTO> CartList,String payment,int random)throws SQLException{

		String sql="insert into orders (order_name,order_yubin,order_pref,order_jusyo,order_tatemono,order_mail,order_message,order_item,order_price,order_count,ship_flg,insert_date,order_payment,order_number)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		CartList.forEach(ShopDTO->{
			try{
				ps.setString(1, name);
				ps.setString(2, yubin);
				ps.setString(3, pref);
				ps.setString(4, jusyo);
				ps.setString(5, tatemono);
				ps.setString(6, mail);
				ps.setString(7, message);
				ps.setString(8, ShopDTO.getShopTitle());
				ps.setInt(9, ShopDTO.getShopPrice());
				ps.setInt(10, ShopDTO.getCount());
				ps.setInt(11, 0);
				ps.setString(12, dateUtil.getDate());
				ps.setString(13, payment);
				ps.setInt(14, random);
				result=ps.executeUpdate();
			}catch(Exception e){
				e.printStackTrace();
			}
		});
		try{
			con.close();
		}catch(Exception e){
			e.printStackTrace();
		}

		return result;
		}

	public ArrayList<OrderDTO> getOrder()throws SQLException{
		ArrayList<OrderDTO> OrderList=new ArrayList<OrderDTO>();
		String sql="SELECT * from orders";
		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();

			while(rs.next()){
				OrderDTO dto=new OrderDTO();
				String date = new SimpleDateFormat("yyyy年MM月dd日").format(rs.getDate("insert_date"));
				dto.setId(rs.getString("order_id"));
				dto.setCount(rs.getInt("order_count"));
				dto.setJusyo(rs.getString("order_jusyo"));
				dto.setMail(rs.getString("order_mail"));
				dto.setMessage(rs.getString("order_message"));
				dto.setName(rs.getString("order_name"));
				dto.setPref(rs.getString("order_pref"));
				dto.setShopPrice(rs.getInt("order_price"));
				dto.setShopTitle(rs.getString("order_item"));
				dto.setTatemono(rs.getString("order_tatemono"));
				dto.setYubin(rs.getString("order_yubin"));
				dto.setShipflg(rs.getInt("ship_flg"));
				dto.setDate(date);
				dto.setPayment(rs.getString("order_payment"));
				dto.setOrderNumber(rs.getInt("order_number"));
				OrderList.add(dto);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}
		return OrderList;
	}

	public int updateOrder(String id)throws SQLException{
		String sql="UPDATE orders SET ship_flg = 1 WHERE order_id=?";
		int result=0;
		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, id);
			result=ps.executeUpdate();

		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}

	public int deleteOrder(String id)throws SQLException{
		String sql="DELETE FROM orders WHERE order_id=?";
		int result=0;
		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, id);
			result=ps.executeUpdate();

		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}
}
