package com.callor.page.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.callor.page.model.NoticeVO;
import com.callor.page.model.PostingVO;
import com.callor.page.service.NoticeService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping(value = "/faqno")
public class FaqController {

	@Autowired
	protected NoticeService noticeService;

	@RequestMapping(value = "/faqnotice", method = RequestMethod.GET)
	public String faqnotice(Model model, NoticeVO VO, HttpSession session) {
		List<NoticeVO> noticeSelect = noticeService.selectAll();
		List<NoticeVO> noticeVO = noticeService.findBynotice_seq(1);

		model.addAttribute("NOTE", noticeSelect);
		model.addAttribute("NOTICE", noticeVO);

		return "faqno/faqnotice";
	}

	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public String notice(Model model) {

		List<NoticeVO> noticeSelect = noticeService.selectAll();


		model.addAttribute("NOTE", noticeSelect);

		return "faqno/notice";
	}

}
