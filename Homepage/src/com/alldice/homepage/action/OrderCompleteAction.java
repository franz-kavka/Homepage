package com.alldice.homepage.action;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.alldice.homepage.dao.OrderDAO;
import com.alldice.homepage.dto.ShopDTO;
import com.alldice.homepage.util.CartListHolder;
import com.alldice.homepage.util.CommonUtility;
import com.alldice.homepage.util.SendMail;
import com.opensymphony.xwork2.ActionSupport;

public class OrderCompleteAction extends ActionSupport implements SessionAware{
	public Map<String,Object>session;
	private String name;
	private String yubin;
	private String pref;
	private String jusyo;
	private String tatemono;
	private String mail;
	private String message;
	private String payment;
	private int total;
	StringBuilder order= new StringBuilder();
	List<ShopDTO> CartList=new ArrayList<ShopDTO>();
	public String execute() throws SQLException{
		total=total+500;
		CommonUtility cu =new CommonUtility();
		int random=Integer.parseInt(cu.getRamdomValue());
		OrderDAO dao = new OrderDAO();
		CartListHolder HolHol=(CartListHolder) session.get("holder");
		if(HolHol !=null){
			CartList=HolHol.getCartList();
			dao.insertOrder(name,yubin,pref,jusyo,tatemono,mail,message,CartList,payment,random);
			String crlf = System.getProperty("line.separator");
			CartList.forEach(ShopDTO->{
				this.order.append(ShopDTO.getShopTitle()+"");
				this.order.append(" "+ShopDTO.getShopPrice()+"円"+"");
				this.order.append(" "+ShopDTO.getCount()+"個");
				this.order.append(crlf);
			});

			if(payment.equals("銀行振込")){
				SendMail send = new SendMail();
				String subject="(自動送信）注文を承りました。";
				String content=name +" 様" + crlf+crlf
						+"ご注文ありがとうございます。"+ crlf
						+"銀行振り込みの場合、"
						+"入金が行われた時点で注文が確定となります。"+ crlf
						+ "なお、ご入金の際の名義人は、お名前の前に「注文番号」を加えた名称でご入金ください。"+ crlf
						+ "◎例：購入者が【山田　太郎】、注文番号が【123456】の場合は「123456ヤマダ タロウ」となります。"+ crlf
						+crlf
						+"今回の注文番号は以下になります。"+ crlf
						+ "【注文番号】"+crlf
						+random+crlf
						+crlf
						+"振込先は以下になります。"+ crlf
						+ "【振込先】"+crlf
						+"金融機関番号9900　ゆうちょ銀行"+ crlf
						+"普通：二四八店 946081"+ crlf
						+crlf
						+ "【ご注文内容】"+crlf
						+order+crlf
						+"送料 500円"+crlf
						+"合計 "+total+"円"+crlf+crlf
						+ "【お支払い方法】"+crlf
						+payment+crlf+crlf
						+"【送付先住所】"+crlf
						+"氏名 "+name+crlf
						+"〒"+yubin+crlf
						+pref+jusyo+crlf
						+tatemono+crlf
						+crlf
						+"【ご要望】"+crlf
						+message
						+crlf
						+"今後はこちらのメールアドレスでのやりとりになります。"
						+crlf
						+"不明な点などがあれば、直接ご質問ください。";
				send.send(subject, content, mail);
				session.clear();
				return SUCCESS;
			}
			else if(payment.equals("代金引換")){
				SendMail send = new SendMail();
				String subject="(自動送信）注文を承りました。";
				String content=name +" 様" + crlf+crlf
						+"ご注文ありがとうございます。"+ crlf
						+"代金引換の場合、希望の受け取り時間等ございましたらこちらのアドレスにご返信ください。"+ crlf
						+"(ご要望欄で書いていただいている場合は結構です。)"+crlf
						+ "準備ができ次第発送いたします。"+ crlf+ crlf
						+ "【ご注文内容】"+crlf
						+order
						+"送料 500円"+crlf
						+"合計 "+total+"円"+crlf+crlf
						+ "【お支払い方法】"+crlf
						+payment+crlf+crlf
						+"【送付先住所】"+crlf
						+"氏名 "+name+crlf
						+"〒"+yubin+crlf
						+pref+jusyo+crlf
						+tatemono+crlf
						+"【ご要望】"+crlf
						+message+crlf
						+"今後はこちらのメールアドレスでのやりとりになります。"
						+crlf
						+"不明な点などがあれば、直接ご質問ください。";
				send.send(subject, content, mail);
				session.clear();
				return SUCCESS;
			}
		}
		else{
			return ERROR;
		}
		return ERROR;
	}

	public Map<String, Object> getSession() {
		return session;

	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setYubin(String yubin) {
		this.yubin = yubin;
	}

	public void setPref(String pref) {
		this.pref = pref;
	}

	public void setJusyo(String jusyo) {
		this.jusyo = jusyo;
	}

	public void setTatemono(String tatemono) {
		this.tatemono = tatemono;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	public void setTotal(int total) {
		this.total = total;
	}

}
