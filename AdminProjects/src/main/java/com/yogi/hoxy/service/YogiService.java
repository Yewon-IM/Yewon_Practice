package com.yogi.hoxy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yogi.hoxy.daos.IYogiDao;
import com.yogi.hoxy.dtos.BookDto;
import com.yogi.hoxy.dtos.MemberDto;
import com.yogi.hoxy.dtos.ShopDto;

@Service
public class YogiService implements IYogiService {
	
	@Autowired
	private IYogiDao yogiDao;
	
	@Override
	public List<MemberDto> adminList() {
		return yogiDao.adminList();
	}

	@Override
	public String loginInfo(String id) {
		return yogiDao.loginInfo(id);
	}

	@Override
	public boolean listDel(String id) {
		return yogiDao.listDel(id);
	}

	@Override
	public boolean listUp(MemberDto dto) {
		return yogiDao.listUp(dto);
	}

	@Override
	public MemberDto listSel(String id) {
		return yogiDao.listSel(id);
	}

	@Override
	public List<MemberDto> memberList() {
		return yogiDao.memberList();
	}

	@Override
	public boolean memUpdate(MemberDto dto) {
		return yogiDao.memUpdate(dto);
	}

	@Override
	public String login(String id, String pwd) {
		return yogiDao.login(id, pwd);
	}

	@Override
	public List<ShopDto> myShop(String id) {
		return yogiDao.myShop(id);
	}

	@Override
	public ShopDto myShopDetail(String id, String shopId) {
		return yogiDao.myShopDetail(id, shopId);
	}

	@Override
	public boolean myShopUpdate(ShopDto sdto) {
		return yogiDao.myShopUpdate(sdto);
	}

	@Override
	public boolean myShopDelete(String shopId) {
		return yogiDao.myShopDelete(shopId);
	}

	@Override
	public List<ShopDto> listShop() {
		return yogiDao.listShop();
	}

	@Override
	public ShopDto listSelShop(String shopId) {
		return yogiDao.listSelShop(shopId);
	}

	@Override
	public boolean listUpShop(ShopDto sdto) {
		return yogiDao.listUpShop(sdto);
	}

	@Override
	public boolean shopDel(String shopId) {
		return yogiDao.shopDel(shopId);
	}

	@Override
	public List<ShopDto> shopList() {
		return yogiDao.shopList();
	}

	@Override
	public boolean shopAdd(ShopDto sdto) {
		return yogiDao.shopAdd(sdto);
	}

	@Override
	public boolean shopUpdate(ShopDto sdto) {
		return yogiDao.shopUpdate(sdto);
	}

	@Override
	public boolean shopDelete(String shopId) {
		return yogiDao.shopDelete(shopId);
	}

	@Override
	public boolean myPageDel(String id) {
		return yogiDao.myPageDel(id);
	}

	@Override
	public List<MemberDto> delList() {
		return yogiDao.delList();
	}

	@Override
	public boolean myShopCan(String shopId) {
		return yogiDao.myShopCan(shopId);
	}

	@Override
	public List<ShopDto> delShopList() {
		return yogiDao.delShopList();
	}

	@Override
	public boolean myPageCan(String id) {
		return yogiDao.myPageCan(id);
	}

	
	
	
	
	@Override
	public List<BookDto> bookList(String id) {
		return yogiDao.bookList(id);
	}

}
	
