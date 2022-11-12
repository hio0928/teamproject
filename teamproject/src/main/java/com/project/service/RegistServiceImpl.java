package com.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.domain.PriceDTO;
import com.project.domain.RegistDTO;
import com.project.mapper.RegistMapper;

@Service
public class RegistServiceImpl implements RegistService{
	
	@Autowired
	RegistMapper registmapper;
	
	/*헬스장 결제*/
	@Override
	public void Regist(RegistDTO regist) throws Exception {
		
		registmapper.Regist(regist);
		
	}

	@Override
	public Object getList(PriceDTO price) {
		
		return null;
	}


}
