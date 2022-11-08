package com.project.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.project.domain.FacilityVO;
import com.project.domain.PriceDTO;

public interface FacilityMapper {
	
	
	public List<FacilityVO> getList();

	public List<FacilityVO> getListCat(String f_id);
	public List<FacilityVO> getListCom(String f_id);
	public List<FacilityVO> getListPrice(String f_id);
	public List<FacilityVO> getListImg(String f_id);
	
	
	public void insert1(FacilityVO facility);
	public void insert2(PriceDTO price);
	public void insert3(FacilityVO facility);
	public void insert4(FacilityVO facility);
	public void insert5(FacilityVO facility);
	
	public FacilityVO read(String f_id);
	
	public int delete(String f_id);
	
	public int update(FacilityVO facility);

}
