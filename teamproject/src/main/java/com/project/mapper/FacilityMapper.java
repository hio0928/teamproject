package com.project.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.project.domain.FacilityVO;
import com.project.domain.PriceDTO;

public interface FacilityMapper {
	
	
	public List<FacilityVO> getList();
	public List<FacilityVO> getListFacility(String u_id);

	public List<FacilityVO> getListCat(String f_id);
	public List<FacilityVO> getListCom(String f_id);
	public List<FacilityVO> getListPrice(String f_id);
	public List<FacilityVO> getListImg(String f_id);
	
	
	public void insert1(FacilityVO facility);
	public void insert2(FacilityVO facility);
	public void insert3(PriceDTO price);
	public void insert4(FacilityVO facility);
	public void insert5(FacilityVO facility);
	
	public FacilityVO read(String f_id);
	
	
	public int delete(String f_id);
	
	public int update(FacilityVO facility);
	
	public int registerCat(@Param("f_id") String f_id,@Param("cat_id") String cat_id);
	public int registerCom(@Param("f_id") String f_id,@Param("com_id") String com_id);

	public int remove2(@Param("f_id") String f_id,@Param("com_id") String com_id);
	public int remove3(@Param("f_id") String f_id,@Param("cat_id") String cat_id);
	public int remove4(@Param("f_id") String f_id,@Param("p_month") String p_month);
	
	public FacilityVO getList2(String f_id);
	public FacilityVO getList3(String f_id);

}
