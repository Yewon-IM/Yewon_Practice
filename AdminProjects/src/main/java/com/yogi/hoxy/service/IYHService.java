package com.yogi.hoxy.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.yogi.hoxy.dtos.YHDto;
import com.yogi.hoxy.dtos.sellerDto;

public interface IYHService {
	
	public List<YHDto> adminList();
	
	public int loginInfo(String id);
	
	public boolean listDel(String id);
	
	public boolean listUp(YHDto dto);
	
	public YHDto listSel(String id);
	
	public List<YHDto> memberList();
	
	public boolean memUpdate(YHDto dto);
	
	public String login(String id, String pwd);
	
	public List<sellerDto> myShop(String id);
	
	public sellerDto myShopDetail(String id, String shopId);
	
	public boolean myShopUpdate(sellerDto sdto);
	
	public boolean myShopDelete(String shopId);
	
	public List<sellerDto> listShop();
	
	public sellerDto listSelShop (String shopId);
	
	public boolean listUpShop (sellerDto sdto);
	
	public boolean shopDel (String shopId);
	
	public List<sellerDto> shopList();
	
	public boolean shopAdd(sellerDto sdto);
	
	public boolean shopUpdate(sellerDto sdto);
	
	public boolean shopDelete(String shopId);
	
	public boolean myPageDel(String id);
	
	public List<YHDto> delList();
	
	public boolean myShopCan(String shopId);
	
	public List<sellerDto> delShopList();
	
	public boolean myPageCan(String id);
}
