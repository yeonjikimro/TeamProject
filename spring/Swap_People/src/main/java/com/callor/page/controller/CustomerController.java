package com.callor.page.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Slf4j

@Controller
public class CustomerController {

	@RequestMapping(value="/custom", method=RequestMethod.GET)
	public String custom() {
		return "custom";
	}
	
	@RequestMapping(value="/detail", method=RequestMethod.GET)
	public String detail() {
		return "detail";
	}
	
	@RequestMapping(value="/MyPage_ing", method=RequestMethod.GET)
	public String mypage_ing() {
		return "MyPage_ing";
	}
	
	@RequestMapping(value="/MyPage", method=RequestMethod.GET)
	public String mypage() {
		return "MyPage";
	}

	
	
}