package com.project.domain;

import java.sql.Date;

import lombok.Data;
@Data
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
}
