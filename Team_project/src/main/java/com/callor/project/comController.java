package com.callor.project;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping(value = "/com")
public class comController {

		@RequestMapping(value = "/community", method=RequestMethod.GET)
		public String community() {
			return "/com/community";
		}

		@RequestMapping(value = "/upload", method=RequestMethod.GET)
		public String upload() {
			return "/com/upload";
		}
	}


