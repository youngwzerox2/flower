package com.flower.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.flower.vo.LoveVO;
import com.flower.vo.ProductVO;

@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 상품 목록 출력
	public List<ProductVO> getCateProdList(ProductVO vo){
		if(vo != null) {
			List<ProductVO> result = mybatis.selectList("productDAO.getCateProdList", vo);
		} else {
			List<ProductVO> result = mybatis.selectList("productDAO.getCateProdList");
		}
		
//		System.out.println("봄이 넘어왔니: " + vo.getBlooming_season());
//		System.out.println("SQL 결과(카테고리): " + result);
		/***********
		 * [ProductVO(product_id=1, cate_id=null, 
		 * product_name=유카, product_content=null, product_keyword=null, 
		 * blooming_season=null, blooming_time=null, 
		 * pet_friendly=false, easy_care=false, product_light=null, 
		 * inventory_quantity=null, 
		 * product_price=19000, 
		 * product_register_date=null, 
		 * product_image_file_name=1_list_1.jpg,1_list_2.jpg, 
		 * product_image_type=null, 
		 * product_image_froute=null, 
		 * prod_imgs_lists=[1_list_1.jpg, 1_list_2.jpg], 
		 * prod_imgs_froutes=null, 
		 * prod_img_main=null, prod_imgs_sub=null, prod_imgs_guide=null), 
		 * 
		 * */
		// 
		return mybatis.selectList("productDAO.getCateProdList", vo);
	}
	
	// 상품 목록 출력 시, 페이징을 위한 상품개수 조회
	@Override
	public Integer getProdCateQuan(ProductVO vo) {
		System.out.println("Dao에서 받은 vo: " + vo);
		Integer test_result = mybatis.selectOne("productDAO.getProdCateQuan", vo);
		System.out.println("카테고리 상품개수 SQL실행결과: " + test_result);
		
		return test_result;
	}
	
	
	
	// 상품 상세 출력
	@Override
	public ProductVO getProd(ProductVO vo) {
		ProductVO result = mybatis.selectOne("productDAO.getProd", vo);
		ProductVO main = mybatis.selectOne("productDAO.getImgMain", vo);
		ProductVO sub = mybatis.selectOne("productDAO.getImgSub", vo);
		ProductVO guide = mybatis.selectOne("productDAO.getImgGuide", vo);
		result.setProd_img_main(main.getProduct_image_file_name());
		result.setProd_imgs_sub(sub.getProduct_image_file_name());
		result.setProd_imgs_guide(guide.getProduct_image_file_name());
		
		
//		result.setProd_imgs_sub();
//		result.setProd_imgs_guide();
//		System.out.println("sql결과(DAO): " + result);
		/***************
		 * sql결과: 
		 * ProductVO(product_id=null, cate_id=null, 
		 * product_name=유카, product_content=null, product_keyword=null, 
		 * blooming_season=spring, blooming_time=null, 
		 * pet_friendly=false, easy_care=false, product_light=DL, 
		 * inventory_quantity=null, product_price=19000, product_register_date=null, 
		 * product_image_file_name=1_guide1.jpg,1_guide2.jpg,1_main_wh570.jpg,1_sub1_wh633.jpg,1_sub2_wh860.jpg, 
		 * product_image_type=jpg,jpg,jpg,jpg,jpg, 
		 * product_image_froute=guide,guide,main,sub,sub, 
		 * prod_imgs_lists=[1_guide1.jpg, 1_guide2.jpg, 1_main_wh570.jpg, 1_sub1_wh633.jpg, 1_sub2_wh860.jpg], 
		 * prod_imgs_froutes=[guide, guide, main, sub, sub], 
		 * prod_img_main=1_main_wh570.jpg, 
		 * prod_imgs_sub=[1_sub1_wh633.jpg, 1_sub2_wh860.jpg], 
		 * prod_imgs_guide=[1_guide1.jpg, 1_guide2.jpg])
		 *
		 * **/
		return result;
	}

	// 상품필터링
	@Override
	public List<ProductVO> filterProducts(Map<String, String> filterParams) {
		//return mybatis.selectList("productDAO.filterProducts",filterParams);
		return null;
	}
	
	
	
	
	

	// 상품 찜 update
	@Override
	public Integer updateLove(LoveVO vo) {
		// 해당 멤버의 찜한 목록 조회
		Integer chk = mybatis.selectOne("chkLoveList", vo);
		System.out.println("찜한 목록 조회: " + chk);
		Integer ins = 0;
		Integer del = 0;
		if(chk != null) {
			del = mybatis.delete("productDAO.prodUnLove", vo);
			System.out.println("찜 해제 sql 결과"+ del); 
			return del;
		} else {
			// 찜하지 않은 상품이었다면 상품id,멤버 id 입력
			ins = mybatis.insert("productDAO.prodLove", vo);
			System.out.println("찜 입력sql 결과: " + ins); 
			return ins;
		}
	}

	// 상품 찜 상태 조회
	@Override
	public Integer isLove(LoveVO vo) {
		Integer result = mybatis.selectOne("chkLoveList", vo);
		
		// select product_id, member_id 했을 경우 
		// 찜한 상품 조회SQL 결과: 2 (찜한 상품이 1개여도! 아마도 컬럼수가 integer result가 되는 듯?)
		System.out.println("찜한 상품 조회SQL 결과: " + result);
		return result;
	}


	
} //class ProductDAOImpl
