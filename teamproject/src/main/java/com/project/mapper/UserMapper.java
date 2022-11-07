package com.project.mapper;

import com.project.domain.UserVO;

public interface UserMapper {

	// 회원가입
	public void userRegister(UserVO user);

	// 아이디 중복 검사
	public int idCheck(String u_id);
	
	/* 로그인 */
    public UserVO userLogin(UserVO user);
    
    // 회원정보수정
    public void modify(UserVO user);
    
    // 회원탈퇴
    public void userDelete(UserVO user);
}
