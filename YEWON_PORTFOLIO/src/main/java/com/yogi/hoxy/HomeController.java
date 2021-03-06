package com.yogi.hoxy;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;

import com.yogi.hoxy.dtos.BookDto;
import com.yogi.hoxy.dtos.MemberDto;
import com.yogi.hoxy.dtos.MemberShoppingDto;
import com.yogi.hoxy.dtos.ProductDto;
import com.yogi.hoxy.dtos.ShopDto;
import com.yogi.hoxy.service.IYogiService;
import com.yogi.hoxy.service.YogiService;

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
      
      List<ProductDto> pList = yoService.search(null, null, null, null);
      model.addAttribute("pList", pList);

      List<Map<String, Integer>> list = yoService.peopleLike();
      model.addAttribute("list", list);
      
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
      } else {
         return "home";         
      }
   }

   @RequestMapping(value = "/loginDo.do", method = { RequestMethod.GET, RequestMethod.POST })
   public String loginDo(HttpServletRequest request, HttpServletResponse response, Locale locale, Model model,
         @RequestParam Map<String, String> login) throws ServletException, IOException {
      logger.info("???????????????", locale);
      
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
         session.setAttribute("power", dto.getPower());
         session.setAttribute("tel", dto.getTel());
         
         List<ProductDto> pList = yoService.search(null, null, null, null);
         model.addAttribute("pList", pList);

         List<Map<String, Integer>> list = yoService.peopleLike();
         model.addAttribute("list", list);
         
         if(dto.getPower().equals("2")) {
            return "ban";
         } else if(dto.getPower().equals("0")){
            model.addAttribute("msg", "????????? ??????????????????.");
            model.addAttribute("url", "logout.do");
            return "alert";
         } else if (dto.getWho().equals("0")) {
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
      }
      model.addAttribute("msg", "????????? ?????? ??????????????? ????????????.");
      model.addAttribute("url", "login.do");
      return "alert";   
   }

   @RequestMapping(value = "/login.do", method = RequestMethod.GET)
   public String login(Locale locale, Model model) {
      logger.info("?????????", locale);
      
      return "login";
   }
   
   @RequestMapping(value = "/logout.do", method = RequestMethod.GET)
   public String logout(HttpServletRequest request, Locale locale, Model model) {
      logger.info("????????????", locale);

      HttpSession session = request.getSession(false);
      session.invalidate();

      return "redirect:.";
   }
   
   @RequestMapping(value = "/newMemberList.do", method = RequestMethod.GET)
   public String newMemberList(HttpServletRequest request, Locale locale, Model model) {
      logger.info("???????????? ?????? ??????", locale);

      HttpSession session = request.getSession();
      String who = (String) session.getAttribute("who");
      
      if(who.equals("0")) {
         List<MemberDto> list = yoService.adminList();
         model.addAttribute("list", list);
         return "admin/newMemberList";         
      } else {
         model.addAttribute("msg", "???????????? ???????????????.");
         return "error";
      }
   }
   
   @RequestMapping(value = "/newShopList.do", method = RequestMethod.GET)
   public String newShopList(HttpServletRequest request, Locale locale, Model model) {
      logger.info("???????????? ?????? ??????", locale);

      HttpSession session = request.getSession();
      String who = (String) session.getAttribute("who");
      
      if(who.equals("0")) {
         List<ShopDto> sList = yoService.listShop();
         model.addAttribute("sList", sList);
         return "admin/newShopList";
      } else {
         model.addAttribute("msg", "???????????? ???????????????.");
         return "error";
      }
   }
   
   @RequestMapping(value = "/delMemberList.do", method = RequestMethod.GET)
   public String delMemberList(HttpServletRequest request, Locale locale, Model model) {
      logger.info("????????????", locale);

      HttpSession session = request.getSession();
      String who = (String) session.getAttribute("who");
      
      if(who.equals("0")) {
         List<MemberDto> dList = yoService.delList();
         model.addAttribute("dList", dList);
         return "admin/delMemberList";
      } else {
         model.addAttribute("msg", "???????????? ???????????????.");
         return "error";
      }
   }
   
   @RequestMapping(value = "/delShopList.do", method = RequestMethod.GET)
   public String delShopList(HttpServletRequest request, Locale locale, Model model) {
      logger.info("????????????", locale);

      HttpSession session = request.getSession();
      String who = (String) session.getAttribute("who");
      
      if(who.equals("0")) {
         List<ShopDto> sdList = yoService.delShopList();
         model.addAttribute("sdList", sdList);
         return "admin/delShopList";
      } else {
         model.addAttribute("msg", "???????????? ???????????????.");
         return "error";
      }
   }

   @RequestMapping(value = "/memberList.do", method = RequestMethod.GET)
   public String memberList(HttpServletRequest request, Locale locale, Model model) {
      logger.info("???????????? ??????????????????.", locale);

      HttpSession session = request.getSession();
      String who = (String) session.getAttribute("who");
      
      if (who.equals("0")) {
         List<MemberDto> list = yoService.memberList();
         model.addAttribute("list", list);
         return "admin/memberList";
      } else {
         model.addAttribute("msg", "???????????? ???????????????.");
         return "error";
      }

   }

   @RequestMapping(value = "/shopList.do", method = RequestMethod.GET)
   public String shopList(HttpServletRequest request, Locale locale, Model model) {
      logger.info("???????????? ??????????????????.", locale);

      HttpSession session = request.getSession();   
      String who = (String) session.getAttribute("who");

      if (who.equals("0")) {
         List<ShopDto> sList = yoService.shopList();
         model.addAttribute("sList", sList);
         return "admin/shopList";
      } else {
         model.addAttribute("msg", "???????????? ???????????????.");
         return "error";
      }

   }

   @RequestMapping(value = "/admit.do", method = { RequestMethod.GET, RequestMethod.POST })
   public String admit(HttpServletRequest request, Locale locale, Model model, String id) {
      logger.info("???????????????.", locale);
      
      HttpSession session = request.getSession();      
      String who = (String) session.getAttribute("who");
      
      if(who.equals("0")) {
         MemberDto dto = yoService.listSel(id);
         boolean isS = yoService.listUp(dto);
         if (isS) {
            return "redirect:newMemberList.do";
         } else {
            model.addAttribute("msg", "???????????? ???????????????.");
            return "error";
         }   
      } else {
         model.addAttribute("msg", "???????????? ???????????????.");
         return "error";
      }
   }

   @RequestMapping(value = "/admitShop.do", method = { RequestMethod.GET, RequestMethod.POST })
   public String admitShop(HttpServletRequest request, Locale locale, Model model, String shopId) {
      logger.info("?????? ???????????????.", locale);
      
      HttpSession session = request.getSession();   
      String who = (String) session.getAttribute("who");
      
      if(who.equals("0")) {
         ShopDto sdto = yoService.listSelShop(shopId);
         boolean isS = yoService.listUpShop(sdto);      
         if (isS) {
            return "redirect:newShopList.do";
         } else {
            model.addAttribute("msg", "???????????? ???????????????.");
            return "error";
         }
      } else {
         model.addAttribute("msg", "???????????? ???????????????.");
         return "error";
      }
   }

   @RequestMapping(value = "/delete.do", method = { RequestMethod.GET, RequestMethod.POST })
   public String delete(HttpServletRequest request, Locale locale, Model model, String id) {
      logger.info("???????????????.", locale);
      
      HttpSession session = request.getSession();   
      String who = (String) session.getAttribute("who");
      
      if(who.equals("0")) {
         boolean isS = yoService.listDel(id);
         if (isS) {
            return "redirect:newMemberList.do";
         } else {
            model.addAttribute("msg", "???????????? ???????????????.");
            return "error";
         }      
      } else {
         model.addAttribute("msg", "???????????? ???????????????.");
         return "error";
      }
   }

   @RequestMapping(value = "/deleteShop.do", method = RequestMethod.GET)
   public String deleteShop(HttpServletRequest request, Locale locale, Model model, String shopId) {
      logger.info("???????????????.", locale);
      
      HttpSession session = request.getSession();      
      String who = (String) session.getAttribute("who");
      
      if(who.equals("0")) {
         boolean isS = yoService.shopDel(shopId);
         if (isS) {
            return "redirect:shopList.do";
         } else {
            model.addAttribute("msg", "???????????? ?????? ???????????????.");
            return "error";
         }
      } else {
         model.addAttribute("msg", "???????????? ???????????????.");
         return "error";
      }
   }

   @RequestMapping(value = "/memDetail.do", method = { RequestMethod.GET, RequestMethod.POST })
   public String memDetail(HttpServletRequest request, Locale locale, Model model, String id) {
      logger.info("???????????? ??????", locale);
      
      HttpSession session = request.getSession();      
      String who = (String) session.getAttribute("who");
      
      if(who.equals("0")) {
         MemberDto dto = yoService.listSel(id);
         model.addAttribute("dto", dto);
         return "memDetail";
      } else {
         model.addAttribute("msg", "???????????? ???????????????.");
         return "error";   
      }
   }
   
   @RequestMapping(value = "/memUpdateForm.do", method = { RequestMethod.GET, RequestMethod.POST })
   public String memUpdateForm(HttpServletRequest request, Locale locale, Model model, @RequestParam("id") String id) {
      logger.info("???????????? ?????????", locale);
      
      HttpSession session = request.getSession();   
      String who = (String) session.getAttribute("who");
      
      if(who.equals("0")) {
         MemberDto dto = yoService.listSel(id);
         model.addAttribute("dto", dto);
         System.out.println(dto);
         return"admin/memUpdateForm";
      } else {
         model.addAttribute("msg", "???????????? ???????????????.");
         return "error";   
      }
   }
   
   @RequestMapping(value = "/Update.do", method = { RequestMethod.GET, RequestMethod.POST })
   public String Update(HttpServletRequest request, Locale locale, Model model) {
      logger.info("???????????? ????????????", locale);
      
      HttpSession session = request.getSession();      
      String who = (String) session.getAttribute("who");
      
      if(who.equals("0")) {
         boolean isS = yoService.memUpdate(request);
         if (isS) {
            return "redirect:memberList.do";
         } else {
            model.addAttribute("msg", "???????????? ???????????????");
            return "error";
         } 
      } else {
         model.addAttribute("msg", "???????????? ???????????????.");
         return "error";            
      }
   }
   
   @RequestMapping(value = "/shopUpdateForm.do", method = { RequestMethod.GET, RequestMethod.POST })
   public String shopUpdateForm(HttpServletRequest request, Locale locale, Model model, 
         @RequestParam("shopId") String shopId, @RequestParam("id") String id) {
      logger.info("?????? ?????? ???", locale);
      
      HttpSession session = request.getSession();
      String who = (String) session.getAttribute("who");
      
      if(who.equals("0")) {
         ShopDto sdto = yoService.myShopDetail(id, shopId);
         model.addAttribute("sdto", sdto);
         return "admin/seller/shopUpdateForm";         
      } else {
         model.addAttribute("msg", "???????????? ???????????????.");
         return "error";                  
      }
   }

   @RequestMapping(value = "/shopUpdate.do", method = RequestMethod.POST)
   public String shopUpdate(HttpServletRequest request, Locale locale, Model model, ShopDto sdto) {
      logger.info("?????? ??????", locale);
      
      HttpSession session = request.getSession();
      String who = (String) session.getAttribute("who");
      
      if(who.equals("0")) {
         boolean isS = yoService.shopUpdate(sdto);
         if (isS) {
            return "redirect:shopList.do";
         } else {
            model.addAttribute("msg", "???????????????.");
            return "error";
         }
      } else {
         model.addAttribute("msg", "???????????? ???????????????.");
         return "error";                  
      }
   }
      
   @RequestMapping(value = "/shopDelete.do", method = RequestMethod.POST)
   public String shopDelete(HttpServletRequest request, Locale locale, Model model, 
         @RequestParam("shopId") String shopId) {
      logger.info("?????? ?????? ??????", locale);

      HttpSession session = request.getSession();
      String who = (String) session.getAttribute("who");      
      boolean isS = yoService.shopDelete(shopId);

      if (isS) {
         if(who.equals("0")) {
            return "redirect:shopList.do";
         } else if (who.equals("2")) {
            return "redirect:shopList.do";            
         } else {
            model.addAttribute("msg", "????????? ????????????");
            return "error";   
         }
      } else {
         model.addAttribute("msg", "???????????????.");
         return "error";
      }
   }
   
   @RequestMapping(value = "/newMemberDetail.do", method = { RequestMethod.GET, RequestMethod.POST })
   public String newMemberDetail(HttpServletRequest request, Locale locale, Model model, String id) {
      logger.info("???????????? ??????", locale);
      
      HttpSession session = request.getSession();
      String who = (String) session.getAttribute("who");      
      
      if(who.equals("0")) {
         MemberDto dto = yoService.listSel(id);
         model.addAttribute("dto", dto);         
         return "admin/newMemberDetail";
      } else {
         model.addAttribute("msg", "???????????????.");
         return "error";                  
      }

   }

   @RequestMapping(value = "/newShopDetail.do", method = RequestMethod.GET)
   public String newShopDetail(HttpServletRequest request, Locale locale, Model model, @RequestParam Map<String, String> info, 
         @RequestParam("shopId") String shopId, @RequestParam("id") String id) {
      logger.info("???????????? ????????????", locale);
      
      HttpSession session = request.getSession();   
      String who = (String) session.getAttribute("who");      
      
      if(who.equals("0")) {
         ShopDto sdto = yoService.myShopDetail(id, shopId);
         model.addAttribute("sdto", sdto);
         return "admin/newShopDetail";         
      } else {
         model.addAttribute("msg", "???????????????.");
         return "error";   
      }
   }
      
   @RequestMapping(value = "/shopDetail.do", method = RequestMethod.GET)
   public String shopDetail(HttpServletRequest request, Locale locale, Model model, @RequestParam Map<String, String> info, 
         @RequestParam("shopId") String shopId, @RequestParam("id") String id) {
      logger.info("?????? ????????????", locale);
      
      HttpSession session = request.getSession();
      String who = (String) session.getAttribute("who");      
      
      if(who.equals("0")) {
         ShopDto sdto = yoService.myShopDetail(id, shopId);
         model.addAttribute("sdto", sdto);
         return "admin/seller/shopDetail";         
      } else {
         model.addAttribute("msg", "???????????????.");
         return "error";   
      }
   }
   
   
   // ?????????

   @RequestMapping(value = "/myShop.do", method = RequestMethod.GET)
   public String myShop(HttpServletRequest request, Locale locale, Model model) {
      logger.info("??? ?????? ??????", locale);

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
      logger.info("??? ?????? ????????????", locale);
      
      ShopDto sdto = yoService.myShopDetail(id, shopId);
      model.addAttribute("sdto", sdto);
      
      return "seller/myShopDetail";
   }


   @RequestMapping(value = "/myShopUpdateForm.do", method = { RequestMethod.GET, RequestMethod.POST })
   public String myShopUpdateForm(HttpServletRequest request, @RequestParam("id") String id,
         @RequestParam("shopId") String shopId, Locale locale, Model model) {
      logger.info("?????? ?????? ?????? ???", locale);
      
      ShopDto sdto = yoService.myShopDetail(id, shopId);
      model.addAttribute("sdto", sdto);
      
      return "seller/myShopUpdateForm";
   }
   
   @RequestMapping(value = "/myShopUpdate.do", method = RequestMethod.POST)
   public String myShopUpdate(HttpServletRequest request, Locale locale, Model model) {
      logger.info("?????? ?????? ??????", locale);
      
      HttpSession session = request.getSession();      
      String who = (String) session.getAttribute("who");
      
      boolean isS = yoService.myShopUpdate(request);
      if (isS) {
         if(who.equals("2")) {            
            return "redirect:myShop.do";
         } else if(who.equals("0")) {
            return "redirect:shopList.do";
         }
      }
      model.addAttribute("msg", "?????? ???????????? ???????????????.");
      return "error";
   }

   @RequestMapping(value = "/myShopDelete.do", method = { RequestMethod.GET, RequestMethod.POST })
   public String myShopDelete(Locale locale, Model model, @RequestParam("shopId") String shopId) {
      logger.info("?????? ?????? ??????", locale);

      boolean isS = yoService.myShopDelete(shopId);

      if (isS) {
         return "redirect:myShop.do";
      } else {
         return "error";
      }
   }
   
   @RequestMapping(value = "/myShopCan.do", method = { RequestMethod.GET, RequestMethod.POST })
   public String myShopCan(HttpServletRequest request, Locale locale, Model model, @RequestParam("shopId") String shopId) {
      logger.info("?????? ?????? ????????????", locale);
      
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
      logger.info("?????? ?????? ???", locale);

      HttpSession session = request.getSession();
      String id = (String) session.getAttribute("user_id");
      model.addAttribute("id", id);

      return "seller/myShopAddForm";
   }

   @RequestMapping(value = "/myShopAdd.do", method = { RequestMethod.GET, RequestMethod.POST })
   public String myShopAdd(Locale locale, Model model, ShopDto sdto) {
      logger.info("?????? ??????", locale);

      boolean isS = yoService.shopAdd(new ShopDto(sdto.getId(), sdto.getShopId(), sdto.getShopName(), sdto.getShopOdd(),
            sdto.getShopAdd(), sdto.getShopDetailAdd(), sdto.getShopTel(), sdto.getLocal(), sdto.getBusinessNum(), null, "0", "0", sdto.getShopImg()));
      if (isS) {
         return "redirect:myShop.do";
      } else {
         return "error";
      }
   }

   // ?????????
   
   @RequestMapping(value = "/cancelDelete.do", method = RequestMethod.GET)
   public String cancelDelete(HttpServletRequest request, Locale locale, Model model) {
      logger.info("??? ?????? ????????????", locale);
      
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
      logger.info("???????????????", locale);

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
         model.addAttribute("msg", "??????????????? ??????");
         return "error";
      }
   }

   @RequestMapping(value = "/myPageUpdateForm.do", method = RequestMethod.GET)
   public String myPageUpdateForm(HttpServletRequest request, Locale locale, Model model) {
      logger.info("?????? ?????? ?????? ???", locale);
      
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
      model.addAttribute("msg", "???????????????.");
      return "error";
   }

   @RequestMapping(value = "/myPageUpdate.do", method = RequestMethod.POST)
   public String myPageUpdate(HttpServletRequest request, Locale locale, Model model) {
      logger.info("?????? ?????? ????????????", locale);
      
      HttpSession session = request.getSession();
      
      boolean isS = yoService.memUpdate(request);
      
      if (isS) {
         return "redirect:myPage.do";
      } else {
         model.addAttribute("msg", "???????????????????????????.");
         return "error";
      }
   }
   
   @RequestMapping(value = "/myPageDelete.do", method = RequestMethod.GET)
   public String myPageDelete(HttpServletRequest request, Locale locale, Model model) {
      logger.info("???????????????", locale);
      
      HttpSession session = request.getSession();
      String id = (String) session.getAttribute("id");
      
      MemberDto dto = yoService.listSel(id);
      model.addAttribute("dto", dto);
      
      if(dto.getWho().equals("1")) {
         return "customer/myPageDelete";         
      } else if(dto.getWho().equals("2") ) {
         return "seller/myPageDelete";
      } else {
         model.addAttribute("msg", "??????????????? ??????");
         return "error";
      }
   }
   
   @RequestMapping(value = "/myPageDeleteDo.do", method = RequestMethod.POST)
   public String myPageDeleteDo(HttpServletRequest request, Locale locale, Model model) {
      logger.info("????????????", locale);
      
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
      logger.info("???????????? ??????", locale);

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
   
   
   
   
   
   @RequestMapping(value = "/like.do", method = RequestMethod.GET)
   public String like(HttpServletRequest request, Locale locale, Model model, @RequestParam("product_seq") String product_seq) {
      logger.info("??? ??????", locale);
      
      HttpSession session = request.getSession();
      String id = (String) session.getAttribute("id");
      
      if(id == null) {
         model.addAttribute("msg", "???????????? ??????????????? ??????.");
         model.addAttribute("url", "login.do");
         return "alert";
      }
      boolean isS = yoService.like(id,product_seq);
      System.out.println(id + product_seq);
         if(isS) {   
            return "redirect:search.do";
         }
            return "error";
   }

   
   @RequestMapping(value = "/deleteLikeList.do", method = RequestMethod.GET)
   public String deleteLikeList(HttpServletRequest request, Locale locale, Model model, @RequestParam("product_seq") String product_seq) {
      logger.info("??? ??????", locale);
      
      HttpSession session = request.getSession();
      String id = (String) session.getAttribute("id");
      String who = (String) session.getAttribute("who");   
      
      boolean isS = yoService.likeCancel(id, product_seq);
      
      if(who.equals("1")) {
         if(isS) {
            return "redirect:myPage.do";
         }
      } else {
         model.addAttribute("msg", "?????? ???????????????.");
         return "error";
      }
      model.addAttribute("msg", "??? ?????? ???????????????.");
      return "error";
   }
   
   
   
   
   
   
   @RequestMapping(value = "/addProduct.do", method = RequestMethod.GET)
   public String addProduct(HttpServletRequest request, Locale locale, Model model, @RequestParam("shopId") String shopId) {
      logger.info("?????? ?????? ???", locale);
      
      HttpSession session = request.getSession();
      String who = (String) session.getAttribute("who");
      String id = (String) session.getAttribute("id");
      session.setAttribute("shopId", shopId);
      
      MemberDto dto = yoService.listSel(id);
      model.addAttribute("dto", dto);
      ShopDto sdto = yoService.myShopDetail(id, shopId);
      
      if(who.equals("2")) {
         if(sdto.getPower().equals("1")) {
        	 return "seller/addProduct";            
         } 
      }
      model.addAttribute("msg", "?????? ???????????????.");
      return "error";
   }
   
   @RequestMapping(value = "/addProductDo.do", method = { RequestMethod.GET, RequestMethod.POST })
   public String addProductDo(HttpServletRequest request, Locale locale, Model model) {
      logger.info("?????? ??????", locale);
      
      HttpSession session = request.getSession();
      String who = (String) session.getAttribute("who");
      
      boolean isS = yoService.addProduct(request);
      
      if (isS) {
         if(who.equals("2")) {
            return "redirect:myShop.do";                        
         }
      }
      model.addAttribute("msg", "?????????????????????.");
      return "error";
      
   }
   
   
   
   
   
   
   
   @RequestMapping(value = "/search.do", method = { RequestMethod.GET, RequestMethod.POST })
   public String search(HttpServletRequest request, Locale locale, Model model, String category, String local, 
         String keyword, String shop, String order, String shopId) {
      logger.info("??????", locale);
      
      HttpSession session = request.getSession();
      String id = (String) session.getAttribute("id");
      String who = (String) session.getAttribute("who");
      model.addAttribute("who", who);
      
      if(order != null) {
         List<ProductDto> list = yoService.price();
         model.addAttribute("list", list);
         
         List<Map<String, String>> pList = yoService.countCategory();
         model.addAttribute("pList", pList);
         
         return "search";
      } else if(shop != null) {
    	  
         System.out.println(shopId);
         ShopDto sdto = yoService.listSelShop(shopId);
         model.addAttribute("sdto", sdto);
         
         session.setAttribute("shopId", shopId);
         
         List<ProductDto> list = yoService.search(shopId, category, local, keyword);
         model.addAttribute("list", list);
         
         List<Map<String, String>> psList = yoService.countCategoryInShop(shopId);
         model.addAttribute("psList", psList);
         
         return "seller/myProductList";
         
      } else if(category == null && keyword == null){
      
         List<ProductDto> list = yoService.productList();
         model.addAttribute("list", list);
         
         List<Map<String, String>> pList = yoService.countCategory();
         model.addAttribute("pList", pList);
         
         if(id != null) {
            List<MemberShoppingDto> msList = yoService.searchLike(id);
            model.addAttribute("msList", msList);   
         }
         return "search";
         
      } else {    	  
         List<ProductDto> list = yoService.search(shopId, category, local, keyword);
         model.addAttribute("list", list);
         
         List<Map<String, String>> pList = yoService.countCategory();
         model.addAttribute("pList", pList);
         
         return "search";                  
      } 
      
   }
   
   @RequestMapping(value = "/myProductList.do", method = RequestMethod.GET)
   public String myProductList(HttpServletRequest request, Locale locale, Model model, @RequestParam("shopId") String shopId) {
      logger.info("?????? ?????? ?????????", locale);
      
      HttpSession session = request.getSession();

      String who = (String) session.getAttribute("who");
      model.addAttribute("who", who);
            
      ShopDto sdto = yoService.listSelShop(shopId);
      model.addAttribute("sdto", sdto);

      List<ProductDto> list = yoService.myProductList(shopId);
      model.addAttribute("list", list);
      
      List<Map<String, String>> psList = yoService.countCategoryInShop(shopId);
      model.addAttribute("psList", psList);
      
      return "seller/myProductList";         
      
   }
   
   @RequestMapping(value = "/productDetail.do", method = { RequestMethod.GET, RequestMethod.POST })
   public String productDetail(HttpServletRequest request, Locale locale, Model model, int product_seq) {
      logger.info("?????? ?????? ?????????", locale);
      
      HttpSession session = request.getSession();
      String who = (String) session.getAttribute("who");
      model.addAttribute("who", who);
      
      ProductDto dto = yoService.productDetail(product_seq);
      model.addAttribute("dto", dto);
      
      List<Map<String, Integer>> list = yoService.peopleLike();
      model.addAttribute("list", list);

      return "productDetail";
   }

   @RequestMapping(value = "/updateStock.do", method = { RequestMethod.GET, RequestMethod.POST })
   public String updateStock(HttpServletRequest request, Locale locale, Model model, ProductDto dto, @RequestParam("shopId") String shopId) {
      logger.info("?????? ????????????", locale);
      
      boolean isS = yoService.updateStock(dto);

      if(isS) {
         ShopDto sdto = yoService.listSelShop(shopId);
         model.addAttribute("sdto", sdto);
         return "redirect:myProductList.do?shopId=" + shopId;      
      }
      model.addAttribute("msg", "???????????? ???????????????.");
      return "error";
   }
   
   @RequestMapping(value = "/changeStock.do", method = { RequestMethod.GET, RequestMethod.POST })
   public String changeStock(HttpServletRequest request, Locale locale, Model model, ProductDto dto, @RequestParam("shopId") String shopId) {
      logger.info("?????? ??????", locale);

      boolean isS = yoService.changeStock(dto);

      if(isS) {
         ShopDto sdto = yoService.listSelShop(shopId);
         model.addAttribute("sdto", sdto);
         return "redirect:myProductList.do?shopId=" + shopId;      
      }
      model.addAttribute("msg", "???????????? ???????????????.");
      return "error";
   }
   
   //?????? ?????? search.jsp
//   @ResponseBody   
//   @RequestMapping(value = "/ch.do", method = RequestMethod.POST)
//   public Map<String, List<ProductDto>> ch(HttpServletRequest request, Locale locale, Model model, String category, String local, String keyword) {
//      logger.info("??????", locale);
//      
//      List<ProductDto> list = yoService.search(category, local, keyword);
//      model.addAttribute("list", list);
//      Map<String, List<ProductDto>> map = new HashMap<String, List<ProductDto>>();
//      map.put("list", list);
//      
//      return map;
//   }
}