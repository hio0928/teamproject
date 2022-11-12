package com.project.service;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.project.domain.FacilityVO;
import com.project.domain.PriceDTO;
import com.project.mapper.FacilityMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
@Repository
public class FacilityServiceImpl implements FacilityService{

	
	private FacilityMapper mapper;

	@Override
	public void register1(FacilityVO facility) {
		log.info("register1......." + facility);
		mapper.insert1(facility);
	}

	@Override
	public void register2(FacilityVO facility) {
		log.info("register2......." + facility);
		mapper.insert2(facility);		
	}
	
	@Override
	public void register3(PriceDTO price) {
		log.info("register3......." + price);
		mapper.insert3(price);		
	}


	@Override
	public void register4(FacilityVO facility) {
		log.info("register4......." + facility);
		mapper.insert4(facility);		
	}

	@Override
	public void register5(FacilityVO facility) {
		log.info("register5......." + facility);
		mapper.insert5(facility);		
	}

	@Override
	public FacilityVO get(String f_id) {
		log.info("get........" + f_id);
		return mapper.read(f_id);
	}

	@Override
	public boolean modify(FacilityVO facility) {
		log.info("modify........" + facility);
		return mapper.update(facility) == 1;
	}

	@Override
	public boolean remove(String f_id) {
		log.info("remove......" + f_id);
		return mapper.delete(f_id) == 1;
	}

	@Override
	public List<FacilityVO> getList() {
		log.info("getList.......");
		return mapper.getList();
	}

	@Override
	public List<FacilityVO> getListCat(String f_id) {
		log.info("getListCat.......");
		return mapper.getListCat(f_id);
	}

	@Override
	public List<FacilityVO> getListCom(String f_id) {
		log.info("getListCom......");
		return mapper.getListCom(f_id);
	}

	@Override
	public List<FacilityVO> getListPrice(String f_id) {
		log.info("getListPrice......");
		return mapper.getListPrice(f_id);
	}


	@Override
	public List<FacilityVO> getListFacility(String u_id) {
		log.info("getListFacility.......");
		return mapper.getListFacility(u_id);
	}
	
	@Override
	public boolean remove2(String f_id,String cat_id) {
		log.info("remove......" + f_id);
		return mapper.remove3(f_id,cat_id) == 1;
	}
	
	@Override
	public boolean remove3(String f_id,String p_month) {
		log.info("remove......" + f_id);
		return mapper.remove4(f_id,p_month) == 1;
	}

	@Override
	public boolean remove(String f_id,String com_id) {
		log.info("remove......" + f_id);
		return mapper.remove2(f_id,com_id) == 1;
	}

	@Override
	public boolean registerCat(String f_id,String cat_id) {
		return mapper.registerCat(f_id,cat_id) == 1;
	}

	@Override
	public boolean registerCom(String f_id, String com_id) {
		return mapper.registerCom(f_id,com_id) == 1;
	}
	
	@Override
	public FacilityVO getList2(String f_id) {
		return mapper.getList2(f_id);
	}


	@Override
	public FacilityVO getList3(String f_id) {
		return mapper.getList3(f_id);
	}

	
	
}
