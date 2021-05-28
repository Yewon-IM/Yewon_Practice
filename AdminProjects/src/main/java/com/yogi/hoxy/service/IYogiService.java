package com.yogi.hoxy.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.yogi.hoxy.dtos.BookDto;
import com.yogi.hoxy.dtos.MemberDto;
import com.yogi.hoxy.dtos.MemberShoppingDto;
import com.yogi.hoxy.dtos.ProductDto;
import com.yogi.hoxy.dtos.ShopDto;

public interface IYogiService {
	
	public List<MemberDto> adminList();
	
	public String loginInfo(String id);
	
	public boolean listDel(String id);
	
	public boolean listUp(MemberDto dto);
	
	public MemberDto listSel(String id);
	
	public List<MemberDto> memberList();
	
	public boolean memUpdate(HttpServletRequest request);
	
	public String login(String id, String pwd);
	
	public List<ShopDto> myShop(String id);
	
	public ShopDto myShopDetail(String id, String shopId);
	
	public boolean myShopUpdate(HttpServletRequest request);
	
	public boolean myShopDelete(String shopId);
	
	public List<ShopDto> listShop();
	
	public ShopDto listSelShop (String shopId);
	
	public boolean listUpShop (ShopDto sdto);
	
	public boolean shopDel (String shopId);
	
	public List<ShopDto> shopList();
	
	public boolean shopAdd(ShopDto sdto);
	
	public boolean shopUpdate(ShopDto sdto);
	
	public boolean shopDelete(String shopId);
	
	public boolean myPageDel(String id);
	
	public List<MemberDto> delList();
	
	public boolean myShopCan(String shopId);
	
	public List<ShopDto> delShopList();
	
	public boolean myPageCan(String id);
	
	
	
	
	public List<BookDto> bookList(String id);
	
	public List<MemberShoppingDto> likeList(String id);
	
	public boolean like(MemberShoppingDto dto);
	
	public int maxLike(String id, String product_seq);
	
	public boolean likeCancel(String id, String product_seq);
	
	public boolean addProduct(HttpServletRequest request);
	
	public List<ProductDto> search(String shopId, String category, String local, String keyword);

	public List<ProductDto> productList();
	
	public List<ProductDto> myProductList(String shopId);
	
	public boolean updateStock(ProductDto dto);
	
	public boolean changeStock(ProductDto dto);
	
	public ProductDto productDetail(int product_seq);
	
	public List<Map<String, Integer>> peopleLike();
}
