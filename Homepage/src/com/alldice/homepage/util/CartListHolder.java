package com.alldice.homepage.util;

import java.util.ArrayList;
import java.util.List;

import com.alldice.homepage.dto.ShopDTO;

public class CartListHolder {
	List<ShopDTO> CartList=new ArrayList<ShopDTO>();

	public List<ShopDTO> getCartList() {
		return CartList;
	}

	public void setCartList(List<ShopDTO> cartList) {
		CartList = cartList;
	}

}
