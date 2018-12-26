package com.internousdev.homepage.util;

import java.util.ArrayList;
import java.util.List;

import com.internousdev.homepage.dto.ShopDTO;

public class CartListHolder {
	List<ShopDTO> CartList=new ArrayList<ShopDTO>();

	public List<ShopDTO> getCartList() {
		return CartList;
	}

	public void setCartList(List<ShopDTO> cartList) {
		CartList = cartList;
	}

}
