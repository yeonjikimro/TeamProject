package com.callor.page.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
<<<<<<< HEAD
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
=======
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
>>>>>>> 4243f35aad7aaca97b3050d6e53234b269664be7

import com.callor.page.config.QualifierConfig;
import com.callor.page.model.CategoryVO;
import com.callor.page.service.CategoryService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class HomeController {

<<<<<<< HEAD
	@Autowired
	@Qualifier(QualifierConfig.SERVICE.Category)
	private CategoryService categoryService;
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String home(Model model) {
		List<CategoryVO> category = categoryService.selectAll();
		model.addAttribute("CATS",category);
		return "home";
	}
	@ResponseBody
	@RequestMapping(value="/{cat_code}/getter",method=RequestMethod.GET)
	public String home(@PathVariable("cat_code") String cat_code, Model model) {
		
		CategoryVO category = (CategoryVO) categoryService.findByCode(cat_code);
		model.addAttribute(category);
		return "home";
	}
=======
//	@Autowired
//	@Qualifier(QualifierConfig.SERVICE.Category)
//	private CategoryService categoryService;
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String home(Model model) {
//		List<CategoryVO> category = categoryService.selectAll();
//		model.addAttribute("CATS",category);
		return "home";
	}
	
>>>>>>> 4243f35aad7aaca97b3050d6e53234b269664be7

}
