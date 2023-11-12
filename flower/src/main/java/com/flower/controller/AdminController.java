package com.flower.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.flower.service.AdminService;
import com.flower.vo.AdminVO;

@RestController
public class AdminController {

	@Autowired
	private AdminService adminService;
	
	/* 
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-01
	 * 메서드	: adminMain
	 * 인자	: void
	 * 반환	: String
	 * 설명	: 관리자 페이지 이동
	 * */
	@RequestMapping("admin/login")
	public ModelAndView adminMain() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/adminHome");
        return modelAndView;
	}
	
	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-02
	 * 메서드	: searchMembers
	 * 인자	: searchKey, searchValue
	 * 반환	: List<AdminVO>
	 * 설명	: 검색조건에 맞는 모든 회원 조회
	 * */
	@GetMapping("admin/searchMembers")
	public List<AdminVO> searchMembers(String searchKey, String searchValue) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchKey", searchKey);
		map.put("searchValue", searchValue);
		return adminService.searchMembers(map);
	}
	
	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-02
	 * 메서드	: searchMemberDetail
	 * 인자	: email
	 * 반환	: AdminVO
	 * 설명	: 특정 회원 상세 조회
	 * */
	@GetMapping("admin/searchMemberDetail")
	public AdminVO searchMemberDetail(String email) {
		return adminService.searchMemberDetail(email);
	}
	
	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-03
	 * 메서드	: limitMember
	 * 인자	: email
	 * 반환	: result
	 * 설명	: 특정 회원 제한 조치
	 * */
	@PostMapping("admin/limitMember")
	public int limitMember(String email) {
		return adminService.limitMember(email);
	}
	
	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-06
	 * 메서드	: searchProducts
	 * 인자	: searchKey, searchValue
	 * 반환	: List<AdminVO>
	 * 설명	: 검색조건에 맞는 모든 상품 조회
	 * */
	@GetMapping("admin/searchProducts")
	public List<AdminVO> searchProducts(String searchKey, String searchValue) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchKey", searchKey);
		map.put("searchValue", searchValue);
		return adminService.searchProducts(map);
	}
	
	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-06
	 * 메서드	: searchProductDetail
	 * 인자	: productId
	 * 반환	: AdminVO
	 * 설명	: 특정 상품 상세 조회
	 * */
	@GetMapping("admin/searchProductDetail")
	public Map<String, List<?>> searchProductDetail(String productId) {
		Map<String, List<?>> result = new HashMap<String, List<?>>();
		List<AdminVO> product 	= adminService.searchProductDetail(productId);
		List<AdminVO> imgs 		= adminService.searchProductImgs(productId);
		
		result.put("product", product);
		result.put("imgs", imgs);
		
		return result;
	}
	
	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-12
	 * 메서드	: searchInquiries
	 * 인자	: searchKey, searchValue
	 * 반환	: List<AdminVO>
	 * 설명	: 검색조건에 맞는 모든 상품 조회
	 * */
	@GetMapping("admin/searchInquiries")
	public List<AdminVO> searchInquiries(String searchKey, String searchValue) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchKey", searchKey);
		map.put("searchValue", searchValue);
		return adminService.searchInquiries(map);
	}
	
	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-12
	 * 메서드	: searchInquiryDetail
	 * 인자	: inquiryId
	 * 반환	: AdminVO
	 * 설명	: 특정 문의 상세 조회
	 * */
	@GetMapping("admin/searchInquiryDetail")
	public AdminVO searchInquiryDetail(String inquiryId) {
		return adminService.searchInquiryDetail(inquiryId);
	}
	
	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-06
	 * 메서드	: modifyProductVisible
	 * 인자	: email
	 * 반환	: Integer
	 * 설명	: 특정 회원 제한 조치
	 * */
	@PostMapping("admin/modifyProductVisible")
	public int modifyProductVisible(String proId, String proStat) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("proId", proId);
		map.put("proStat", proStat.equals("Y") ? "N" : "Y");
		
		return adminService.modifyProductVisible(map);
	}

	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-07
	 * 메서드	: searchReportContent
	 * 인자	: reportId
	 * 반환	: AdminVO
	 * 설명	: 특정 회원의 신고 내역 조회
	 * */
	@GetMapping("admin/searchReportContent")
	public AdminVO searchReportContent(String realId) {
		return adminService.searchReportContent(realId);
	}
	
	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-07
	 * 메서드	: reportCancel
	 * 인자	: memberId
	 * 반환	: Integer
	 * 설명	: 특정 회원의 신고 내역 조회
	 * */
	@PostMapping("admin/reportCancel")
	public int reportCancel(String memberId, String productId) {
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("memberId", memberId);
		map.put("productId", productId);
		
		return adminService.reportCancel(map);
	}
	
	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-07
	 * 메서드	: deleteReportTarget
	 * 인자	: reviewId
	 * 반환	: Integer
	 * 설명	: 특정 리뷰 삭제 (관리자)
	 * */
	@PostMapping("admin/deleteReportTarget")
	public int deleteReportTarget(String reviewId) {
		return adminService.deleteReportTarget(reviewId);
	}
	
	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-07
	 * 메서드	: selectPolicyColumn
	 * 인자	: void
	 * 반환	: Integer
	 * 설명	: Policy 테이블 정보 조회
	 * */
	@GetMapping("admin/selectPolicyColumn")
	public  List<AdminVO> selectPolicyColumn() {
		return adminService.selectPolicyColumn();
	}
	
	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-08
	 * 메서드	: selectPolicyValue
	 * 인자	: String
	 * 반환	: String
	 * 설명	: Policy 컬럼 내용 조회
	 * */
	@GetMapping("admin/selectPolicyValue")
	public Map<String, String> selectPolicyValue(String column) {
		return adminService.selectPolicyValue(column);
	}
	
	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-08
	 * 메서드	: modifyPolicy
	 * 인자	: id, value
	 * 반환	: Integer
	 * 설명	: Policy 컬럼 내용 수정
	 * */
	@PostMapping("admin/modifyPolicy")
	public int modifyPolicy(String id, String value) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("value", value);
		
		return adminService.modifyPolicy(map);
	}
	
	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-09
	 * 메서드	: selectNewProductID
	 * 인자	: void
	 * 반환	: AdminVO
	 * 설명	: 신규 상품ID 조회
	 * */
	@GetMapping("admin/selectNewProductID")
	public Integer selectNewProductID() {
		return adminService.selectNewProductId();
	}
	
	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-08
	 * 메서드	: registerProduct
	 * 인자	: MultipartFile[], AdminVO
	 * 반환	: String
	 * 설명	: 상품 이미지들 등록
	 * */
	@PostMapping("admin/registerProduct")
    public String registerProduct(@RequestParam("guidefile") MultipartFile[] guideFiles
                            , @RequestParam("listfile") MultipartFile[] listFiles
                            , @RequestParam("mainfile") MultipartFile[] mainFiles
                            , @RequestParam("subfile") MultipartFile[] subFiles
                            , AdminVO adminVO) {
		
        String userHome = System.getProperty("user.home");
        String uploadPath = userHome + "\\git\\flower\\flower\\src\\main\\webapp\\resources\\product\\imgs"; 
        
        // 상품 등록
        adminService.registerProduct(adminVO);
        
        try {
            for (MultipartFile file : guideFiles) {
                if (!file.isEmpty()) {
                	String froute = "guide";
                    String fileName = file.getOriginalFilename();
                    File targetFile = new File(uploadPath + "\\" + froute + "\\" + fileName);
                    file.transferTo(targetFile);

                    adminVO.setProduct_image_file_name(fileName);
                    adminVO.setProduct_image_froute(froute);
                    
                    // 상품 이미지 등록
                    adminService.registerProductImg(adminVO);
                    
                }
            }

            for (MultipartFile file : listFiles) {
                if (!file.isEmpty()) {
                	String froute = "list";
                    String fileName = file.getOriginalFilename();
                    File targetFile = new File(uploadPath + "\\" + froute + "\\" + fileName);
                    file.transferTo(targetFile);
                    
                    adminVO.setProduct_image_file_name(fileName);
                    adminVO.setProduct_image_froute(froute);
                    
                    // 상품 이미지 등록
                    adminService.registerProductImg(adminVO);
                }
            }

            for (MultipartFile file : mainFiles) {
                if (!file.isEmpty()) {
                	String froute = "main";
                    String fileName = file.getOriginalFilename();
                    File targetFile = new File(uploadPath + "\\" + froute + "\\" + fileName);
                    file.transferTo(targetFile);
                    
                    adminVO.setProduct_image_file_name(fileName);
                    adminVO.setProduct_image_froute(froute);
                    
                    // 상품 이미지 등록
                    adminService.registerProductImg(adminVO);
                }
            }

            for (MultipartFile file : subFiles) {
                if (!file.isEmpty()) {
                	String froute = "sub";
                    String fileName = file.getOriginalFilename();
                    File targetFile = new File(uploadPath + "\\" + froute + "\\" + fileName);
                    file.transferTo(targetFile);
                    
                    adminVO.setProduct_image_file_name(fileName);
                    adminVO.setProduct_image_froute(froute);
                    
                    // 상품 이미지 등록
                    adminService.registerProductImg(adminVO);
                }
            }

            return "complete";
        } catch (IOException e) {
            e.printStackTrace();
            return "fails";
        }
    }

	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-09
	 * 메서드	: searchReviews
	 * 인자	: searchKey, searchValue
	 * 반환	: List<AdminVO>
	 * 설명	: 검색조건에 맞는 모든 리뷰 조회
	 * */
	@GetMapping("admin/searchReviews")
	public List<AdminVO> searchReviews(String searchKey, String searchValue) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchKey", searchKey);
		map.put("searchValue", searchValue);
		
		return adminService.searchReviews(map);
	}
	
	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-09
	 * 메서드	: searchReviewDetail
	 * 인자	: email
	 * 반환	: AdminVO
	 * 설명	: 특정 리뷰 상세 조회
	 * */
	@GetMapping("admin/searchReviewDetail")
	public AdminVO searchReviewDetail(String reviewId) {
		return adminService.searchReviewDetail(reviewId);
	}
	
	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-09
	 * 메서드	: searchOrders
	 * 인자	: searchKey, searchValue
	 * 반환	: List<AdminVO>
	 * 설명	: 검색조건에 맞는 모든 주문 조회
	 * */
	@GetMapping("admin/searchOrders")
	public List<AdminVO> searchOrders(String searchKey, String searchValue) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchKey", searchKey);
		map.put("searchValue", searchValue);
		
		return adminService.searchOrders(map);
	}
	
	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-11
	 * 메서드	: adminOrderConfirmation
	 * 인자	: AdminVO
	 * 반환	: Integer
	 * 설명	: 관리자 주문 확인 상태 수정
	 * */
	@PostMapping("admin/adminOrderConfirmation")
	public int adminOrderConfirmation(AdminVO vo) {
		return adminService.adminOrderConfirmation(vo);
	}
	
	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-09
	 * 메서드	: selectOneOrder
	 * 인자	: email
	 * 반환	: AdminVO
	 * 설명	: 특정 주문 상세 조회
	 * */
	@GetMapping("admin/selectOneOrder")
	public Map<String, List<?>> selectOneOrder(String orderDetailNumber) {
		Map<String, List<?>> result = new HashMap<String, List<?>>();
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchKey", "ORDER_DETAIL_NUMBER");
		map.put("searchValue", orderDetailNumber);
		
		List<AdminVO> orderMember 	= adminService.searchOrders(map); 
		List<AdminVO> orderProducts = adminService.searchOrderProducts(orderDetailNumber);
		
		result.put("orderMember", orderMember);
		result.put("orderProducts", orderProducts);
		
		return result;
	}
	
	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-12
	 * 메서드	: inquiryAdminAnswer
	 * 인자	: aReviewId, aReviewCo
	 * 반환	: Integer
	 * 설명	: 특정 리뷰 삭제 (관리자)
	 * */
	@PostMapping("admin/inquiryAdminAnswer")
	public int inquiryAdminAnswer(String aReviewId, String aReviewCo) {
		AdminVO vo = new AdminVO();
		vo.setInquiries_id(aReviewId);
		vo.setInquiries_answer_content(aReviewCo);
		return adminService.inquiryAdminAnswer(vo);
	}
		
}