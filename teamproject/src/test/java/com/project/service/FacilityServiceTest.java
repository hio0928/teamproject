package com.project.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.project.domain.FacilityVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import oracle.net.aso.f;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {com.project.config.RootConfig.class})
@Log4j
public class FacilityServiceTest {
	
	@Setter(onMethod_ = {@Autowired})
	private FacilityService service;
	
	//@Test
	public void testGetList() {
		log.info(service.getList());

	}
	
	//@Test
	public void testGetListCat() {
		log.info(service.getListCat("f1"));
	}
	
	//@Test
	public void testGetListCom() {
		log.info(service.getListCom("f1"));
	}

	@Test
	public void testGetListPrice() {
		log.info(service.getListPrice("f1"));
	}
	
	//@Test
	public void testRegister1() {
		FacilityVO facility = new FacilityVO();
		facility.setF_id("f3");
		facility.setF_name("f3헬스장");
		facility.setF_address("서울");
		facility.setF_phone("010-000-0000");
		facility.setF_info("info 입력하세요");
		
		service.register1(facility);
		
		log.info("생성된 시설 번호 : " + facility.getF_id());
	}
	
	//@Test
	public void testRegister2() {
		FacilityVO facility = new FacilityVO();
		facility.setF_id("f3");
		facility.setCat_id("cat1");
		
		
		log.info("categorize : " + facility.getF_id() + facility.getCat_id());
	}
	
	//@Test
	public void testRegister3() {
		FacilityVO facility = new FacilityVO();
		facility.setF_id("f2");
		facility.setP_month(3);
		facility.setP_price(150000);
		
		service.register3(facility);
		
		log.info("Price: " + facility.getF_id() + facility.getP_month() + facility.getP_price());
	}
	
	//@Test
	public void testRegister4() {
		FacilityVO facility = new FacilityVO();
		facility.setF_id("f2");
		facility.setCom_id("com2");
		
		service.register4(facility);
		log.info("provide: " + facility.getF_id() + facility.getCom_id());
	}
	
	//@Test
	public void testRegister5() {
		FacilityVO facility = new FacilityVO();
		facility.setF_id("f2");
		facility.setF_img_id("f_img8");
		facility.setF_img_file("hhhh.jpg");
		
		service.register5(facility);
		log.info("f_img: " + facility.getF_img_id() + facility.getF_img_file());
	}
	
	//@Test
	public void testDelete() {
		log.info("REMOVE RESULT: " + service.remove("f3"));
	}
	
	//@Test
	public void testUpdate() {
		FacilityVO facility = new FacilityVO();
		facility.setF_id("f3");
		facility.setF_name("f3헬스장 수정");
		facility.setF_address("서울 수정");
		facility.setF_phone("010-1111-1111");
		facility.setF_info("info 수정하세요");
		
		service.modify(facility);
		
		log.info("MODIFY RESULT" + service.modify(facility));
	}
}
