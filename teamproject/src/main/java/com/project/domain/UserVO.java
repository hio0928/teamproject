package com.project.domain;

import java.sql.Date;

public class UserVO {
	//회원 id
	private String u_id;
	//회원 이름
	private String u_name;
	//회원 비밀번호
	private String u_passwd;
	//회원 전화번호
	private String u_phone;
	//회원 주소
	private String u_address;
	//회원 번호
	private int u_author;
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_passwd() {
		return u_passwd;
	}
	public void setU_passwd(String u_passwd) {
		this.u_passwd = u_passwd;
	}
	public String getU_phone() {
		return u_phone;
	}
	public void setU_phone(String u_phone) {
		this.u_phone = u_phone;
	}
	public String getU_address() {
		return u_address;
	}
	public void setU_address(String u_address) {
		this.u_address = u_address;
	}
	public int getU_author() {
		return u_author;
	}
	public void setU_author(int u_author) {
		this.u_author = u_author;
	}
	
	@Override
	public String toString() {
		return "UserVO [u_id=" + u_id + ", u_name=" + u_name + ""
				+ ", u_passwd=" + u_passwd
				+ ", u_phone=" + u_phone 
				+ ", u_address=" + u_address
				+ ", u_author=" + u_author+ "]";
	}
	
	
	
}
