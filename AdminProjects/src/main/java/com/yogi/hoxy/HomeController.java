package com.yogi.hoxy;

import java.io.IOException;
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

import com.yogi.hoxy.dtos.YHDto;
import com.yogi.hoxy.dtos.sellerDto;
import com.yogi.hoxy.service.IYHService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private IYHService yhService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest request, Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		HttpSession session = request.getSession();
		System.out.println("mainPage session : " + session);
		
		Object who = session.getAttribute("who");
		System.out.println("who메인페이지 : " + who );
		
		if (who != null) {

			String name = (String) session.getAttribute("name");
			session.setAttribute("name", name);

			YHDto dto = (YHDto) session.getAttribute("dto");
			model.addAttribute("dto", dto);

			if ((int)who == 0) {
				return "admin/adminMain";
			} else if ((int)who == 1) {
				return "customer/customerMain";
			} else if ((int)who == 2) {
				return "seller/sellerMain";
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

		String result = yhService.login(id, pwd);
		System.out.println("result : " + result);

		if (result.equals("true")) {
			HttpSession session = request.getSession();	
			session.setAttribute("isLogon", true);
			session.setAttribute("user_id", id);

			YHDto dto = yhService.listSel(id);
			System.out.println("dto : " + dto);

			request.setAttribute("dto", dto);
			session.setAttribute("who", dto.getWho());
			session.setAttribute("name", dto.getName());
			System.out.println("who : " + dto.getWho());
			System.out.println("name : " + dto.getName());
			System.out.println("세선 생겼어요 : " + session);

			if (dto.getWho() == 0) {
				return "admin/adminMain";
			} else if (dto.getWho() == 1) {
				return "customer/customerMain";
			} else if (dto.getWho() == 2) {
				return "seller/sellerMain";
			}
			return "main";

		} else {
			System.out.println("세션 안생김ㅠㅠ");
			return "error";
		}

		// int who = yhService.loginInfo(login.get("id"), login.get("name"));
		// session.setAttribute("who", who);

	}

	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login(HttpServletRequest request, Locale locale, Model model) {
		logger.info("로그인", locale);
		
		HttpSession session = request.getSession(false);
		System.out.println("login.do : " + session);
		
		return "login";
	}

	@RequestMapping(value = "/admin.do", method = RequestMethod.GET)
	public String admin(HttpServletRequest request, Locale locale, Model model) {
		logger.info("관리자 페이지입니다.", locale);

		HttpSession session = request.getSession();
		String name = (String) session.getAttribute("name");
		model.addAttribute("name",name);
		
		List<YHDto> list = yhService.adminList();
		model.addAttribute("list", list);

		List<sellerDto> sList = yhService.listShop();
		model.addAttribute("sList", sList);
		
		List<YHDto> dList = yhService.delList();
		model.addAttribute("dList", dList);
		
		List<sellerDto> shopList = yhService.delShopList();
		model.addAttribute("shopList", shopList);
		
		return "admin/admin";
	}

	@RequestMapping(value = "/memberList.do", method = RequestMethod.GET)
	public String memberList(HttpServletRequest request, Locale locale, Model model) {
		logger.info("회원관리 페이지입니다.", locale);

		HttpSession session = request.getSession();
		int who = (int) session.getAttribute("who");
		System.out.println("who : " + who);

		if (who == 0) {
			List<YHDto> list = yhService.memberList();
			model.addAttribute("list", list);
			System.out.println(list);
			return "admin/memberList";
		} else {
			model.addAttribute("msg", "관리자만 가능합니다.");
			return "error";
		}

	}

	@RequestMapping(value = "/shopList.do", method = RequestMethod.GET)
	public String shopList(HttpServletRequest request, Locale locale, Model model) {
		logger.info("회원관리 페이지입니다.", locale);

		HttpSession session = request.getSession();
		int who = (int) session.getAttribute("who");
		System.out.println("who : " + who);

		if (who == 0) {
			List<sellerDto> sList = yhService.shopList();
			model.addAttribute("sList", sList);
			System.out.println(sList);
			return "admin/shopList";
		} else {
			model.addAttribute("msg", "관리자만 가능합니다.");
			return "error";
		}

	}

	@RequestMapping(value = "/admit.do", method = RequestMethod.POST)
	public String admit(Locale locale, Model model, String id) {
		logger.info("승인입니다.", locale);

		YHDto dto = yhService.listSel(id);

		boolean isS = yhService.listUp(dto);

		if (isS) {
			return "redirect:admin.do";
		} else {
			model.addAttribute("msg", "권한수정 오류입니다.");
			return "error";
		}
	}

	@RequestMapping(value = "/admitShop.do", method = RequestMethod.POST)
	public String admitShop(Locale locale, Model model, String shopId) {
		logger.info("상점 승인입니다.", locale);

		System.out.println("shopId : " + shopId);
		sellerDto sdto = yhService.listSelShop(shopId);
		System.out.println("sdto : " + sdto);

		boolean isS = yhService.listUpShop(sdto);

		if (isS) {
			return "redirect:admin.do";
		} else {
			model.addAttribute("msg", "권한수정 오류입니다.");
			return "error";
		}
	}

	@RequestMapping(value = "/delete.do", method = RequestMethod.POST)
	public String delete(Locale locale, Model model, String id) {
		logger.info("거절입니다.", locale);

		System.out.println("id : " + id);
		boolean isS = yhService.listDel(id);

		if (isS) {
			return "redirect:admin.do";
		} else {
			model.addAttribute("msg", "권한신청 삭제 오류입니다.");
			return "error";
		}
	}

	@RequestMapping(value = "/deleteShop.do", method = RequestMethod.POST)
	public String deleteShop(Locale locale, Model model, String shopId) {
		logger.info("거절입니다.", locale);

		System.out.println("shopId : " + shopId);
		boolean isS = yhService.shopDel(shopId);

		if (isS) {
			return "redirect:admin.do";
		} else {
			model.addAttribute("msg", "권한신청 삭제 오류입니다.");
			return "error";
		}
	}

	@RequestMapping(value = "/memDetail.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String memDetail(Locale locale, Model model, String id) {
		logger.info("회원정보 보기", locale);

		System.out.println("detailid :" + id);

		YHDto dto = yhService.listSel(id);
		model.addAttribute("dto", dto);

		int who = yhService.loginInfo(id);
		System.out.println("detail who : " + who);

		if (who == 1) {
			return "memDetail";
		} else if (who == 2) {
			return "memDetail";
		} else if (who == 0) {
			return "admin/memDetail";
		} else {
			return "error";
		}
	}

	@RequestMapping(value = "/memUpdateForm.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String memUpdateForm(Locale locale, Model model, @RequestParam("id") String id) {
		logger.info("회원정보 수정폼", locale);

		YHDto dto = yhService.listSel(id);
		model.addAttribute("dto", dto);
		System.out.println("updateForm dto : " + dto);

		int who = yhService.loginInfo(id);
		System.out.println("detail who : " + who);

		if (who == 1) {
			return "memUpdateForm";
		} else if (who == 2) {
			return "memUpdateForm";
		} else if (who == 0) {
			return "admin/memUpdateForm";
		} else {
			return "error";
		}
	}

	@RequestMapping(value = "/Update.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String Update(Locale locale, Model model, YHDto dto) {
		logger.info("회원정보 수정하기", locale);

		boolean isS = yhService.memUpdate(dto);
		System.out.println("memUpdate dto : " + dto);
		     
		
		if (isS) {
			return "redirect:memberList.do";
		} else {
			model.addAttribute("msg", "회원수정 오류입니다");
			return "error";
		}

	}

	@RequestMapping(value = "/adminMain.do", method = RequestMethod.GET)
	public String main(Locale locale, Model model) {
		logger.info("메인", locale);

		return "main";
	}

	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, Locale locale, Model model) {
		logger.info("로그아웃", locale);

		HttpSession session = request.getSession(false);
		System.out.println("logoutServlet : " + session);
		session.invalidate();

		return "redirect:.";
	}

	@RequestMapping(value = "/shopUpdateForm.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String shopUpdateForm(Locale locale, Model model, @RequestParam("shopId") String shopId,
			@RequestParam("id") String id) {
		logger.info("상점 수정 폼", locale);

		sellerDto sdto = yhService.myShopDetail(id, shopId);
		model.addAttribute("sdto", sdto);

		return "admin/seller/shopUpdateForm";
	}

	@RequestMapping(value = "/shopUpdate.do", method = RequestMethod.POST)
	public String shopUpdate(Locale locale, Model model, sellerDto sdto) {
		logger.info("상점 수정", locale);

		boolean isS = yhService.shopUpdate(sdto);
		if (isS) {
			return "redirect:shopList.do";
		} else {
			return "error";
		}

	}

	@RequestMapping(value = "/shopDelete.do", method = RequestMethod.POST)
	public String shopDelete(HttpServletRequest request, Locale locale, Model model, 
			@RequestParam("shopId") String shopId) {
		logger.info("상점 정보 삭제", locale);

		HttpSession session = request.getSession();
		int who = (int) session.getAttribute("who");
		
		boolean isS = yhService.shopDelete(shopId);
		System.out.println("shopId");

		if (isS) {
			if(who == 0) {
				return "redirect:admin.do";
			} else if (who == 2) {
				return "redirect:shopList.do";				
			} else {
				return "error";
			}
		} else {
			return "error";
		}
	}

	// 판매자

	@RequestMapping(value = "/myShop.do", method = RequestMethod.GET)
	public String myShop(HttpServletRequest request, Locale locale, Model model) {
		logger.info("내 상점 보기", locale);

		HttpSession session = request.getSession();
		int who = (int) session.getAttribute("who");
		System.out.println("who : " + who);

		String user_id = (String) session.getAttribute("user_id");
		System.out.println("id : " + user_id);
		
		List<sellerDto> list = yhService.myShop(user_id);
		model.addAttribute("list", list);
		
		if (who == 2) {
			return "seller/myShop";
		} else {			
			return "error";
		}
	}
	
	@RequestMapping(value = "/shop.do", method = RequestMethod.GET)
	public String shop(HttpServletRequest request, Locale locale, Model model, @RequestParam("id") String id) {
		logger.info("내 상점 보기", locale);

		HttpSession session = request.getSession();
		int who = (int) session.getAttribute("who");
		System.out.println("who : " + who);

		
		if (who == 0){
			List<sellerDto> list = yhService.myShop(id);
			model.addAttribute("list", list);
			
			return "admin/seller/myShop";
		}else {			
			return "error";
		}
	}

	@RequestMapping(value = "/myShopDetail.do", method = RequestMethod.GET)
	public String myShopDetail(Locale locale, Model model, @RequestParam Map<String, String> info, 
			@RequestParam("shopId") String shopId, @RequestParam("id") String id) {
		logger.info("내 상점 정보보기", locale);
		
		sellerDto sdto = yhService.myShopDetail(id, shopId);
		model.addAttribute("sdto", sdto);
		return "seller/myShopDetail";
	}
	
	@RequestMapping(value = "/shopDetail.do", method = RequestMethod.GET)
	public String shopDetail(Locale locale, Model model, @RequestParam Map<String, String> info, 
			@RequestParam("shopId") String shopId, @RequestParam("id") String id) {
		logger.info("내 상점 정보보기", locale);
		
		sellerDto sdto = yhService.myShopDetail(id, shopId);
		model.addAttribute("sdto", sdto);
		return "admin/seller/myShopDetail";
	}

	@RequestMapping(value = "/myShopUpdateForm.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String myShopUpdateForm(HttpServletRequest request, @RequestParam("id") String id,
			@RequestParam("shopId") String shopId, Locale locale, Model model) {
		logger.info("상점 정보 수정 폼", locale);
		
		HttpSession session = request.getSession();		
		int who = (int) session.getAttribute("who");
		
		sellerDto sdto = yhService.myShopDetail(id, shopId);
		model.addAttribute("sdto", sdto);
		System.out.println("sdto : " + sdto);

		return "seller/myShopUpdateForm";
	}

	@RequestMapping(value = "/myShopUpdate.do", method = RequestMethod.POST)
	public String myShopUpdate(HttpServletRequest request, Locale locale, Model model, sellerDto sdto) {
		logger.info("상점 정보 수정", locale);
		
		HttpSession session = request.getSession();		
		int who = (int) session.getAttribute("who");
		
		boolean isS = yhService.myShopUpdate(sdto);
		System.out.println("sdto : " + sdto);
		System.out.println("isS : " + isS);
		
		if (isS) {
			if(who == 2) {				
				return "redirect:myShop.do";
			} else if(who == 0) {
				return "redirect:shopList.do";
			}
		}
		return "error";
	}

	@RequestMapping(value = "/myShopDelete.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String myShopDelete(Locale locale, Model model, @RequestParam("shopId") String shopId) {
		logger.info("상점 정보 삭제", locale);

		boolean isS = yhService.myShopDelete(shopId);
		System.out.println(shopId + isS);

		if (isS) {
			return "redirect:myShop.do";
		} else {
			return "error";
		}
	}
	
	@RequestMapping(value = "/myShopCan.do", method = RequestMethod.POST)
	public String myShopCan(Locale locale, Model model, @RequestParam("shopId") String shopId) {
		logger.info("상점 정보 삭제취소", locale);

		boolean isS = yhService.myShopCan(shopId);
		System.out.println(shopId + isS);

		if (isS) {
			return "redirect:myShop.do";
		} else {
			return "error";
		}
	}

	@RequestMapping(value = "/myShopAddForm.do", method = RequestMethod.GET)
	public String myShopAddForm(HttpServletRequest request, Locale locale, Model model) {
		logger.info("상점 추가 폼", locale);

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("user_id");
		model.addAttribute("id", id);
		System.out.println("id : " + id);

		return "seller/myShopAddForm";
	}

	@RequestMapping(value = "/myShopAdd.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String myShopAdd(Locale locale, Model model, sellerDto sdto) {
		logger.info("상점 추가", locale);

		boolean isS = yhService.shopAdd(new sellerDto(sdto.getId(), sdto.getShopTel(), sdto.getShopName(),
				sdto.getShopAdd(), sdto.getLocal(), sdto.getBusinessNum(), 0, null ,null, null));
		System.out.println("sdto : " + sdto);
		System.out.println("isS : " + isS);

		if (isS) {
			return "redirect:myShop.do";
		} else {
			return "error";
		}
	}

	// 구매자

	@RequestMapping(value = "/myPage.do", method = RequestMethod.GET)
	public String myPage(HttpServletRequest request, Locale locale, Model model) {
		logger.info("마이페이지", locale);

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("user_id");
		System.out.println("id : " + id);
		
		YHDto dto = yhService.listSel(id);
		model.addAttribute("dto", dto);
		
		if(dto.getWho() == 1) {
			return "customer/myPage";			
		} else if(dto.getWho() == 2 ) {
			return "seller/myPage";
		} else {
			model.addAttribute("msg", "마이페이지 오류");
			return "error";
		}
	}

	@RequestMapping(value = "/myPageUpdateForm.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String myPageUpdateForm(@RequestParam("id") String id, Locale locale, Model model) {
		logger.info("회원 정보 수정 폼", locale);

		YHDto dto = yhService.listSel(id);
		model.addAttribute("dto", dto);

		return "myPageUpdate";
	}

	@RequestMapping(value = "/myPageUpdate.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String myPageUpdate(HttpServletRequest request, @RequestParam("id") String id, Locale locale, Model model, YHDto dto) {
		logger.info("회원 정보 수정하기", locale);
		
		boolean isS = yhService.memUpdate(dto);

		if (isS) {
			HttpSession session = request.getSession(false);
			session.invalidate();
			return "redirect:.";
		} else {
			return "error";
		}
	}

	@RequestMapping(value = "/myPageDelete.do", method = RequestMethod.POST)
	public String myPageDelete(HttpServletRequest request, Locale locale, Model model, @RequestParam("id") String id) {
		logger.info("회원탈퇴", locale);

		boolean isS = yhService.myPageDel(id);
		System.out.println("id");

		if (isS) {
			HttpSession session = request.getSession(false);
			session.invalidate();
			return "redirect:.";
		} else {
			return "error";
		}
	}
	
	@RequestMapping(value = "/myPageCan.do", method = RequestMethod.POST)
	public String myPageCan(HttpServletRequest request, Locale locale, Model model, @RequestParam("id") String id) {
		logger.info("회원탈퇴 취소", locale);

		boolean isS = yhService.myPageCan(id);
		System.out.println("id");
		HttpSession session = request.getSession();
		int who = (int) session.getAttribute("who");
		
		if (isS) {
			if (who == 0) {
				return "admin/adminMain";
			} else if (who == 1) {
				return "customer/customerMain";
			} else if (who == 2) {
				return "seller/sellerMain";
			} else {
				return "error";
			}
		} else {
			return "error";
		}
	}
}
