package com.alldice.homepage.action;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.alldice.homepage.dto.ShopDTO;
import com.alldice.homepage.util.CartListHolder;
import com.opensymphony.xwork2.ActionSupport;

public class CartDeleteItAction extends ActionSupport implements SessionAware {
	public Map<String,Object> session;

	private int it;
	CartListHolder Holder=new CartListHolder();
	List<ShopDTO> CartList=new ArrayList<ShopDTO>();


		public String execute() throws SQLException{

			//HolderのCartListをアクティベート
				CartListHolder HolHol=(CartListHolder) session.get("holder");
				CartList=HolHol.getCartList();

			//DeletedItに削除する商品情報DTOを割り当て
				ShopDTO DeletedIt = CartList.get(it);

			//sessionのamountからDeletedItの個数分引いてsession.put
			int amount=Integer.parseInt(session.get("amount").toString())- DeletedIt.getCount();
			if(amount!=0){
				session.put("amount", amount);
			}
			else{
				session.put("amount", null);
			}


			//sessionのtotalからDeletedItの合計金額分引いてsession.put
			int total=Integer.parseInt(session.get("total").toString())- DeletedIt.getCount()*DeletedIt.getShopPrice();
				session.put("total", total);


			//CartListから該当項目を削除しHolderで保存
			CartList.remove(it);
			Holder.setCartList(CartList);

			//sessionに詰め込み
			session.put("CartList", CartList);
			session.put("holder", Holder);

			return SUCCESS;
		}


	public void setSession(Map<String, Object> session) {
		this.session = session;
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


	public void setIt(int it) {
		this.it = it;
	}



}
