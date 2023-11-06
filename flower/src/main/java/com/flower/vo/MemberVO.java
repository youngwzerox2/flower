package com.flower.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MemberVO {

	private Integer member_id;
	private boolean admin_status;
	private String member_email;
	private String member_password;
	private String member_name;
	private String member_register_date;
	private String member_leave_date;
	private String member_status;
	
	/*********
	 * 추가한 사람: 최진화
	 * 사유: sessionScope.member로 접근하여 가져오기 때문.
	 * 역할: 로그인한 상태에서 장바구니 버튼 위에 장바구니에 담긴 수량 출력하기 위한 변수
	 * **/
	private Integer member_cart_quan;
}
