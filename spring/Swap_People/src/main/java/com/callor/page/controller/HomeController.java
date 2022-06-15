package com.callor.page.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.callor.page.model.CategoryVO;
import com.callor.page.service.CategoryService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class HomeController {

	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String home(Model model) {
		List<CategoryVO> category = categoryService.selectAll();
		model.addAttribute("CATS",category);
		return "home";
	}
	
}
