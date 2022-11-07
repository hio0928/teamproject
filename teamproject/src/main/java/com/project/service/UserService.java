package com.project.service;

import com.project.domain.UserVO;

public interface UserService {
	//회원가입
	public void userRegister(UserVO user) throws Exception;
	
	// 아이디 중복 검사
	public int idCheck(String u_Id) throws Exception;
	
	/* 로그인 */
    public UserVO userLogin(UserVO user) throws Exception;

    //회원정보 수정
    public void modify(UserVO user) throws Exception;
    
    // 회원 탈퇴
    public void userDelete(UserVO user) throws Exception;
}
