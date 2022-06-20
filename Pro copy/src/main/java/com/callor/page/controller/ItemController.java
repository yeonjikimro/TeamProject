package com.callor.page.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.imgscalr.Scalr;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.callor.page.config.QualifierConfig;
import com.callor.page.model.PostingFileVO;
import com.callor.page.model.PostingVO;
import com.callor.page.model.UserVO;
import com.callor.page.service.PostingFileService;
import com.callor.page.service.PostingService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping(value = "/item")
public class ItemController {

	@Autowired
	protected ServletContext context;

	@Qualifier(QualifierConfig.SERVICE.POSTING)
	private final PostingService postingService;

	@Qualifier(QualifierConfig.SERVICE.POSTINGFILE)
	private final PostingFileService postingFileService;
	
//	
//	@Autowired
//	ReplyService replyService;

	public ItemController(PostingService postingService, PostingFileService postingFileService) {
		this.postingService = postingService;
		this.postingFileService = postingFileService;

		log.debug("Constructor");
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) {
		
		List<PostingVO> postingList = postingService.selectAll();
		model.addAttribute("POSTING", postingList);
		model.addAttribute("LAYOUT", "POSTING-LIST");
		return null;
	}

	@RequestMapping(value = "/posting", method = RequestMethod.GET)
	public String posting(Model model, PostingVO VO, String catString) {

		List<PostingVO> postingVO = postingService.selectAll();
		List<PostingVO> catCodeList = postingService.getCateListAll();

		model.addAttribute("LAYOUT", postingVO);
		model.addAttribute("catCodeList", catCodeList);

		return "item/posting";
	}
	
	
	
	
//	@RequestMapping(value="/posting", method=RequestMethod.GET)
//	public String posting1() {
//		return "item/posting";
//	}

	
	
	
	@RequestMapping(value = "/insertPosting", method = RequestMethod.POST)
	public String posting(PostingVO VO, PostingFileVO fVO, HttpSession session) {
		int postingCnt = postingService.postingCnt(VO);
		VO.setPosting_seq(postingCnt);
		
		UserVO uservo = (UserVO) session.getAttribute("USER");
		if(uservo == null) {
			return "redirect:/user/login";
		}
		
		VO.setUsername(uservo.getName());
		
		postingService.insert(VO);
		return "redirect:detail?posting_seq=" + VO.getPosting_seq();
	}

	@RequestMapping(value = "/insertPosting", method = RequestMethod.GET)
	public String posting() {
		return "item/detail";
	}

	@RequestMapping(value = "/we", method = RequestMethod.GET)
	public String we() {
		return "item/we";
	}

	@RequestMapping(value = "/map3", method = RequestMethod.GET)
	public String map() {
		return "item/map3";
	}
	@RequestMapping(value = "/detail", method = RequestMethod.POST)
	public String detail() {
		return "item/detail";
	}

	@RequestMapping(value = "/detail", method=RequestMethod.GET)
	public String detail(String posting_seq, Model model) {
		
		Long p_seq = Long.valueOf(posting_seq);
		
		PostingVO posting = postingService.findById(p_seq);
		PostingVO catCode = postingService.getCatCode(posting.getCat_code());
		
		posting.setCat_name(catCode.getCat_name());
		model.addAttribute("posting", posting);
		
//		List<ReplyVO> replyList = replyService.readReply(replyVO.getPo_num());
//		model.addAttribute("replyList", replyList);

		return "item/detail";
	}

	private void makeThumbnail2(String filePath, String fileName) throws Exception {
		String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
		// 저장된 원본파일로부터 BufferedImage 객체를 생성합니다.
		BufferedImage srcImg = ImageIO.read(new File(filePath + fileName));
		// 썸네일의 너비와 높이 입니다.

		int dw = 1200, dh = 800;
		if (srcImg.getWidth() > srcImg.getHeight()) {

			int test = srcImg.getWidth() / srcImg.getHeight();

			dw = dh * test;

		}
		if (srcImg.getHeight() > srcImg.getWidth()) {
			dw = 600;

			int test = srcImg.getHeight() / srcImg.getWidth();

			dh = dw * test;
		}

		 BufferedImage destImg = Scalr.resize(srcImg, dw, dh);

		String thumbName = filePath + "Fit_" + fileName;

		File thumbFile = new File(thumbName);

		 ImageIO.write(destImg, ext, thumbFile);
	}
	
	
	

//@RequestMapping(value="/detail", method=RequestMethod.GET)
//public String read(ReplyVO replyVO, Model model) {
//	
//
//	
//
//	List<ReplyVO> replyList = replyService.readReply(replyVO.getPo_num());
//	model.addAttribute("replyList", replyList);
//	
//	return "item/detail";
//	
//	}

//@RequestMapping(value="/detail", method=RequestMethod.POST)
//public String replyWrite(ReplyVO vo, Model model) {
//	
//	replyService.writeReply(vo);
//	
//	model.addAttribute("PONUM", vo.getPo_num());
//	model.addAttribute("RENUM", vo.getRenum());
//	model.addAttribute("CONTENT", vo.getContent());
//	model.addAttribute("USER", vo.getUsername());
//	
//	return "redirect:/item/detail";
//}
	
	@RequestMapping(value = "/detail2", method = RequestMethod.GET)
	public String detail2() {

		return "item/detail2";

	}




}