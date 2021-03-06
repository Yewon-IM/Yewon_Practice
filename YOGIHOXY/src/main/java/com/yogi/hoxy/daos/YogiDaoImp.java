package com.yogi.hoxy.daos;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.yogi.hoxy.dtos.*;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class YogiDaoImp implements IYogiDao{
	
	private String namespace = "com.yogi.hoxy.";

	public boolean joinMember(MemberDto dto) {
		int count = 0;
		count = sqlSession.insert(namespace + "joinMember", dto);
		return count > 0 ? true:false;
	}
	
	public int idCheck(String id) {
		int idc=sqlSession.selectOne(namespace + "idCheck", id);
		return idc;		
	}

	public void memberJoinMethod(MemberDto dto) {
		sqlSession.insert(namespace + "join", dto);		
	}
	
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
	
	public boolean like(String id, String product_seq) {
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("product_seq", product_seq);
		int count = sqlSession.insert(namespace + "like", map);
		return count > 0? true:false;
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
	
	public List<ProductDto> search(String shopId, String category, String local, String keyword){
		Map<String, String> map = new HashMap<>();
		map.put("shopId", shopId);
		map.put("category", category);
		map.put("local", local);
		map.put("keyword", keyword);
		return sqlSession.selectList(namespace + "search", map);
	}
	
	public List<ProductDto> productList(){
		return sqlSession.selectList(namespace + "productList");
	}
	
	public List<ProductDto> myProductList(String shopId){
		return sqlSession.selectList(namespace + "myProductList", shopId);
	}
	
	public boolean updateStock(ProductDto dto) {
		int count = sqlSession.update(namespace + "updateStock", dto);
		return count > 0? true:false;
	}

	public boolean changeStock(ProductDto dto) {
		int count = sqlSession.update(namespace + "changeStock", dto);
		return count > 0? true:false;
	}
	
	public ProductDto productDetail(int product_seq) {
		return sqlSession.selectOne(namespace + "productDetail", product_seq);
	}
	
	public List<Map<String, Integer>> peopleLike() {
		return sqlSession.selectList(namespace + "peopleLike");  
	}
	
	public List<MemberShoppingDto> searchLike(String id){
		return sqlSession.selectList(namespace + "searchLike", id);
	}
	
	public List<ProductDto> searchNotLike(){
		return sqlSession.selectList(namespace + "searchNotLike");
	}	
	
	public List<ProductDto> price(){
		return sqlSession.selectList(namespace + "price");
	}
	
	public List<Map<String, String>> countCategory(){
		return sqlSession.selectList(namespace + "countCategory");
	}
	
	public List<Map<String, String>> countCategoryInShop(String shopId){
		return sqlSession.selectList(namespace + "countCategoryInShop", shopId);
	}
	
	public List<ProductDto> searchCategory(String category){
		return sqlSession.selectList(namespace + "searchCategory", category); 
	}

	public List<MemberShoppingDto> notyInfo() {

		return sqlSession.selectList(namespace + "notyInfo");
	}

}
