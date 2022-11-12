package com.project.domain;

import java.sql.Date;

import lombok.Data;
@Data
public class RegistDTO {
	/* DB로부터 꺼내올 값*/
	/* 사용자 id*/
	private String u_id;
	/* 시설 id*/
	private String f_id;
	/* 사용자 이름*/
	private String u_name;
	/* 사용자 전화번호*/
	private String u_phone;
	
	/*뷰로부터 전달받을 값*/
	/* 개월수등록*/
	private int reg_month;
	/* 등록 날짜*/
	private String reg_date;
	/* 등록상태*/
	private int reg_status;
	


}