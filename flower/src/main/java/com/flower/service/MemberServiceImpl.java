package com.flower.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.flower.dao.MemberDAO;
import com.flower.vo.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDAO memberDAO;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Autowired
	public MemberServiceImpl(MemberDAO memberDAO, PasswordEncoder passwordEncoder) {
		this.memberDAO = memberDAO;
		this.passwordEncoder = passwordEncoder;
	}
	
	@Override
	public void register(MemberVO vo) throws Exception{
		
		String encodePassword = passwordEncoder.encode(vo.getMember_password());
		vo.setMember_password(encodePassword);
		
		 memberDAO.register(vo);
	}

	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		
		return memberDAO.login(vo);
	}

	@Override
	public int idChk(MemberVO vo) throws Exception {
		int result = memberDAO.idChk(vo);
		return result;
	}

	@Override
	public String findEmailChk(String member_email) throws Exception {
		String result = memberDAO.findEmailChk(member_email);
		return result;
		 
	}

	@Override
	// 마이페이지 비밀번호 업데이트, 비밀번호 초기화(찾기)
	public void updatePassword(MemberVO vo) {
		memberDAO.updatePassword(vo);
	}

	@Override
	// 마이페이지 회원 탈퇴
	public void memberWithdrawal(MemberVO vo) {
		memberDAO.memberWithdrawal(vo);
	}

	@Override
	public void changePassword(MemberVO vo) throws Exception {
		memberDAO.changePassword(vo);
	}

	@Override
	public MemberVO loginWithEncryptedPassword(MemberVO vo) throws Exception {
		// 사용자가 입력한 비밀번호를 암호화
        String encryptedPassword = passwordEncoder.encode(vo.getMember_password());
        vo.setMember_password(encryptedPassword);
		
     // 암호화된 비밀번호로 로그인
        return memberDAO.login(vo);
		
	}


		

}
