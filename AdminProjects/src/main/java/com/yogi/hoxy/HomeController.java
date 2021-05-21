package com.yogi.hoxy;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;

import com.yogi.hoxy.dtos.BookDto;
import com.yogi.hoxy.dtos.MemberDto;
import com.yogi.hoxy.dtos.MemberShoppingDto;
import com.yogi.hoxy.dtos.ShopDto;
import com.yogi.hoxy.service.IYogiService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private IYogiService yoService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest request, Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		HttpSession session = request.getSession();
		
		String who = (String) session.getAttribute("who");
		String del = (String) session.getAttribute("del");		
		
		if (who != null) {

			String name = (String) session.getAttribute("name");
			session.setAttribute("name", name);
			MemberDto dto = (MemberDto) session.getAttribute("dto");
			model.addAttribute("dto", dto);
			
			if (who.equals("0")) {
				return "admin/adminMain";
			} else if (who.equals("1") && del.equals("0")) {
				return "customer/customerMain";
			} else if (who.equals("1") && del.equals("1")) {
				return "customer/delCustomerMain";
			} else if (who.equals("2") && del.equals("0")) {
				return "seller/sellerMain";
			} else if (who.equals("1") && del.equals("1")) {
				return "seller/delSellerMain";
			} else {
				return "error";
			}
		} else if(who == null){
			return "home";
		} else {
			return "error";
		}
	}

	@RequestMapping(value = "/loginDo.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String loginDo(HttpServletRequest request, HttpServletResponse response, Locale locale, Model model,
			@RequestParam Map<String, String> login) throws ServletException, IOException {
		logger.info("로그인하기", locale);
		
		String id = request.getParameter("user_id");
		String pwd = request.getParameter("user_pwd");

		String result = yoService.login(id, pwd);

		if (result.equals("true")) {
			HttpSession session = request.getSession();	
			session.setAttribute("isLogon", true);
			session.setAttribute("user_id", id);

			MemberDto dto = yoService.listSel(id);
			
			session.setAttribute("who", dto.getWho());
			session.setAttribute("name", dto.getName());
			session.setAttribute("id", dto.getId());
			session.setAttribute("del", dto.getDel());
			session.setAttribute("profileImg", dto.getProfileImg());
			
			if (dto.getWho().equals("0")) {
				return "admin/adminMain";
			} else if (dto.getDel().equals("0") && dto.getWho().equals("1")) {
				return "customer/customerMain";
			} else if(dto.getDel().equals("1") && dto.getWho().equals("1")) {
				return "customer/delCustomerMain";
			} else if (dto.getDel().equals("0") && dto.getWho().equals("2")) {
				return "seller/sellerMain";
			} else if(dto.getDel().equals("1") && dto.getWho().equals("2")) {
				return "seller/delSellerMain";
			}
			return "main";

		} else {
			model.addAttribute("msg", "아이디 또는 비밀번호가 틀립니다.");
			model.addAttribute("url", "login.do");
			return "alert";
		}
	}

	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		logger.info("로그인", locale);
		
		return "login";
	}
	
	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, Locale locale, Model model) {
		logger.info("로그아웃", locale);

		HttpSession session = request.getSession(false);
		session.invalidate();

		return "redirect:.";
	}
	
	@RequestMapping(value = "/newMemberList.do", method = RequestMethod.GET)
	public String newMemberList(HttpServletRequest request, Locale locale, Model model) {
		logger.info("신규가입 회원 승인", locale);

		HttpSession session = request.getSession();
		String who = (String) session.getAttribute("who");
		
		if(who.equals("0")) {
			List<MemberDto> list = yoService.adminList();
			model.addAttribute("list", list);
			return "admin/newMemberList";			
		} else {
			model.addAttribute("msg", "관리자만 가능합니다.");
			return "error";
		}
	}
	
	@RequestMapping(value = "/newShopList.do", method = RequestMethod.GET)
	public String newShopList(HttpServletRequest request, Locale locale, Model model) {
		logger.info("신규가입 상점 승인", locale);

		HttpSession session = request.getSession();
		String who = (String) session.getAttribute("who");
		
		if(who.equals("0")) {
			List<ShopDto> sList = yoService.listShop();
			model.addAttribute("sList", sList);
			return "admin/newShopList";
		} else {
			model.addAttribute("msg", "관리자만 가능합니다.");
			return "error";
		}
	}
	
	@RequestMapping(value = "/delMemberList.do", method = RequestMethod.GET)
	public String delMemberList(HttpServletRequest request, Locale locale, Model model) {
		logger.info("탈퇴회원", locale);

		HttpSession session = request.getSession();
		String who = (String) session.getAttribute("who");
		
		if(who.equals("0")) {
			List<MemberDto> dList = yoService.delList();
			model.addAttribute("dList", dList);
			return "admin/delMemberList";
		} else {
			model.addAttribute("msg", "관리자만 가능합니다.");
			return "error";
		}
	}
	
	@RequestMapping(value = "/delShopList.do", method = RequestMethod.GET)
	public String delShopList(HttpServletRequest request, Locale locale, Model model) {
		logger.info("삭제상점", locale);

		HttpSession session = request.getSession();
		String who = (String) session.getAttribute("who");
		
		if(who.equals("0")) {
			List<ShopDto> sdList = yoService.delShopList();
			model.addAttribute("sdList", sdList);
			return "admin/delShopList";
		} else {
			model.addAttribute("msg", "관리자만 가능합니다.");
			return "error";
		}
	}

	@RequestMapping(value = "/memberList.do", method = RequestMethod.GET)
	public String memberList(HttpServletRequest request, Locale locale, Model model) {
		logger.info("회원관리 페이지입니다.", locale);

		HttpSession session = request.getSession();
		String who = (String) session.getAttribute("who");
		
		if (who.equals("0")) {
			List<MemberDto> list = yoService.memberList();
			model.addAttribute("list", list);
			return "admin/memberList";
		} else {
			model.addAttribute("msg", "관리자만 가능합니다.");
			return "error";
		}

	}

	@RequestMapping(value = "/shopList.do", method = RequestMethod.GET)
	public String shopList(HttpServletRequest request, Locale locale, Model model) {
		logger.info("상점관리 페이지입니다.", locale);

		HttpSession session = request.getSession();	
		String who = (String) session.getAttribute("who");

		if (who.equals("0")) {
			List<ShopDto> sList = yoService.shopList();
			model.addAttribute("sList", sList);
			return "admin/shopList";
		} else {
			model.addAttribute("msg", "관리자만 가능합니다.");
			return "error";
		}

	}

	@RequestMapping(value = "/admit.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String admit(HttpServletRequest request, Locale locale, Model model, String id) {
		logger.info("승인입니다.", locale);
		
		HttpSession session = request.getSession();		
		String who = (String) session.getAttribute("who");
		
		if(who.equals("0")) {
			MemberDto dto = yoService.listSel(id);
			boolean isS = yoService.listUp(dto);
			if (isS) {
				return "redirect:newMemberList.do";
			} else {
				model.addAttribute("msg", "권한수정 오류입니다.");
				return "error";
			}	
		} else {
			model.addAttribute("msg", "관리자만 가능합니다.");
			return "error";
		}
	}

	@RequestMapping(value = "/admitShop.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String admitShop(HttpServletRequest request, Locale locale, Model model, String shopId) {
		logger.info("상점 승인입니다.", locale);
		
		HttpSession session = request.getSession();	
		String who = (String) session.getAttribute("who");
		
		if(who.equals("0")) {
			ShopDto sdto = yoService.listSelShop(shopId);
			boolean isS = yoService.listUpShop(sdto);		
			if (isS) {
				return "redirect:newShopList.do";
			} else {
				model.addAttribute("msg", "권한수정 오류입니다.");
				return "error";
			}
		} else {
			model.addAttribute("msg", "관리자만 가능합니다.");
			return "error";
		}
	}

	@RequestMapping(value = "/delete.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String delete(HttpServletRequest request, Locale locale, Model model, String id) {
		logger.info("거절입니다.", locale);
		
		HttpSession session = request.getSession();	
		String who = (String) session.getAttribute("who");
		
		if(who.equals("0")) {
			boolean isS = yoService.listDel(id);
			if (isS) {
				return "redirect:newMemberList.do";
			} else {
				model.addAttribute("msg", "권한수정 오류입니다.");
				return "error";
			}		
		} else {
			model.addAttribute("msg", "관리자만 가능합니다.");
			return "error";
		}
	}

	@RequestMapping(value = "/deleteShop.do", method = RequestMethod.GET)
	public String deleteShop(HttpServletRequest request, Locale locale, Model model, String shopId) {
		logger.info("거절입니다.", locale);
		
		HttpSession session = request.getSession();		
		String who = (String) session.getAttribute("who");
		
		if(who.equals("0")) {
			boolean isS = yoService.shopDel(shopId);
			if (isS) {
				return "redirect:shopList.do";
			} else {
				model.addAttribute("msg", "권한신청 삭제 오류입니다.");
				return "error";
			}
		} else {
			model.addAttribute("msg", "관리자만 가능합니다.");
			return "error";
		}
	}

	@RequestMapping(value = "/memDetail.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String memDetail(HttpServletRequest request, Locale locale, Model model, String id) {
		logger.info("회원정보 보기", locale);
		
		HttpSession session = request.getSession();		
		String who = (String) session.getAttribute("who");
		
		if(who.equals("0")) {
			MemberDto dto = yoService.listSel(id);
			model.addAttribute("dto", dto);
			return "memDetail";
		} else {
			model.addAttribute("msg", "관리자만 가능합니다.");
			return "error";	
		}
	}
	
	@RequestMapping(value = "/memUpdateForm.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String memUpdateForm(HttpServletRequest request, Locale locale, Model model, @RequestParam("id") String id) {
		logger.info("회원정보 수정폼", locale);
		
		HttpSession session = request.getSession();	
		String who = (String) session.getAttribute("who");
		
		if(who.equals("0")) {
			MemberDto dto = yoService.listSel(id);
			model.addAttribute("dto", dto);
			System.out.println(dto);
			return"admin/memUpdateForm";
		} else {
			model.addAttribute("msg", "관리자만 가능합니다.");
			return "error";	
		}
	}
	
	@RequestMapping(value = "/Update.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String Update(HttpServletRequest request, Locale locale, Model model, MemberDto dto) {
		logger.info("회원정보 수정하기", locale);
		
		HttpSession session = request.getSession();		
		String who = (String) session.getAttribute("who");
		
		if(who.equals("0")) {
			boolean isS = yoService.memUpdate(request);
			if (isS) {
				return "redirect:memberList.do";
			} else {
				model.addAttribute("msg", "회원수정 오류입니다");
				return "error";
			} 
		} else {
			model.addAttribute("msg", "관리자만 가능합니다.");
			return "error";				
		}
	}
	
	@RequestMapping(value = "/shopUpdateForm.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String shopUpdateForm(HttpServletRequest request, Locale locale, Model model, 
			@RequestParam("shopId") String shopId, @RequestParam("id") String id) {
		logger.info("상점 수정 폼", locale);
		
		HttpSession session = request.getSession();
		String who = (String) session.getAttribute("who");
		
		if(who.equals("0")) {
			ShopDto sdto = yoService.myShopDetail(id, shopId);
			model.addAttribute("sdto", sdto);
			return "admin/seller/shopUpdateForm";			
		} else {
			model.addAttribute("msg", "관리자만 가능합니다.");
			return "error";						
		}
	}

	@RequestMapping(value = "/shopUpdate.do", method = RequestMethod.POST)
	public String shopUpdate(HttpServletRequest request, Locale locale, Model model, ShopDto sdto) {
		logger.info("상점 수정", locale);
		
		HttpSession session = request.getSession();
		String who = (String) session.getAttribute("who");
		
		if(who.equals("0")) {
			boolean isS = yoService.shopUpdate(sdto);
			if (isS) {
				return "redirect:shopList.do";
			} else {
				model.addAttribute("msg", "오류입니다.");
				return "error";
			}
		} else {
			model.addAttribute("msg", "관리자만 가능합니다.");
			return "error";						
		}
	}
		
	@RequestMapping(value = "/shopDelete.do", method = RequestMethod.POST)
	public String shopDelete(HttpServletRequest request, Locale locale, Model model, 
			@RequestParam("shopId") String shopId) {
		logger.info("상점 정보 삭제", locale);

		HttpSession session = request.getSession();
		String who = (String) session.getAttribute("who");		
		boolean isS = yoService.shopDelete(shopId);

		if (isS) {
			if(who.equals("0")) {
				return "redirect:shopList.do";
			} else if (who.equals("2")) {
				return "redirect:shopList.do";				
			} else {
				model.addAttribute("msg", "권한이 없습니다");
				return "error";	
			}
		} else {
			model.addAttribute("msg", "오류입니다.");
			return "error";
		}
	}
	
	@RequestMapping(value = "/newMemberDetail.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String newMemberDetail(HttpServletRequest request, Locale locale, Model model, String id) {
		logger.info("회원정보 보기", locale);
		
		HttpSession session = request.getSession();
		String who = (String) session.getAttribute("who");		
		
		if(who.equals("0")) {
			MemberDto dto = yoService.listSel(id);
			model.addAttribute("dto", dto);			
			return "admin/newMemberDetail";
		} else {
			model.addAttribute("msg", "오류입니다.");
			return "error";						
		}

	}

	@RequestMapping(value = "/newShopDetail.do", method = RequestMethod.GET)
	public String newShopDetail(HttpServletRequest request, Locale locale, Model model, @RequestParam Map<String, String> info, 
			@RequestParam("shopId") String shopId, @RequestParam("id") String id) {
		logger.info("상점 정보보기", locale);
		
		HttpSession session = request.getSession();	
		String who = (String) session.getAttribute("who");		
		
		if(who.equals("0")) {
			ShopDto sdto = yoService.myShopDetail(id, shopId);
			model.addAttribute("sdto", sdto);
			return "admin/newShopDetail";			
		} else {
			model.addAttribute("msg", "오류입니다.");
			return "error";	
		}
	}
		
	@RequestMapping(value = "/shopDetail.do", method = RequestMethod.GET)
	public String shopDetail(HttpServletRequest request, Locale locale, Model model, @RequestParam Map<String, String> info, 
			@RequestParam("shopId") String shopId, @RequestParam("id") String id) {
		logger.info("상점 정보보기", locale);
		
		HttpSession session = request.getSession();
		String who = (String) session.getAttribute("who");		
		
		if(who.equals("0")) {
			ShopDto sdto = yoService.myShopDetail(id, shopId);
			model.addAttribute("sdto", sdto);
			return "admin/seller/shopDetail";			
		} else {
			model.addAttribute("msg", "오류입니다.");
			return "error";	
		}
	}
	
	
	// 판매자

	@RequestMapping(value = "/myShop.do", method = RequestMethod.GET)
	public String myShop(HttpServletRequest request, Locale locale, Model model) {
		logger.info("내 상점 보기", locale);

		HttpSession session = request.getSession();
		String who = (String) session.getAttribute("who");
		String user_id = (String) session.getAttribute("user_id");
		
		List<ShopDto> list = yoService.myShop(user_id);
		model.addAttribute("list", list);
		
		if (who.equals("2")) {
			return "seller/myShop";
		} else {			
			return "error";
		}
	}

	@RequestMapping(value = "/myShopDetail.do", method = RequestMethod.GET)
	public String myShopDetail(Locale locale, Model model, @RequestParam Map<String, String> info, 
			@RequestParam("shopId") String shopId, @RequestParam("id") String id) {
		logger.info("내 상점 정보보기", locale);
		
		ShopDto sdto = yoService.myShopDetail(id, shopId);
		model.addAttribute("sdto", sdto);
		
		return "seller/myShopDetail";
	}


	@RequestMapping(value = "/myShopUpdateForm.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String myShopUpdateForm(HttpServletRequest request, @RequestParam("id") String id,
			@RequestParam("shopId") String shopId, Locale locale, Model model) {
		logger.info("상점 정보 수정 폼", locale);
		
		ShopDto sdto = yoService.myShopDetail(id, shopId);
		model.addAttribute("sdto", sdto);
		
		return "seller/myShopUpdateForm";
	}
	
	@RequestMapping(value = "/myShopUpdate.do", method = RequestMethod.POST)
	public String myShopUpdate(HttpServletRequest request, Locale locale, Model model) {
		logger.info("상점 정보 수정", locale);
		
		HttpSession session = request.getSession();		
		String who = (String) session.getAttribute("who");
		
		boolean isS = yoService.myShopUpdate(request);
		System.out.println(request);
		if (isS) {
			if(who.equals("2")) {				
				return "redirect:myShop.do";
			} else if(who.equals("0")) {
				return "redirect:shopList.do";
			}
		}
		model.addAttribute("msg", "상점 정보수정 오류입니다.");
		return "error";
	}

	@RequestMapping(value = "/myShopDelete.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String myShopDelete(Locale locale, Model model, @RequestParam("shopId") String shopId) {
		logger.info("상점 정보 삭제", locale);

		boolean isS = yoService.myShopDelete(shopId);

		if (isS) {
			return "redirect:myShop.do";
		} else {
			return "error";
		}
	}
	
	@RequestMapping(value = "/myShopCan.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String myShopCan(HttpServletRequest request, Locale locale, Model model, @RequestParam("shopId") String shopId) {
		logger.info("상점 정보 삭제취소", locale);
		
		HttpSession session = request.getSession();
		String who = (String) session.getAttribute("who");
		
		boolean isS = yoService.myShopCan(shopId);

		if (isS) {
			if(who.equals("0")) {
				return "redirect:delShopList.do";				
			} else if(who.equals("2")) {
				return "redirect:myShop.do";
			} else {
				return "error";				
			}
		}
		return "error";
	}

	@RequestMapping(value = "/myShopAddForm.do", method = RequestMethod.GET)
	public String myShopAddForm(HttpServletRequest request, Locale locale, Model model) {
		logger.info("상점 추가 폼", locale);

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("user_id");
		model.addAttribute("id", id);

		return "seller/myShopAddForm";
	}

	@RequestMapping(value = "/myShopAdd.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String myShopAdd(Locale locale, Model model, ShopDto sdto) {
		logger.info("상점 추가", locale);

		boolean isS = yoService.shopAdd(new ShopDto(sdto.getId(), sdto.getShopId(), sdto.getShopName(), sdto.getShopOdd(),
				sdto.getShopAdd(), sdto.getShopDetailAdd(), sdto.getShopTel(), sdto.getLocal(), sdto.getBusinessNum(), null, "0", "0", sdto.getShopImg()));

		if (isS) {
			return "redirect:myShop.do";
		} else {
			return "error";
		}
	}

	// 구매자
	
	@RequestMapping(value = "/cancelDelete.do", method = RequestMethod.GET)
	public String cancelDelete(HttpServletRequest request, Locale locale, Model model) {
		logger.info("내 계정 상태보기", locale);
		
		HttpSession session = request.getSession();
		String who = (String) session.getAttribute("who");
		String del = (String) session.getAttribute("del");
		String id = (String) session.getAttribute("user_id");
		
		if(who.equals("1") && del.equals("1")) {
			return "customer/cancelMyPageDelete";			
		} else if(who.equals("2") && del.equals("1")) {			
			List<ShopDto> list = yoService.myShop(id);
			model.addAttribute("list", list);
			return "seller/cancelMyPageDelete";
		}
		return "error";
	}
	

	@RequestMapping(value = "/myPage.do", method = RequestMethod.GET)
	public String myPage(HttpServletRequest request, Locale locale, Model model) {
		logger.info("마이페이지", locale);

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		MemberDto dto = yoService.listSel(id);
		model.addAttribute("dto", dto);
		
		if(dto.getDel().equals("0") && dto.getWho().equals("1")) {
			List<MemberShoppingDto> msList = yoService.likeList(id);
			model.addAttribute("msList", msList);
			return "customer/myPage";			
		} else if(dto.getDel().equals("1") && dto.getWho().equals("1")) {
			return "customer/delMyPage";
		} else if(dto.getWho().equals("2") ) {
			return "seller/myPage";
		} else {
			model.addAttribute("msg", "마이페이지 오류");
			return "error";
		}
	}

	@RequestMapping(value = "/myPageUpdateForm.do", method = RequestMethod.GET)
	public String myPageUpdateForm(HttpServletRequest request, Locale locale, Model model) {
		logger.info("회원 정보 수정 폼", locale);
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		String who = (String) session.getAttribute("who");
		
		MemberDto dto = yoService.listSel(id);
		model.addAttribute("dto", dto);
		
		if(who.equals("1")) {
			return "customer/myPageUpdateForm";
		} else if(who.equals("2")) {
			return "seller/myPageUpdateForm";			
		}
		model.addAttribute("msg", "오류입니다.");
		return "error";
	}

	@RequestMapping(value = "/myPageUpdate.do", method = RequestMethod.POST)
	public String myPageUpdate(HttpServletRequest request, Locale locale, Model model) {
		logger.info("회원 정보 수정하기", locale);
		
		HttpSession session = request.getSession();
		
		boolean isS = yoService.memUpdate(request);
		
		if (isS) {
			return "redirect:myPage.do";
		} else {
			model.addAttribute("msg", "정보수정오류입니다.");
			return "error";
		}
	}
	
	@RequestMapping(value = "/myPageDelete.do", method = RequestMethod.GET)
	public String myPageDelete(HttpServletRequest request, Locale locale, Model model) {
		logger.info("회원탈퇴폼", locale);
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		MemberDto dto = yoService.listSel(id);
		
		if(dto.getWho().equals("1")) {
			return "customer/myPageDelete";			
		} else if(dto.getWho().equals("2") ) {
			return "seller/myPageDelete";
		} else {
			model.addAttribute("msg", "마이페이지 오류");
			return "error";
		}
	}
	
	@RequestMapping(value = "/myPageDeleteDo.do", method = RequestMethod.POST)
	public String myPageDeleteDo(HttpServletRequest request, Locale locale, Model model) {
		logger.info("회원탈퇴", locale);
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		boolean isS = yoService.myPageDel(id);

		if (isS) {
			session = request.getSession(false);
			session.invalidate();
			return "redirect:.";
		} else {
			return "error";
		}
	}	
	
	@RequestMapping(value = "/myPageCan.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String myPageCan(HttpServletRequest request, Locale locale, Model model, @RequestParam("id") String id) {
		logger.info("회원탈퇴 취소", locale);

		HttpSession session = request.getSession();
		String who = (String) session.getAttribute("who");
		String del = (String) session.getAttribute("del");
		
		boolean isS = yoService.myPageCan(id);
		
		if (isS) {
			if (who.equals("0")) {
				return "redirect:delMemberList.do";
			} else if (who.equals("1") && del.equals("0")) {
				session.invalidate();
				return "redirect:.";
			} else if (who.equals("1") && del.equals("1")) {
				session.invalidate();
				return "redirect:.";
			} else if (who.equals("2")) {
				session.invalidate();
				return "redirect:.";
			} else {
				return "error";
			}
		} else {
			return "error";
		}
	}
	
	
	
	
	
	
	

	
	@RequestMapping(value = "/deleteLikeList.do", method = RequestMethod.GET)
	public String deleteLikeList(HttpServletRequest request, Locale locale, Model model, @RequestParam("product_seq") String product_seq) {
		logger.info("찜 삭제", locale);
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		String who = (String) session.getAttribute("who");	
		
		boolean isS = yoService.likeCancel(id, product_seq);
		System.out.println(id + product_seq + isS);
		
		if(who.equals("1")) {
			if(isS) {
				return "redirect:myPage.do";
			}
		} else {
			model.addAttribute("msg", "권한 오류입니다.");
			return "error";
		}
		model.addAttribute("msg", "찜 삭제 오류입니다.");
		return "error";
	}
	
}
