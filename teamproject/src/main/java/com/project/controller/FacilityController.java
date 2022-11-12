package com.project.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.domain.FacilityVO;
import com.project.domain.MultiRowPriceDTO;
import com.project.domain.PriceDTO;
import com.project.service.FacilityService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/facility/*")
@AllArgsConstructor
public class FacilityController {
	
	private FacilityService service;
	
	
	@GetMapping("/list")
	public void list(Model model){
		log.info("list: ");
		model.addAttribute("list", service.getList());
	}
	
	
	@GetMapping("/listFacility")
	public void listFacility(@RequestParam("u_id") String u_id, Model model) {
		log.info("listFacility: ");
		model.addAttribute("listFacility", service.getListFacility(u_id));
	}
	
	@GetMapping("/register1")
	public void register1() {
		
	}
	
	@PostMapping("/register1")
	public String register1(FacilityVO facility, RedirectAttributes rttr) {
		
		log.info("register1: " + facility);
		service.register1(facility);
		rttr.addFlashAttribute("result", facility.getF_id());
		return "redirect:/facility/listFacility";
	}
	
	@GetMapping("/register2")
	public void register2() {
		
	}
	
	@PostMapping("/register2")
	public String register2(FacilityVO facility, RedirectAttributes rttr) {
		
		log.info("register2: " + facility);
		service.register2(facility);
		rttr.addFlashAttribute("result", facility.getF_id());
		return "redirect:/facility/register3";
	}
	@GetMapping("/register3")
	public void register3(@RequestParam("f_id") String f_id, Model model) {
		log.info(f_id);
		model.addAttribute("register3", model);
	}
	
	@PostMapping("/register3")
	public String register3(@ModelAttribute MultiRowPriceDTO prices, RedirectAttributes rttr) {
		log.info(prices);
		prices.getPriceDTOList().get(0).getF_id();
		for(int i=0; i < prices.getPriceDTOList().size(); i++) {
			if(prices.getPriceDTOList().get(i).getP_month() != 0 || prices.getPriceDTOList().get(i).getP_price() != 0)
			service.register3(prices.getPriceDTOList().get(i));
		}
		
		return "redirect:/facility/register4";
	}
	
	@GetMapping("/register4")
	public void register4() {
		
	}
	
	@PostMapping("/register4")
	public String register4(FacilityVO facility, RedirectAttributes rttr) {
		
		log.info("register4: " + facility);
		service.register4(facility);
		rttr.addFlashAttribute("result", facility.getF_id());
		return "redirect:/facility/register5";
	}
	
	@GetMapping("/register5")
	public void register5() {
		
	}
	
	@PostMapping("/register5")
	public String register5(FacilityVO facility, RedirectAttributes rttr) {
		
		log.info("register5: " + facility);
		service.register5(facility);
		rttr.addFlashAttribute("result", facility.getF_id());
		return "redirect:/facility/list";
	}
	
	@GetMapping({"/get", "/modify"})
	public void get(@RequestParam("f_id") String f_id, Model model) {
		
		log.info("/get");
		model.addAttribute("facility", service.get(f_id));
	}
	
	@PostMapping("/modify")
	public String modify(FacilityVO facility, RedirectAttributes rttr) {
		
		log.info("modify: " + facility);
		
		if(service.modify(facility)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/facility/list";
	}

//	@RequestMapping(value="/getListCat", method={RequestMethod.GET, RequestMethod.POST})
//	public ResponseEntity<FacilityVO> getListCat(@RequestParam("f_id") String f_id) {
//		log.info("getListCat...." + f_id);
//		service.getListCat(f_id);
//		
//		return new ResponseEntity<FacilityVO>(service.getListCat(f_id), HttpStatus.OK);
//		
//	}

	@GetMapping(value="/getListCat", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<FacilityVO>> getListCat(@RequestParam("f_id") String f_id) {
		log.info("getListCat...." + f_id);
		
		return new ResponseEntity<List<FacilityVO>>(service.getListCat(f_id), HttpStatus.OK);
	}
	
	@GetMapping(value="/getListPrice", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<FacilityVO>> getListPrice(@RequestParam("f_id") String f_id) {
		log.info("getListPrice...." + f_id);
		
		return new ResponseEntity<List<FacilityVO>>(service.getListPrice(f_id), HttpStatus.OK);
	}
	
	@GetMapping(value="/getListCom", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<FacilityVO>> getListCom(@RequestParam("f_id") String f_id) {
		log.info("getListCat...." + f_id);
		
		return new ResponseEntity<List<FacilityVO>>(service.getListCom(f_id), HttpStatus.OK);
	}
	
	@RequestMapping(value = "/remove", method = { RequestMethod.GET, RequestMethod.POST })
	public String remove(@RequestParam("f_id") String f_id, RedirectAttributes rttr) {

		log.info("remove..." + f_id);
		if (service.remove(f_id)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/facility/list";
	}

	@RequestMapping(value = "/remove2", method = { RequestMethod.GET, RequestMethod.POST })
	public String remove2(@RequestParam("f_id") String f_id, @RequestParam("cat_id") String cat_id,
			RedirectAttributes rttr) {

		log.info("remove..." + f_id);
		if (service.remove2(f_id, cat_id)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/facility/modify5?f_id=" + f_id;
	}

	@RequestMapping(value = "/remove3", method = { RequestMethod.GET, RequestMethod.POST })
	public String remove3(@RequestParam("f_id") String f_id, @RequestParam("p_month") String p_month,
			RedirectAttributes rttr) {

		log.info("remove..." + f_id);
		if (service.remove3(f_id, p_month)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/facility/modify4?f_id=" + f_id;
	}

	@RequestMapping(value = "/registerCat", method = { RequestMethod.GET, RequestMethod.POST })
	public String registerCat(@RequestParam("f_id") String f_id, @RequestParam("cat_id") String cat_id,
			RedirectAttributes rttr) {

		log.info("remove..." + f_id);
		if (service.registerCat(f_id, cat_id)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/facility/modify5?f_id=" + f_id;
	}

	@RequestMapping(value = "/registerCom", method = { RequestMethod.GET, RequestMethod.POST })
	public String registerCom(@RequestParam("f_id") String f_id, @RequestParam("com_id") String com_id,
			RedirectAttributes rttr) {

		log.info("remove..." + f_id);
		if (service.registerCom(f_id, com_id)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/facility/modify6?f_id=" + f_id;
	}
	
	
	
	@GetMapping("/modify5")
	public void modify5(@RequestParam("f_id") String f_id, Model model) {
			log.info("list: ");
			model.addAttribute("facility", service.getList2(f_id));
		
	}
	
	@GetMapping("/modify6")
	public void modify6(@RequestParam("f_id") String f_id, Model model) {
			log.info("list: ");
			model.addAttribute("facility", service.getList3(f_id));
		
	}

}
