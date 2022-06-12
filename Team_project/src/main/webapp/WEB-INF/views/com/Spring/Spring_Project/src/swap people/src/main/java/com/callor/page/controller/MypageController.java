package com.callor.page.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MypageController {
	
	
	@RequestMapping(value="/customer", method=RequestMethod.GET)
	public String customer() {
		
		return null;
	}
	
	
	@RequestMapping(value="/detail", method=RequestMethod.GET)
	public String detail() {
		
		return null;
	}
	
	
	@RequestMapping(value="/mypage", method=RequestMethod.GET)
	public String mypage() {
		
		return null;
	}
	
	
	@RequestMapping(value="/mypage_ing", method=RequestMethod.GET)
	public String mypage_ing() {
		return null;
	}

}


	
