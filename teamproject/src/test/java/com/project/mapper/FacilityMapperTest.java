package com.project.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.project.domain.FacilityVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(classes = {com.project.config.RootConfig.class})
@Log4j
public class FacilityMapperTest {
	@Setter(onMethod_ = @Autowired)
	private FacilityMapper mapper;
	
	
	//@Test
	public void test() {
		FacilityVO facility = mapper.test();
		
		log.info(facility);
	}
	
	
	//@Test
	public void testRead() {
		
		FacilityVO facility = mapper.read("f1");
		
		log.info(facility);
	}
	
	//@Test
	public void testGetList() {
		mapper.getList().forEach(facility -> log.info(facility));
	}
	
	@Test 
	public void testInsert1() {
		FacilityVO facility = new FacilityVO();
		facility.setF_id("f2");
		facility.setF_name("헬스2");
		facility.setF_address("부산");
		facility.setF_phone("010-000-0000");
		facility.setF_info("공지사항");
		
		mapper.insert1(facility);
		log.info("1111");
		
		log.info(facility);
		log.info(mapper);
	}
	
	//@Test
	public void testInsert2() {
		FacilityVO facility = new FacilityVO();
		
		facility.setF_id("테스트 f_id");
		facility.setCat_id("테스트 cat_id");
	}
	
	//@Test 
	public void testDelete() {
		log.info("DELETE COUNT: " + mapper.delete("f2"));
	}
	
	
	
	
}
