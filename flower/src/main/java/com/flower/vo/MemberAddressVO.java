package com.flower.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MemberAddressVO {

	private Integer address_id;
	private Integer member_id;
	private String member_tel;
	private String recipient_name;
	private String postal_code;
	private String recipient_address;
	private String recipient_tel;
	private Integer default_delivery_address;
	private String type;
	private String recipient_detailaddress;
}
