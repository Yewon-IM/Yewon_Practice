package com.yogi.hoxy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yogi.hoxy.daos.IYHDao;
import com.yogi.hoxy.dtos.YHDto;
import com.yogi.hoxy.dtos.sellerDto;

@Service
public class YHService implements IYHService {
	
	@Autowired
	private IYHDao yhDao;
	
	@Override
	public List<YHDto> adminList() {
		return yhDao.adminList();
	}

	@Override
	public int loginInfo(String id) {
		return yhDao.loginInfo(id);
	}

	@Override
	public boolean listDel(String id) {
		return yhDao.listDel(id);
	}

	@Override
	public boolean listUp(YHDto dto) {
		return yhDao.listUp(dto);
	}

	@Override
	public YHDto listSel(String id) {
		return yhDao.listSel(id);
	}

	@Override
	public List<YHDto> memberList() {
		return yhDao.memberList();
	}

	@Override
	public boolean memUpdate(YHDto dto) {
		return yhDao.memUpdate(dto);
	}

	@Override
	public String login(String id, String pwd) {
		return yhDao.login(id, pwd);
	}

	@Override
	public List<sellerDto> myShop(String id) {
		return yhDao.myShop(id);
	}

	@Override
	public sellerDto myShopDetail(String id, String shopId) {
		return yhDao.myShopDetail(id, shopId);
	}

	@Override
	public boolean myShopUpdate(sellerDto sdto) {
		return yhDao.myShopUpdate(sdto);
	}

	@Override
	public boolean myShopDelete(String shopId) {
		return yhDao.myShopDelete(shopId);
	}

	@Override
	public List<sellerDto> listShop() {
		return yhDao.listShop();
	}

	@Override
	public sellerDto listSelShop(String shopId) {
		return yhDao.listSelShop(shopId);
	}

	@Override
	public boolean listUpShop(sellerDto sdto) {
		return yhDao.listUpShop(sdto);
	}

	@Override
	public boolean shopDel(String shopId) {
		return yhDao.shopDel(shopId);
	}

	@Override
	public List<sellerDto> shopList() {
		return yhDao.shopList();
	}

	@Override
	public boolean shopAdd(sellerDto sdto) {
		return yhDao.shopAdd(sdto);
	}

	@Override
	public boolean shopUpdate(sellerDto sdto) {
		return yhDao.shopUpdate(sdto);
	}

	@Override
	public boolean shopDelete(String shopId) {
		return yhDao.shopDelete(shopId);
	}

	@Override
	public boolean myPageDel(String id) {
		return yhDao.myPageDel(id);
	}

	@Override
	public List<YHDto> delList() {
		return yhDao.delList();
	}

	@Override
	public boolean myShopCan(String shopId) {
		return yhDao.myShopCan(shopId);
	}

	@Override
	public List<sellerDto> delShopList() {
		return yhDao.delShopList();
	}

	@Override
	public boolean myPageCan(String id) {
		return yhDao.myPageCan(id);
	}

}
	
