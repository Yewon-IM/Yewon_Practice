package com.yogi.hoxy.daos;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.yogi.hoxy.dtos.*;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class YogiDaoImp implements IYogiDao{
	
	private String namespace = "com.yogi.hoxy.";

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<MemberDto> adminList(){
		return sqlSession.selectList(namespace + "adminList");
	}
	
	public String loginInfo(String id) {
		return sqlSession.selectOne(namespace + "loginInfo", id);
	}
	
	public boolean listDel(String id) {
		int count = sqlSession.delete(namespace + "listDel", id);
		return count > 0? true:false;
	}
	
	public boolean listUp(MemberDto dto) {
		int count = sqlSession.update(namespace + "listUp", dto);
		return count > 0? true:false;
	}
	
	public MemberDto listSel(String id) {
		MemberDto dto = sqlSession.selectOne(namespace + "listSel", id);
		return dto;
	}
	
	public List<MemberDto> memberList(){
		return sqlSession.selectList(namespace + "memberList");
	}
	
	public boolean memUpdate(MemberDto dto) {
		int count = sqlSession.update(namespace + "memUpdate", dto);
		return count > 0? true:false;
	}
	
	public String login(String id, String pwd) {
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("pwd", pwd);
		return sqlSession.selectOne(namespace + "login", map);
	}
	
	public List<ShopDto> myShop(String id) {
		return sqlSession.selectList(namespace + "myShop", id);
	}
	
	public ShopDto myShopDetail(String id, String shopId) {
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("shopId", shopId);
		return sqlSession.selectOne(namespace + "myShopDetail", map);
	}
	
	public boolean myShopUpdate(ShopDto sdto) {
		int count = sqlSession.update(namespace + "myShopUpdate", sdto);
		return count > 0? true:false;
	}
	
	public boolean myShopDelete(String shopId) {
		int count = sqlSession.update(namespace + "myShopDelete", shopId);
		return count > 0? true:false;
	}
	
	public boolean myShopCan(String shopId) {
		int count = sqlSession.update(namespace + "myShopCan", shopId);
		return count > 0? true:false;
	}
	
	public List<ShopDto> listShop(){
		return sqlSession.selectList(namespace + "listShop");
	}
	
	public ShopDto listSelShop (String shopId) {
		return sqlSession.selectOne(namespace + "listSelShop", shopId);
	}
	
	public boolean listUpShop (ShopDto sdto) {
		int count = sqlSession.update(namespace + "listUpShop", sdto);
		return count > 0? true:false;
	}
	
	public boolean shopDel (String shopId) {
		int count = sqlSession.delete(namespace + "shopDel", shopId);
		return count > 0? true:false;		
	}
	
	public List<ShopDto> shopList(){
		return sqlSession.selectList(namespace + "shopList");
	}
	
	public boolean shopAdd(ShopDto sdto) {
		int count = sqlSession.insert(namespace + "shopAdd", sdto);
		return count > 0? true:false;
	}
	
	public boolean shopUpdate(ShopDto sdto) {
		int count = sqlSession.update(namespace + "shopUpdate", sdto);
		return count > 0? true:false;
	}
	
	public boolean shopDelete(String shopId) {
		int count = sqlSession.delete(namespace + "shopDelete", shopId);
		return count > 0? true:false;
	}
	
	public boolean myPageDel(String id) {
		int count = sqlSession.update(namespace + "myPageDel", id);
		return count > 0? true:false;
	}
	
	public List<MemberDto> delList(){
		return sqlSession.selectList(namespace + "delList");
	}
	
	public List<ShopDto> delShopList(){
		return sqlSession.selectList(namespace + "delShopList");
	}
	
	public boolean myPageCan(String id) {
		int count = sqlSession.update(namespace + "myPageCan", id);
		return count > 0? true:false;
	}
	
	
	
	
	public List<BookDto> bookList(String id){
		return sqlSession.selectList(namespace + "bookList", id);
	}
	
	public List<MemberShoppingDto> likeList(String id){
		return sqlSession.selectList(namespace + "likeList", id);
	}
	
	public boolean likeCancel(String id, String product_seq) {
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("product_seq", product_seq);
		int count = sqlSession.update(namespace + "likeCancel", map);
		return count > 0? true:false;
	}
	
	public boolean addProduct(ProductDto dto) {
		int count = sqlSession.insert(namespace + "addProduct", dto);
		return count > 0? true:false;
	}
	
	public List<ProductDto> search(String category, String local, String keyword){
		Map<String, String> map = new HashMap<>();
		map.put("category", category);
		map.put("local", local);
		map.put("keyword", keyword);
		return sqlSession.selectList(namespace + "search", map);
	}
}
