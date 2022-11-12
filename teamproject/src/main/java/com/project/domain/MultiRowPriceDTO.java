package com.project.domain;

import java.util.List;

import lombok.Data;

@Data
public class MultiRowPriceDTO {
	private List<PriceDTO> priceDTOList;
}
