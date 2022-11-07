package com.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.domain.UserVO;
import com.project.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	UserMapper usermapper;
	
	/*회원 가입*/
	@Override
	public void userRegister(UserVO user) throws Exception {
		
		usermapper.userRegister(user);
		
	}
	/*아이디 중복 검사*/
	@Override
	public int idCheck(String u_Id) throws Exception {
		
		return usermapper.idCheck(u_Id);
	}
	
	/* 로그인 */
	@Override
	public UserVO userLogin(UserVO user) throws Exception {
		return usermapper.userLogin(user);
	}
	
	/*회원 정보 수정*/
	@Override
	public void modify(UserVO user) throws Exception {
		
		usermapper.modify(user); 
		
	}
	//회원 탈퇴
	@Override
	public void userDelete(UserVO user) throws Exception {
		usermapper.userDelete(user);
		
	}
	

	
}
