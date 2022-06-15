package com.callor.page.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.callor.page.config.QualifierConfig;
import com.callor.page.model.PostingVO;
import com.callor.page.model.UserVO;
import com.callor.page.service.PostingService;
import com.callor.page.service.UserService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping(value = "/user")
public class UserController {


	@Autowired
	@Qualifier(QualifierConfig.SERVICE.USER_V2)
	private UserService userService;
	
	@Autowired
	private PostingService postingService;


	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join(Model model) {
		model.addAttribute("LAYOUT", "JOIN");
		return null;
	}

	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(UserVO userVO) {

		log.debug("회원정보 : {}", userVO.toString());

		userService.join(userVO);

		return "redirect:/user/login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(String error, Model model) {
		model.addAttribute("error", error);
		model.addAttribute("LAYOUT", "LOGIN");
		return null;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(UserVO userVO, Model model, HttpSession session) {

		UserVO loginUser = userService.findById(userVO.getUsername());
		if (loginUser == null) {
			model.addAttribute("error", "USERNAME_FAIL");
			return "redirect:/user/login";
		}
		loginUser = userService.login(userVO);
		if (loginUser == null) {
			model.addAttribute("error", "PASSWORD_FAIL");
			return "redirect:/user/login";
		}
		session.setAttribute("USER", loginUser);
		return "redirect:/";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.removeAttribute("USER");
		return "redirect:/";
	}

//	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
//	public String mypage(Model model, HttpSession session) {
//		
//		return null;
//
//	}

	@ResponseBody
	@RequestMapping(value = "/idcheck/{username}", method = RequestMethod.GET)
	public String idcheck(@PathVariable("username") String username) {

		UserVO userVO = userService.findById(username);
		if (userVO == null) {
			return "OK";
		}
		return "FAIL";
	}

	@ResponseBody
	@RequestMapping(value = "/emailcheck", method = RequestMethod.GET)
	public String emailcheck(String email) {

		UserVO userVO = userService.findByEmail(email);
		if (userVO == null) {
			return "OK";
		}
		return "FAIL";
	}

	@RequestMapping(value = "/customer", method = RequestMethod.GET)
	public String customer() {
		return null;
	}
	
	@RequestMapping(value="/mypage", method=RequestMethod.GET)
	public String memberWrite( Model model, HttpSession session){
		 

		UserVO userVO = (UserVO) session.getAttribute("USER");// 
		if(userVO == null) {
			return "redirect:/user/login";
		}
		
		String username = userVO.getUsername();
		
		List<PostingVO> postList =postingService.memberWrite(username);
		model.addAttribute("POSTS",postList);

			return "user/mypage";
		}
	@RequestMapping(value="/complete", method=RequestMethod.GET)
	public String complete() {
		
		return "user/complete";
	}
	
	@RequestMapping(value="/update", method=RequestMethod.GET)
	public String update(HttpSession session, Model model) {
//		model.addAttribute("USER", userService.readUser((String)session.getAttribute("username")));
		
		return "/user/complete";
	}
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update(UserVO vo,HttpSession session) {
		
		userService.update(vo);
		session.removeAttribute("USER");
		session.setAttribute("USER", vo);
		
		return "/user/mypage";
		
	}

	}



