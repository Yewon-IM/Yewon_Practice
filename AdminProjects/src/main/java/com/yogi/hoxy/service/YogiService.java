package com.yogi.hoxy.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.yogi.hoxy.daos.IYogiDao;
import com.yogi.hoxy.daos.YogiDaoImp;
import com.yogi.hoxy.dtos.BookDto;
import com.yogi.hoxy.dtos.MemberDto;
import com.yogi.hoxy.dtos.MemberShoppingDto;
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

//	@Override
//	public boolean memUpdate(MemberDto dto) {
//		return yogiDao.memUpdate(dto);
//	}
	
	@Override
	public boolean memUpdate(HttpServletRequest request) {
		MultipartHttpServletRequest multi = (MultipartHttpServletRequest)request;	
		
		MultipartFile multiFile = multi.getFile("profileImg");
		
		String path = request.getSession().getServletContext().getRealPath("upload");
		
		File f = new File(path+ "/" + multiFile);
		boolean isS = false;
		
		try {
			multiFile.transferTo(f); //파일객체에 저장된 경로대로 업로드가 실행됨.
			//파일정보를 DB에 저장하기
			//isS = YogiDaoImp.memUpdate(new MemberDto(id, pwd, name, email, tel, local, oAdd, add, detailAdd, regDate, who, power, del, profileImg));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return isS;
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

	@Override
	public List<MemberShoppingDto> likeList(String id) {
		return yogiDao.likeList(id);
	}

	@Override
	public boolean likeCancel(String id, String product_seq) {
		return yogiDao.likeCancel(id, product_seq);
	}

}
	
