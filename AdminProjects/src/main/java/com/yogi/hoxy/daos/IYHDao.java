package com.yogi.hoxy.daos;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.yogi.hoxy.dtos.YHDto;
import com.yogi.hoxy.dtos.sellerDto;

public interface IYHDao {
	
	public List<YHDto> adminList();
	
	public int loginInfo(String id);
	
	public boolean listDel(String id);
	
	public boolean listUp(YHDto dto);
	
	public YHDto listSel(String id);
	
	public List<YHDto> memberList();
	
	public boolean memUpdate(YHDto dto);
	
	public String login(String id, String pwd);
	
	public List<sellerDto> myShop(String id);
	
	public sellerDto myShopDetail(String id, String shopname);
	
	public boolean myShopUpdate(sellerDto sdto);
	
	public boolean myShopDelete(String shopid);
	
	public List<sellerDto> listShop();
	
	public sellerDto listSelShop (String shopid);
	
	public boolean listUpShop (sellerDto sdto);
	
	public boolean shopDel (String shopid);
	
	public List<sellerDto> shopList();
	
	public boolean shopAdd(sellerDto sdto);
	
	public boolean shopUpdate(sellerDto sdto);
	
	public boolean shopDelete(String shopid);
}
