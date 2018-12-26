package com.internousdev.homepage.action;
import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.homepage.util.SendMail;
import com.opensymphony.xwork2.ActionSupport;

public class ContactSendAction extends ActionSupport implements SessionAware{
	public Map<String,Object>session;
	private String name;
	private String mail;
	private String message;
	private String myMail="alldice.information@gmail.com";
	public String execute() throws SQLException{
			String crlf = System.getProperty("line.separator");

			SendMail send = new SendMail();
			String subject="(自動送信）お問い合わせ確認";
			String content= "以下の内容でお問い合わせを送信しました。"+crlf
					+"【名前】"+crlf
					+name+crlf
					+"【メールアドレス】"+crlf
					+mail+crlf
					+"【お問い合わせ内容】"+crlf
					+message;
			send.send(subject, content, mail);

			String subjectMine="お問い合わせメールを受信しました";
			String contentMine="【お問い合わせ内容】"+crlf
								+"【名前】"+crlf
								+name+crlf
								+"【メールアドレス】"+crlf
								+mail+crlf
								+"【お問い合わせ内容】"+crlf
								+message;
			send.send(subjectMine, contentMine, myMail);
			return SUCCESS;
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

	public void setMail(String mail) {
		this.mail = mail;
	}

	public void setMessage(String message) {
		this.message = message;
	}


}
