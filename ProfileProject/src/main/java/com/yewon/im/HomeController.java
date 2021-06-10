package com.yewon.im;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.yewon.im.dtos.BoardDto;
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
	public String main(Locale locale, Model model) {
		logger.info("메인화면.", locale);
		
		List<ProfileDto> list = profileService.memberList();
		model.addAttribute("list", list);

		return "main";
	}
	
	@RequestMapping(value = "/memberHome.do", method = RequestMethod.GET)
	public String memberHome(Locale locale, Model model, @RequestParam("seq") int seq) {
		logger.info("홈화면입니다.", locale);
		
		ProfileDto dto = (ProfileDto) profileService.memberHome(seq);
		model.addAttribute("dto", dto);
		
		List<BoardDto> list = profileService.memberBoard(seq);
		model.addAttribute("list", list);
		System.out.println(list);
		
		return "memberHome";
	}
	
	@RequestMapping(value = "/writeBoard.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String writeBoard(Locale locale, Model model, BoardDto dto) {
		logger.info("글쓰기", locale);
		
		boolean isS = profileService.writeBoard(new BoardDto(dto.getContent(), dto.getMember_seq(), dto.getBoard_img()));
		
		if(isS) {
			return "redirect:memberHome.do";
		} else {
			model.addAttribute("msg", "글 작성 오류입니다.");
			return "error";
		}
	}
}
