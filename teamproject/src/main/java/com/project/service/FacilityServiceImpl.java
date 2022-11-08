package com.project.service;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.project.domain.FacilityVO;
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
	public void register3(FacilityVO facility) {
		log.info("register3......." + facility);
		mapper.insert3(facility);		
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
	
	

}
