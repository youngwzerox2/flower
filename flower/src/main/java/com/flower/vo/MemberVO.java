package com.flower.vo;

import lombok.Data;

@Data
public class MemberVO {

	private Integer member_id;
	private boolean admin_status;
	private String member_email;
	private String member_password;
	private String member_name;
	private String member_register_date;
	private String member_leave_date;
}
