package com.project.domain;

import java.util.List;

public class RegistPageDTO {
	private List<RegistDTO> regist;
	
	public List<RegistDTO> getRegist() {
		return regist;
	}

	public void setOrders(List<RegistDTO> regist) {
		this.regist = regist;
	}

	@Override
	public String toString() {
		return "RegistPageDTO [regist=" + regist + "]";
	}
}
