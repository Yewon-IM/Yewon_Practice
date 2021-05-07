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
	public sellerDto myShopDetail(String id, String shopid) {
		return yhDao.myShopDetail(id, shopid);
	}

	@Override
	public boolean myShopUpdate(sellerDto sdto) {
		return yhDao.myShopUpdate(sdto);
	}

	@Override
	public boolean myShopDelete(String shopid) {
		return yhDao.myShopDelete(shopid);
	}

	@Override
	public List<sellerDto> listShop() {
		return yhDao.listShop();
	}

	@Override
	public sellerDto listSelShop(String shopid) {
		return yhDao.listSelShop(shopid);
	}

	@Override
	public boolean listUpShop(sellerDto sdto) {
		return yhDao.listUpShop(sdto);
	}

	@Override
	public boolean shopDel(String shopid) {
		return yhDao.shopDel(shopid);
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
	public boolean shopDelete(String shopid) {
		return yhDao.shopDelete(shopid);
	}

}
	
