package com.flower.vo;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class OrderTableListVo {

	
	private List<OrderTableVO> Listvo;
	private String notbuyfromcart;
}
