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
	
	private String cat_id;
	private String com_id;
	private String f_img_id;
	private String f_img_file;
	private int p_month;
	private int p_price;
}
