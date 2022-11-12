package com.project.service;

import java.util.List;

import com.project.domain.FacilityVO;
import com.project.domain.PriceDTO;

public interface FacilityService {
	
	public void register1(FacilityVO facility);
	public void register2(FacilityVO facility);
	public void register3(PriceDTO price);
	public void register4(FacilityVO facility);
	public void register5(FacilityVO facility);
	
	public FacilityVO get(String f_id);
	
	public boolean modify(FacilityVO facility);
	
	public boolean remove(String f_id);
	
	public List<FacilityVO> getList();
	public List<FacilityVO> getListFacility(String u_id);
	
	public List<FacilityVO> getListCat(String f_id);
	public List<FacilityVO> getListCom(String f_id);
	public List<FacilityVO> getListPrice(String f_id);
	
	public boolean remove(String f_id,String com_id);
	public boolean remove2(String f_id,String cat_id);
	public boolean remove3(String f_id,String p_month);
	public boolean registerCat(String f_id,String cat_id);
	public boolean registerCom(String f_id,String com_id);
	
	public FacilityVO getList2(String f_id);
	public FacilityVO getList3(String f_id);

}
