package com.flower.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AdminVO {
	
	// 회원 ID
	private Integer member_id;
	
	// 관리자여부
	private boolean admin_status;
	
	// 회원 email
	private String member_email;
	
	// 회원 이름
	private String member_name;
	
	// 회원 가입일 
	private String member_register_date;
	
	// 회원 탈퇴일
	private String member_leave_date;
	
	// 회원 상태
	private String member_status;
	
	// 신고횟수
	private String reports_cnt;
	
	// 신고여부
	private String report_yn;
	
	// 신고내용
	private String report_contents;
	
	// 신고일
	private String reports_date;
	
}
