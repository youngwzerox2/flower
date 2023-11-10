package com.flower.vo;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

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
	
	//비밀번호 암호화
	public void encodePassword(PasswordEncoder passwordEncoder) {
		System.out.println(">"+member_password);
		//PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		this.member_password = passwordEncoder.encode(this.member_password);
		System.out.println(">>"+member_password);
	}
}
