package com.project.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.domain.PriceDTO;
import com.project.domain.RegistDTO;
import com.project.service.RegistService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping(value = "/")
public class RegistController {
	private static final Logger logger = LoggerFactory.getLogger(RegistController.class);

	@Autowired
	private RegistService registservice;
	
	@RequestMapping(value = "/pay/pay", method = RequestMethod.GET)
	public void RegistGET() {

		logger.info("등록페이지 이동");

	}
	// 헬스장 결제
		@RequestMapping(value = "/pay/pay", method = RequestMethod.POST)
		public String registPOST(RegistDTO regist) throws Exception {

			logger.info("regist 진입");

			// 헬스장결제 실행
			registservice.Regist(regist);

			logger.info("regist Service 성공");

			return "redirect:/";

		}
		@GetMapping("/list")	//1.가격 조회
		public void list(PriceDTO price, Model model) {
			
			log.info("list: " + price);
			model.addAttribute("list", registservice.getList(price));
		}
		
}
