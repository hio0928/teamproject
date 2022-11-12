package com.project.service;

import com.project.domain.PriceDTO;
import com.project.domain.RegistDTO;

public interface RegistService {
	//헬스장 결제
	public void Regist(RegistDTO regist) throws Exception;
	//달선택시 가격값 받아오기
	public Object getList(PriceDTO price);
}
