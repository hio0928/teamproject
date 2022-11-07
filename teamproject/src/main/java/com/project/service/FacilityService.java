package com.project.service;

import java.util.List;

import com.project.domain.FacilityVO;

public interface FacilityService {
	
	public void register1(FacilityVO facility);
	public void register2(FacilityVO facility);
	public void register3(FacilityVO facility);
	public void register4(FacilityVO facility);
	public void register5(FacilityVO facility);
	
	public FacilityVO get(String f_id);
	
	public boolean modify(FacilityVO facility);
	
	public boolean remove(String f_id);
	
	public List<FacilityVO> getList();
	
	public List<FacilityVO> getListCat(String f_id);
	

}
