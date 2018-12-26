package com.internousdev.homepage.action;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.homepage.dao.ShopDAO;
import com.internousdev.homepage.dto.ShopDTO;
import com.internousdev.homepage.util.CartListHolder;
import com.opensymphony.xwork2.ActionSupport;

public class CartAddAction extends ActionSupport implements SessionAware {
	public Map<String,Object> session;
	private int count;
	private String shopTitle;
	private int totalPrice;
	private int shopPrice;
	private int id;
	private int cnt=0;
	CartListHolder Holder=new CartListHolder();
	List<ShopDTO> ShopList=new ArrayList<ShopDTO>();
	List<ShopDTO> CartList=new ArrayList<ShopDTO>();
	int cartAmount;


		public String execute() throws SQLException{

			if(session.containsKey("holder")){
				CartListHolder HolHol=(CartListHolder) session.get("holder");
				CartList=HolHol.getCartList();
				//ShopDTO内のcountを合計してcntに代入
				CartList.forEach(ShopDTO -> {
					cnt=cnt+ShopDTO.getCount();
				});
				CartList.forEach(ShopDTO -> {
					totalPrice=totalPrice+ShopDTO.getCount()*ShopDTO.getShopPrice();
				});

			}
			//ShopDTOに詰め込み
			ShopDTO ShopDTO=new ShopDTO();
			ShopDTO.setShopTitle(shopTitle);
			ShopDTO.setShopPrice(shopPrice);
			ShopDTO.setCount(count);
			int amount=cnt+count;
				session.put("amount", amount);
			int total=totalPrice+count*shopPrice;
				session.put("total", total);

			//ShopDTOをCartListへ詰め込み
			CartList.add(ShopDTO);

			//CartListをHolderで保存
			Holder.setCartList(CartList);

			//sessionに詰め込み
			session.put("CartList", CartList);
			session.put("holder", Holder);

			//Shop情報の取得
			ShopDAO shopDAO = new ShopDAO();
			ArrayList<ShopDTO> ShopList=new ArrayList<ShopDTO>();
			ShopList=shopDAO.getShop();
			session.put("shopList", ShopList);

			return SUCCESS;
		}


	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public void setCount(int count) {
		this.count = count;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}



	public List<ShopDTO> getCartList() {
		return CartList;
	}


	public void setCartList(List<ShopDTO> cartList) {
		CartList = cartList;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public int getCount() {
		return count;
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

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public List<ShopDTO> getShopList() {
		return ShopList;
	}

	public void setShopList(List<ShopDTO> shopList) {
		ShopList = shopList;
	}

	public int getCartAmount() {
		return cartAmount;
	}

	public void setCartAmount(int cartAmount) {
		this.cartAmount = cartAmount;
	}




}
