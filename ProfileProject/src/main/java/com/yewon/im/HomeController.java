package com.yewon.im;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public String main(Locale locale, Model model, String local, String keyword) {
		logger.info("메인화면.", locale);
		
		if(local == null && keyword == null) {
			List<ProfileDto> list = profileService.memberList();
			model.addAttribute("list", list);
			System.out.println("아아아123132");
		} else if(local != null){
			List<ProfileDto> list = profileService.memberListFunction(local, keyword);
			model.addAttribute("list", list);
			System.out.println("아아아");
		} else if(keyword != null) {
			
		}
		
		
		return "main";
	}
	
	@RequestMapping(value = "/memberHome.do", method = RequestMethod.GET)
	public String memberHome(Locale locale, Model model, @RequestParam("seq") int seq) {
		logger.info("홈화면입니다.", locale);
		
		ProfileDto dto = (ProfileDto) profileService.memberHome(seq);
		model.addAttribute("dto", dto);

		List<BoardDto> list = profileService.memberBoard(seq);
		model.addAttribute("list", list);
		
		ArrayList<Integer> board_seqs = new ArrayList<Integer>();
		
		for(int i = 0; i<list.size(); i++) {
			int num = list.get(i).getBoard_seq();
			
			board_seqs.add(num);
		}
		System.out.println("댓글번호" + board_seqs);
		if(board_seqs == null || board_seqs.size() ==0) {
			return "memberHome";
		} else {
			List<CommentDto> cList = profileService.comment(board_seqs);
			model.addAttribute("cList", cList);
			
			System.out.println(cList);
		}
		
		return "memberHome";
	}
	
	@RequestMapping(value = "/writeBoard.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String writeBoard(Locale locale, Model model, BoardDto dto) {
		logger.info("글쓰기", locale);
		
		System.out.println(dto.getContent() + dto.getMember_seq());
		boolean isS = profileService.writeBoard(new BoardDto(dto.getContent(), dto.getMember_seq()));
		
		if(isS) {
			return "redirect:memberHome.do?seq="+dto.getMember_seq();
		} else {
			model.addAttribute("msg", "글 작성 오류입니다.");
			return "error";
		}
	}
}
