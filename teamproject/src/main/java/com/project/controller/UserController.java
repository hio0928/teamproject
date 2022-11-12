package com.project.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.domain.UserVO;
import com.project.service.UserService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping(value = "/")
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@Autowired
	private UserService userservice;

	@RequestMapping(value = "/user/login", method = RequestMethod.GET)
	public void loginGET() {

		logger.info("로그인 페이지");
		// 로그인 페이지 이동
	}

	// 아이디 중복 검사
	@RequestMapping(value = "/u_IdChk", method = RequestMethod.POST)
	@ResponseBody
	public String u_IdChkPOST(String u_Id) throws Exception {

		/* logger.info("u_IdChk() 진입"); */
		logger.info("u_IdChk() 진입");

		int result = userservice.idCheck(u_Id);

		logger.info("결과값 = " + result);

		if (result != 0) {

			return "fail"; // 중복 아이디가 존재

		} else {

			return "success"; // 중복 아이디 x

		}
	} // u)IdChkPOST() 종료

	// 회원가입
	@RequestMapping(value = "/user/register", method = RequestMethod.POST)
	public String registerPOST(UserVO user) throws Exception {

		logger.info("register 진입");

		// 회원가입 서비스 실행
		userservice.userRegister(user);

		logger.info("register Service 성공");

		return "redirect:/user/login";

	}

	@RequestMapping(value = "/user/register", method = RequestMethod.GET)
	public void registerGET() {

		logger.info("회원가입 페이지");
		// 회원가입 페이지 이동
	}

	/* 로그인 */
	@RequestMapping(value = "/user/login", method = RequestMethod.POST)
	public String loginPOST(HttpServletRequest request, UserVO user, RedirectAttributes rttr) throws Exception {

		// System.out.println("login 메서드 진입");
		// System.out.println("전달된 데이터 : " + user);

		HttpSession session = request.getSession();
		UserVO lvo = userservice.userLogin(user);

		if (lvo == null) { // 일치하지 않는 아이디, 비밀번호 입력 경우

			int result = 0;
			rttr.addFlashAttribute("result", result);
			return "redirect:/user/login";

		}

		session.setAttribute("user", lvo); // 일치하는 아이디, 비밀번호 경우 (로그인 성공)

		return "redirect:/";
	}
	/* 메인페이지 로그아웃 */
    @RequestMapping(value="logout.do", method=RequestMethod.GET)
    public String logoutMainGET(HttpServletRequest request) throws Exception{
    	 logger.info("logoutMainGET메서드 진입");
         
         HttpSession session = request.getSession();
         
         session.invalidate();
         
         return "redirect:/user/login";  
         
    }
    /* 회원정보 수정페이지이동 */
	@RequestMapping(value = "/user/modify", method = RequestMethod.GET)
	public void modifyGET() throws Exception {

		logger.info("회원수정 페이지");
		// 회원수정 페이지 이동
	}
    /* 회원정보 수정 */
	@RequestMapping(value = "/user/modify", method = RequestMethod.POST)
	public String modifyPost(UserVO user, HttpSession session) throws Exception {
		userservice.modify(user);
		logger.info("modify 성공");
		
		return "redirect:/user/login";
	}
	
	// 회원 탈퇴
		@RequestMapping(value = "/user/userDelete", method = RequestMethod.POST)
		public String userDelete(UserVO user, HttpSession session) throws Exception
		{
			logger.info("탈퇴 성공");
			userservice.userDelete(user);
			session.invalidate();
			return "redirect:/user/login";
		}
}
