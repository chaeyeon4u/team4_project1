package com.mycompany.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.vo.Cart;
import com.mycompany.webapp.vo.ProductColor;
import com.mycompany.webapp.vo.join.JoinCart;

@Mapper
public interface CartDao {
	public int updateCartCount(Cart cart);//수량 변경
	public int updateCartColorSize(JoinCart joinCart);//색상, 사이즈변경
	public List<JoinCart> selectCart(JoinCart joinCart);
	public int deleteCart(Cart cart);//삭제
}


/*
    *-- 수량 변경(U: cart(수량))//javascript에서 가격 변경
        -- 방법 1 : CartDao의 updateCartCount
        -- 1. cart(count)
        -- update cart set count=?;
   
    * -- 색상, 사이즈 변경(U : cart(product_stock_id), R: product_color 테이블(color), product_stock(size)
        -- updateCartColorSize
        -- 1. product_color(color)
           2. product_stock(size)
           3. cart(product_stock_id)
        -- update cart 
           set product_stock_id = (select ps.id 
                         from product_color pc, product_stock ps
                         where ps.product_color_id=pc.id and pc.color_code=? and ps."size"=?);
   
    * -- 수량 변경(U: cart(수량))
      -- 방법 1 : CartDao의 updateCartCount
      -- 1. cart(count)
      -- 2. product_color(price)
      -- update (select c.count 'count', pc.price 'price' from cart c, product_stock ps, product_color pc where c.product_stock_id=ps.id and ps.product_color_id=pc.id) tb
                    set tb.count = ? and tb.price = ?
    
   * -- 상품 삭제(D: cart(member_id, product_stock_id))
      -- CartDao의 deleteCart
      -- delete from cart where member_id=? and product_stock_id=?
      
   * -- 장바구니 상품 검색(R)
     -- 1. product_stock(id, size) 
        2. product_color(img1, color_code, color_img, price)
        3. product_common(name)
        4. brand(no)
        5. cart(수량)
        상품의 총 개수( cart count(*) 속성 )
        // 배송비 (3000원)
     -- select ps.id, ps."size", pc.price, pc.img1, pc.color_code, pc.color_img, pcom.name, b.name, c.count
         from product_stock ps, product_color pc, product_common pcom, cart c, brand b
         where ps.product_color_id=pc.id and pc.product_common_id=pcom.id and c.product_stock_id=ps.id and pcom.brand_no=b.no
         and c.member_id=? and c.product_stock_id=?;
 * */
