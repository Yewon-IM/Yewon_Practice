package com.yogi.hoxy.daos;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.yogi.hoxy.dtos.*;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class YHDaoImp implements IYHDao{
	
	private String namespace = "com.yogi.hoxy.";

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<YHDto> adminList(){
		return sqlSession.selectList(namespace + "adminList");
	}
	
	public int loginInfo(String id) {

		return sqlSession.selectOne(namespace + "loginInfo", id);
	}
	
	public boolean listDel(String id) {
		int count = sqlSession.delete(namespace + "listDel", id);
		return count > 0? true:false;
	}
	
	public boolean listUp(YHDto dto) {
		int count = sqlSession.update(namespace + "listUp", dto);
		return count > 0? true:false;
	}
	
	public YHDto listSel(String id) {
		YHDto dto = sqlSession.selectOne(namespace + "listSel", id);
		return dto;
	}
	
	public List<YHDto> memberList(){
		return sqlSession.selectList(namespace + "memberList");
	}
	
	public boolean memUpdate(YHDto dto) {
		int count = sqlSession.update(namespace + "memUpdate", dto);
		return count > 0? true:false;
	}
	
	public String login(String id, String pwd) {
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("pwd", pwd);
		return sqlSession.selectOne(namespace + "login", map);
	}
	
	public List<sellerDto> myShop(String id) {
		return sqlSession.selectList(namespace + "myShop", id);
	}
	
	public sellerDto myShopDetail(String id, String shopid) {
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("shopid", shopid);
		return sqlSession.selectOne(namespace + "myShopDetail", map);
	}
	
	public boolean myShopUpdate(sellerDto sdto) {
		int count = sqlSession.update(namespace + "myShopUpdate", sdto);
		return count > 0? true:false;
	}
	
	public boolean myShopDelete(String shopid) {
		int count = sqlSession.delete(namespace + "myShopDelete", shopid);
		return count > 0? true:false;
	}
	
	public List<sellerDto> listShop(){
		return sqlSession.selectList(namespace + "listShop");
	}
	
	public sellerDto listSelShop (String shopid) {
		return sqlSession.selectOne(namespace + "listSelShop", shopid);
	}
	
	public boolean listUpShop (sellerDto sdto) {
		int count = sqlSession.update(namespace + "listUpShop", sdto);
		return count > 0? true:false;
	}
	
	public boolean shopDel (String shopid) {
		int count = sqlSession.delete(namespace + "shopDel", shopid);
		return count > 0? true:false;		
	}
	
	public List<sellerDto> shopList(){
		return sqlSession.selectList(namespace + "shopList");
	}
	
	public boolean shopAdd(sellerDto sdto) {
		int count = sqlSession.insert(namespace + "shopAdd", sdto);
		return count > 0? true:false;
	}
	
	public boolean shopUpdate(sellerDto sdto) {
		int count = sqlSession.update(namespace + "shopUpdate", sdto);
		return count > 0? true:false;
	}
	
	public boolean shopDelete(String shopid) {
		int count = sqlSession.delete(namespace + "shopDelete", shopid);
		return count > 0? true:false;
	}
}
