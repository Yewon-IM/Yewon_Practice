package com.yogi.hoxy.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

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
import com.yogi.hoxy.dtos.ProductDto;
import com.yogi.hoxy.dtos.ShopDto;

@Service
public class YogiService implements IYogiService {
	
	@Autowired
	private IYogiDao yogiDao;
	
	@Override
	public boolean joinMember(MemberDto dto) {
		return yogiDao.joinMember(dto);
	}
	
	@Override
	public int idCheck(String id) throws Exception {
		return yogiDao.idCheck(id);
	}

	@Override
	public void memberJoinProcess(MemberDto dto) {
		yogiDao.memberJoinMethod(dto);		
	}
	
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
	public boolean memUpdate(HttpServletRequest request) {
		MultipartHttpServletRequest multi = (MultipartHttpServletRequest)request;	
		
		MultipartFile multiFile = multi.getFile("profileImg");	
		String profileImg = multiFile.getOriginalFilename();
		System.out.println("프로필이미지" +profileImg);
		
		if(profileImg == null || profileImg == "") {
			
			boolean isS = false;
			
			String id = multi.getParameter("id");
			String pwd = multi.getParameter("pwd");
			String name = multi.getParameter("name");
			String email = multi.getParameter("email");
			String tel = multi.getParameter("tel");
			String local = multi.getParameter("local");
			String oAdd = multi.getParameter("oAdd");
			String add = multi.getParameter("add");
			String detailAdd = multi.getParameter("detailAdd");
			String who = multi.getParameter("who");
			String power = multi.getParameter("power");
			String del = multi.getParameter("del");
			
			try {
				//파일정보를 DB에 저장하기
				isS = yogiDao.memUpdate(new MemberDto(id, pwd, name, email, tel, local, oAdd, add, detailAdd, null, who, power, del, null));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch(Exception e) {
				e.printStackTrace();
			} 
			return isS;	
			
		} else {
		
			String path = "C:/Users/HKEDU/git/Yewon_Practice/AdminProjects/src/main/webapp/upload/member";
			
			//String path = request.getSession().getServletContext().getRealPath("upload");
			
			File f = new File(path+ "/" + profileImg);
			System.out.println(f);
			boolean isS = false;
			
			String id = multi.getParameter("id");
			String pwd = multi.getParameter("pwd");
			String name = multi.getParameter("name");
			String email = multi.getParameter("email");
			String tel = multi.getParameter("tel");
			String local = multi.getParameter("local");
			String oAdd = multi.getParameter("oAdd");
			String add = multi.getParameter("add");
			String detailAdd = multi.getParameter("detailAdd");
			String who = multi.getParameter("who");
			String power = multi.getParameter("power");
			String del = multi.getParameter("del");	
		
		try {
			multiFile.transferTo(f); //파일객체에 저장된 경로대로 업로드가 실행됨.
			//파일정보를 DB에 저장하기
			isS = yogiDao.memUpdate(new MemberDto(id, pwd, name, email, tel, local, oAdd, add, detailAdd, null, who, power, del, profileImg));
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
	}
	
	@Override
	public boolean myShopUpdate(HttpServletRequest request) {
		MultipartHttpServletRequest multi = (MultipartHttpServletRequest)request;	
		
		MultipartFile multiFile = multi.getFile("shopImg");
		String shopImg = multiFile.getOriginalFilename();
		System.out.println(shopImg);
		
		if(shopImg == null || shopImg == "") {
			
			boolean isS = false;
			
			String id = multi.getParameter("id");
			String shopId = multi.getParameter("shopId");
			String shopName = multi.getParameter("shopName");
			String shopOdd = multi.getParameter("shopOdd");
			String shopAdd = multi.getParameter("shopAdd");
			String shopDetailAdd = multi.getParameter("shopDetailAdd");
			String shopTel = multi.getParameter("shopTel");
			String local = multi.getParameter("local");
			String businessNum = multi.getParameter("businessNum");
			String power = multi.getParameter("power");
			String del = multi.getParameter("del");
			
			try {
				//파일정보를 DB에 저장하기
				isS = yogiDao.myShopUpdate(new ShopDto(id, shopId, shopName, shopOdd, shopAdd, shopDetailAdd, shopTel, local, businessNum, null, power, del, null));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch(Exception e) {
				e.printStackTrace();
			} 
				
			return isS;
		} else {
			
			String path = "C:/Users/HKEDU/git/Yewon_Practice/AdminProjects/src/main/webapp/upload/shop";
			
			//String path = request.getSession().getServletContext().getRealPath("upload");
			
			File f = new File(path+ "/" + shopImg);
			
			boolean isS = false;
			
			
			String id = multi.getParameter("id");
			String shopId = multi.getParameter("shopId");
			String shopName = multi.getParameter("shopName");
			String shopOdd = multi.getParameter("shopOdd");
			String shopAdd = multi.getParameter("shopAdd");
			String shopDetailAdd = multi.getParameter("shopDetailAdd");
			String shopTel = multi.getParameter("shopTel");
			String local = multi.getParameter("local");
			String businessNum = multi.getParameter("businessNum");
			String power = multi.getParameter("power");
			String del = multi.getParameter("del");
			
			try {
				multiFile.transferTo(f); //파일객체에 저장된 경로대로 업로드가 실행됨.
				//파일정보를 DB에 저장하기
				isS = yogiDao.myShopUpdate(new ShopDto(id, shopId, shopName, shopOdd, shopAdd, shopDetailAdd, shopTel, local, businessNum, null, power, del, shopImg));
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
	public boolean like(String id, String product_seq) {
		return yogiDao.like(id, product_seq);
	}
	
	@Override
	public boolean likeCancel(String id, String product_seq) {
		return yogiDao.likeCancel(id, product_seq);
	}

	@Override
	public boolean addProduct(HttpServletRequest request) {
	
		MultipartHttpServletRequest multi = (MultipartHttpServletRequest)request;	
		
		MultipartFile multiFile = multi.getFile("img_Url");	
		String img_Url = multiFile.getOriginalFilename();
		System.out.println("상품이미지" + img_Url);
		
		if(img_Url == null || img_Url == "") {
			
			boolean isS = false;
			
			String shopId = multi.getParameter("shopId");
			String id = multi.getParameter("id");
			String productName = multi.getParameter("productName");
			String content = multi.getParameter("content");
			int price = Integer.parseInt(multi.getParameter("price"));
			String stock = multi.getParameter("stock");
			String category = multi.getParameter("category");

			
			try {
				//파일정보를 DB에 저장하기
				isS = yogiDao.addProduct(new ProductDto(0, shopId, id, productName, content, price, stock, img_Url, null, category, 0));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch(Exception e) {
				e.printStackTrace();
			} 
				
			return isS;
		} else {
			
			String path = "C:/Users/HKEDU/git/Yewon_Practice/AdminProjects/src/main/webapp/upload/product";
			
			File f = new File(path+ "/" + img_Url);
			
			boolean isS = false;
			
			
			String shopId = multi.getParameter("shopId");
			String id = multi.getParameter("id");
			String productName = multi.getParameter("productName");
			String content = multi.getParameter("content");
			int price = Integer.parseInt(multi.getParameter("price"));
			String stock = multi.getParameter("stock");
			String category = multi.getParameter("category");
			
			try {
				multiFile.transferTo(f); //파일객체에 저장된 경로대로 업로드가 실행됨.
				//파일정보를 DB에 저장하기
				isS = yogiDao.addProduct(new ProductDto(0, shopId, id, productName, content, price, stock, img_Url, null, category, 0));
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
	}

	@Override
	public List<ProductDto> search(String shopId, String category, String local, String keyword) {
		return yogiDao.search(shopId, category, local, keyword);
	}

	@Override
	public List<ProductDto> productList() {
		return yogiDao.productList();
	}

	@Override
	public List<ProductDto> myProductList(String shopId) {
		return yogiDao.myProductList(shopId);
	}

	@Override
	public boolean updateStock(ProductDto dto) {
		return yogiDao.updateStock(dto);
	}

	@Override
	public ProductDto productDetail(int product_seq) {
		return yogiDao.productDetail(product_seq);
	}

	@Override
	public List<Map<String, Integer>> peopleLike() {
		return yogiDao.peopleLike();
	}

	@Override
	public boolean changeStock(ProductDto dto) {
		return yogiDao.changeStock(dto);
	}

	@Override
	public List<MemberShoppingDto> searchLike(String id) {
		return yogiDao.searchLike(id);
	}

	@Override
	public List<ProductDto> searchNotLike() {
		return yogiDao.searchNotLike();
	}

	@Override
	public List<ProductDto> price() {
		return yogiDao.price();
	}

	@Override
	public List<Map<String, String>> countCategory() {
		return yogiDao.countCategory();
	}

	@Override
	public List<Map<String, String>> countCategoryInShop(String shopId) {
		return yogiDao.countCategoryInShop(shopId);
	}

	@Override
	public List<ProductDto> searchCategory(String category) {
		return yogiDao.searchCategory(category);
	}

	@Override
	public List<MemberShoppingDto> notyInfo() {
		return yogiDao.notyInfo();
	}
}
	
