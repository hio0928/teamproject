package com.project.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(classes = {com.project.config.RootConfig.class, com.project.config.ServletConfig.class})
@Log4j
public class FacilityControllerTest {
	
	@Setter(onMethod_ = {@Autowired})
	private WebApplicationContext ctx;
	
	private MockMvc mockMvc;
	
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
	//@Test
	public void testRegister1() throws Exception{
	
		String resultPage = mockMvc.perform(MockMvcRequestBuilders
											.post("/facility/register1")
											.param("f_id", "f4")
											.param("f_name", "f4헬스장")
											.param("f_address", "대구")
											.param("f_phone", "010-0000-0000")
											.param("f_info", "가나다라마바사아자차카하")
											)
									.andReturn()
									.getModelAndView()
									.getViewName();
		log.info(resultPage);
	}
	
	//@Test
	public void testRagister2() throws Exception{
		
		String resultPage = mockMvc.perform(MockMvcRequestBuilders
											.post("/facility/register2")
											.param("f_id", "f3")
											.param("cat_id", "cat3")
											)
									.andReturn()
									.getModelAndView()
									.getViewName();
		log.info(resultPage);
	}
	
	//@Test
	public void testRegister3() throws Exception{
		
		String resultPage = mockMvc.perform(MockMvcRequestBuilders
											.post("/facility/register3")
											.param("f_id", "f3")
											.param("p_month","1")
											.param("p_price", "80000")
											)
									.andReturn()
									.getModelAndView()
									.getViewName();
		
		log.info(resultPage);
	}
	
	//@Test
	public void testRegister4() throws Exception{
		
		String resultPage = mockMvc.perform(MockMvcRequestBuilders
											.post("/facility/register4")
											.param("f_id", "f2")
											.param("com_id", "com3")
											)
									.andReturn()
									.getModelAndView()
									.getViewName();
		
		log.info(resultPage);
	}
	
	//@Test
	public void testRegister5() throws Exception{
		
		String resultPage = mockMvc.perform(MockMvcRequestBuilders
											.post("/facility/register5")
											.param("f_img_id", "f_img_t1")
											.param("f_iimg_file", "controllertest.jpg")
											.param("f_id", "f2")
											)
									.andReturn()
									.getModelAndView()
									.getViewName();
						
	}
	
	//@Test
	public void testRemove() throws Exception{
		
		String reusult = mockMvc.perform(MockMvcRequestBuilders
										.post("/facility/remove")
										.param("f_id", "f4"))
								.andReturn()
								.getModelAndView()
								.getViewName();
		
		log.info(reusult);
	}
}
