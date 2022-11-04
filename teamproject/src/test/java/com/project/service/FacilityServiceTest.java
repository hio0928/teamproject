package com.project.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.project.domain.FacilityVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {com.project.config.RootConfig.class})
@Log4j
public class FacilityServiceTest {
	
	@Setter(onMethod_ = {@Autowired})
	private FacilityService service;
	
	//@Test
	public void testRegister1() {
		FacilityVO facility = new FacilityVO();
		facility.setF_id("f3");
		facility.setF_name("f3헬스장");
		facility.setF_address("서울");
		facility.setF_phone("010-000-0000");
		facility.setF_info("info 입력하세요");
		
		service.register1(facility);
		
		log.info(facility);
		log.info("생성된 시설 번호 : " + facility.getF_id());
	}
	
	@Test
	public void testDelete() {
		log.info("REMOVE RESULT: " + service.remove("f3"));
	}
}
