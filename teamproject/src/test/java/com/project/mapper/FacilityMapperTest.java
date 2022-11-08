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
	public void testRead() {
		
		FacilityVO facility = mapper.read("f1");
		
		log.info(facility);
	}
	
	//@Test
	public void testGetList() {
		mapper.getList().forEach(facility -> log.info(facility));
	}
	
	//@Test
	public void testGetListCat() {
		mapper.getListCat("f1").forEach(facility -> log.info(facility));
	}
	
	//@Test 
	public void testInsert1() {
		FacilityVO facility = new FacilityVO();
		facility.setF_id("f2");
		facility.setF_name("헬스2");
		facility.setF_address("부산");
		facility.setF_phone("010-000-0000");
		facility.setF_info("공지사항");
		
		mapper.insert1(facility);
		
		log.info(facility);
	}
	
	
	//@Test
	public void testInsert2() {
		FacilityVO facility = new FacilityVO();
		
		facility.setF_id("f2");
		facility.setCat_id("cat1");
		
		mapper.insert2(facility);
		log.info(facility);
	}
	
	//@Test
	public void testInsert3() {
		FacilityVO facility = new FacilityVO();
		
		facility.setF_id("f2");
		facility.setP_month(1);
		facility.setP_price(70000);
		
		mapper.insert3(facility);
		log.info(facility);
	}
	
	//@Test
	public void testInsert4() {
		FacilityVO facility = new FacilityVO();
		
		facility.setF_id("f2");
		facility.setCom_id("com1");
		
		mapper.insert4(facility);
		log.info(facility);
	}
	
	//@Test
	public void testInsert5() {
		FacilityVO facility = new FacilityVO();
		facility.setF_id("f2");
		facility.setF_img_id("f_img7");
		facility.setF_img_file("xxx.jpg");
		
		mapper.insert5(facility);
		log.info(facility);
	}
	
	
	//@Test 
	public void testDelete() {
		log.info("DELETE COUNT: " + mapper.delete("f2"));
	}
	
	//@Test
	public void testUpdate() {
		
		FacilityVO facility = new FacilityVO();
		facility.setF_id("f2");
		facility.setF_name("헬스2 수정");
		facility.setF_address("부산 수정");
		facility.setF_phone("010-1111-1111");
		facility.setF_info("공지사항 수정");
		
		int count = mapper.update(facility);
		log.info("UPDATE COUNT: " + count);
	}
	
	
	@Test 
	public void testGetListCom() {
		
		mapper.getListCom("f2").forEach(facility -> log.info(facility));

	}
	
}
