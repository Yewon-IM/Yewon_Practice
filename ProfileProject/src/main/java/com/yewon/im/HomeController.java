package com.yewon.im;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.yewon.im.Util.Util;
import com.yewon.im.dtos.BoardDto;
import com.yewon.im.dtos.CommentDto;
import com.yewon.im.dtos.ProfileDto;
import com.yewon.im.service.IProfileService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private IProfileService profileService;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("홈화면 입니다.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value = "/main.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String main(HttpServletRequest request, Locale locale, Model model, String[] local, String[] gender, String keyword, String orderBy
			,Integer numberth) {
		logger.info("메인화면입니다.", local);
		
		HttpSession session = request.getSession();
		
		List<Map<String, String>> localList = profileService.local(); 
		model.addAttribute("localList", localList);
		
		if(numberth != null){
			List<ProfileDto> list = profileService.main(local, gender, keyword, orderBy);
			int pageCounts = Util.pages(list.size());
			
			model.addAttribute("pageCount", pageCounts);
			
			list = list.subList(numberth,Util.subList(numberth,list.size()));
			model.addAttribute("list", list);
			System.out.println("요기갔다");
			return "main";
			
		} else {

//			System.out.println("local : " + Arrays.toString(local));
//			System.out.println("gender : " + Arrays.toString(gender));
//			System.out.println("keyword : " + keyword);
//			System.out.println("orderBy : " + orderBy);
//			System.out.println("numberth : " + numberth);
//			
			List<ProfileDto> list = profileService.main(local, gender, keyword, orderBy);
			int pageCounts = Util.pages(list.size());
			model.addAttribute("pageCount", pageCounts);
			//System.out.println(pageCounts);
			
			list = list.subList(0, 3);
			
			session.setAttribute("searchLocal", local);
			
			model.addAttribute("list", list);
			model.addAttribute("local", Arrays.toString(local));
			model.addAttribute("gender", Arrays.toString(gender));
			model.addAttribute("keyword", keyword);
			model.addAttribute("orderBy", orderBy);
			
			//float pageCounts = Util.division(list.size(),3);
			//model.addAttribute("pageCount", pageCounts);
			//System.out.println(pageCounts);
				
			System.out.println("요깁니다@");
			
			return "main";
		}
	}
	
	@RequestMapping(value = "/mainSearchNumber.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String mainSearchNumber(HttpServletRequest request, Locale locale, Model model, String[] local, String[] gender, String keyword, String orderBy
			,Integer numberth) {
		logger.info("메인화면입니다.", local);
		
		return "";

	}
	
	
	
	@RequestMapping(value = "/memberHome.do", method = RequestMethod.GET)
	public String memberHome(Locale locale, Model model, @RequestParam("seq") int seq) {
		logger.info("홈화면입니다.", locale);
		
		ProfileDto dto = (ProfileDto) profileService.memberHome(seq);
		model.addAttribute("dto", dto);

		List<BoardDto> list = profileService.memberBoard(seq);
		model.addAttribute("list", list);
		//System.out.println(list);
		
		List<Map<String, Integer>> countList = profileService.countComment();
		model.addAttribute("countList", countList);
		//System.out.println("countList" +countList);
		
		ArrayList<Integer> board_seqs = new ArrayList<Integer>();
		
		for(int i = 0; i<list.size(); i++) {
			int num = list.get(i).getBoard_seq();
			
			board_seqs.add(num);
		}
		//System.out.println("댓글번호" + board_seqs);
		if(board_seqs == null || board_seqs.size() == 0) {
			return "memberHome";
		
		} else {
			List<CommentDto> cList = profileService.comment(board_seqs);
			model.addAttribute("cList", cList);
			
			//System.out.println(cList);;
		}
		
		return "memberHome";
	}
	
	@RequestMapping(value = "/writeBoard.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String writeBoard(HttpServletRequest request, Locale locale, Model model, BoardDto dto) {
		logger.info("글쓰기", locale);
		
		//System.out.println(dto.getContent() + dto.getMember_seq());
		boolean isS = profileService.writeBoard(new BoardDto(dto.getContent(), dto.getMember_seq()));
		
		if(isS) {
			HttpSession session = request.getSession();
			session.setAttribute("member_seq", dto.getMember_seq());
			return "redirect:memberHome.do?seq="+dto.getMember_seq();
		} else {
			model.addAttribute("msg", "글 작성 오류입니다.");
			return "error";
		}
	}
	
	@RequestMapping(value = "/writeComment.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String writeComment(HttpServletRequest request, Locale locale, Model model, CommentDto dto) {
		logger.info("댓글쓰기", locale);
		
		//System.out.println(dto);
		boolean isS = profileService.writeComment(new CommentDto(dto.getBoard_seq(), dto.getContent(), dto.getMember_seq()));
		//System.out.println(isS);
		if(isS) {
			HttpSession session = request.getSession();
			int member_seq = (int) session.getAttribute("member_seq");
			return "redirect:memberHome.do?seq=" + member_seq;
		} else {
			model.addAttribute("msg", "글 작성 오류입니다.");
			return "error";
		}
	}
	
	@RequestMapping(value = "/likeup.do", method = RequestMethod.GET)
	public String likeup(HttpServletRequest request, Locale locale, Model model, int board_seq, int member_seq) {
		logger.info("좋아요 눌렀다.", locale);
		
		//System.out.println("member_seq : "+member_seq);
		boolean result = profileService.likeup(board_seq);
		if(result) {
			return "redirect:memberHome.do?seq=" + member_seq;
		} else {
			model.addAttribute("msg", "좋아요 오류입니다.");
			return "error";
		}
	}
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "/toDoList.do", method = RequestMethod.GET)
	public String toDoList(HttpServletRequest request, Locale locale, Model model, int member_seq) {
		logger.info("to do List", locale);
			
			return "toDoList";
		}	
}
