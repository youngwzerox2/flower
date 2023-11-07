package com.flower.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.flower.service.ShoppingCartService;
import com.flower.vo.MemberVO;
import com.flower.vo.ShoppingCartVO;

@Controller
public class ShoppingCartController {
	
	private ShoppingCartService shoppingCartService;
	
	public ShoppingCartController() {}//constructor
	
	@Autowired
	public ShoppingCartController(ShoppingCartService shoppingCartService) {
		this.shoppingCartService = shoppingCartService;
	}//constructor
	
	
	
	/*
	 * @RequestMapping("/cart/{page}") public String viewPage(@PathVariable String
	 * page) { return "/cart/"+page; }
	 */
	
	
	// 장바구니 담기
	@GetMapping("/cart")
	@ResponseBody
	public Integer addCart(HttpSession sess, ShoppingCartVO scvo) {
		MemberVO mvo = (MemberVO)sess.getAttribute("member");
		if(mvo.getMember_id() == null){
			return 0;
		} else {
			scvo.setMember_id(mvo.getMember_id());
			return shoppingCartService.addCart(scvo);
		}	
	}
	
	
	// 장바구니에 담긴 상품 목록 불러오기
	@RequestMapping("/cart/cart")
	public void getCartList(HttpSession sess, Model m) {
		// System.out.println("getCart controller 연결됨");
		// System.out.println("session: " + sess.getAttribute("member"));
		MemberVO mvo = (MemberVO)sess.getAttribute("member");
		List<ShoppingCartVO> result = shoppingCartService.getCartList(mvo);
		Integer cart_total = shoppingCartService.getCartTotal(mvo);
		m.addAttribute("cartList", result);
		m.addAttribute("cartTotal", cart_total);
	} // getCartList()
	
	
	// 장바구니에 담긴 각 상품 수량 조절
	@RequestMapping("/updateCartQuan")
	@ResponseBody
	public Integer updateCartQuan(HttpSession sess, ShoppingCartVO scvo, Model m) {
		MemberVO mvo = (MemberVO)sess.getAttribute("member");
		Integer result = shoppingCartService.updateCartProdQuan(scvo);
		System.out.println("컨트롤러 접근");
		System.out.println("SQL결과: " + result);
		
		// 변경된 상품 수량이 반영된 db 호출하여 전송
		/*
		 * List<ShoppingCartVO> cartList = shoppingCartService.getCartList(mvo); Integer
		 * cart_total = shoppingCartService.getCartTotal(mvo);
		 * m.addAttribute("cartList", cartList); m.addAttribute("cartTotal",
		 * cart_total);
		 */
		return result;
		// System.out.println("controller 연결은 되었는가?" + mvo.getMember_id() + ", " + scvo.getShopping_cart_id() + ", " + scvo.getShopping_cart_product_quantity());
		// ShoppingCartVO(shopping_cart_id=94, member_id=null, product_id=null, shopping_cart_product_quantity=4, product_image_file_name=null, product_name=null, product_price=null, total_cart=null)
	}
	
}
