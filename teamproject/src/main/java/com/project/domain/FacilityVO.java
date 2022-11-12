package com.project.domain;

import java.util.List;

import lombok.Data;

@Data
public class FacilityVO {
	private String f_id;
	private String f_name;
	private String f_address;
	private String f_phone;
	private String f_info;
	private String u_id;
	
	private String cat_id;
	private String cat_name;
	private String com_id;
	private String com_name;
	private int p_month;
	private int p_price;
	private String f_img_id;
	private String f_img_file;
}
