package com.project.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.project.domain.FacilityVO;

public interface FacilityMapper {
	
	@Select("select * from facility where f_id = 'f1'")
	public FacilityVO test();
	
	public List<FacilityVO> getList();
	
	public void insert1(FacilityVO facility);
	public void insert2(FacilityVO facility);
	public void insert3(FacilityVO facility);
	public void insert4(FacilityVO facility);
	public void insert5(FacilityVO facility);
	
	public FacilityVO read(String f_id);
	
	public int delete(String f_id);
	
	public int update(FacilityVO facility);

}
