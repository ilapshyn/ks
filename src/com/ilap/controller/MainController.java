package com.ilap.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ilap.util.Page;
import com.ilap.util.URLConstants;

@Controller
public class MainController {
	
	@RequestMapping(URLConstants.MAIN)
	public ModelAndView index() {
		ModelAndView modelAndView = new ModelAndView(Page.MAIN.getTemplate());
		return modelAndView;
	}
	
	@RequestMapping(URLConstants.ADMIN)
	public ModelAndView admin() {
		return new ModelAndView(Page.ADMIN.getTemplate());
	}
	
	
}
