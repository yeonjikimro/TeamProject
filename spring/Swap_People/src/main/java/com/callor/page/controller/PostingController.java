package com.callor.page.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.callor.page.config.QualifierConfig;
import com.callor.page.config.QualifierConfig_post;
import com.callor.page.model.PostingVO;
import com.callor.page.service.PostingService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/posting")
public class PostingController {

	@Qualifier(QualifierConfig_post.SERVICE.POSTING) 
	private final PostingService postingService;
	
	 public PostingController(
			 PostingService postingService) {
		 this.postingService = postingService;
		 log.debug("Constructor");
	}
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String list(Model model) {
		
		List<PostingVO> postingList = postingService.selectAll();
		model.addAttribute("POSTING", postingList);
		model.addAttribute("LAYOUT", "POSTING-LIST");
		return null;
	}
	
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String posting(Model model, PostingVO VO) {
		List<PostingVO> postingVO = postingService.selectAll();
		model.addAttribute("LAYOUT", postingVO);
		return "posting"; // 돈타치
	}
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String posting(PostingVO VO) {
		postingService.insert(VO);
		return "posting";
	}

	@RequestMapping(value = "/we", method = RequestMethod.GET)
	public String we() {
		return "we";
	}

	@RequestMapping(value = "/map3", method = RequestMethod.GET)
	public String map() {
		return "map3";
	}

	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String detail() {
		return "detail";
	}
}