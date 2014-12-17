package com.softserve.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


//import com.softserve.util.ModelAndView;
import com.softserve.util.ModelMapKeys;
import com.softserve.util.Page;
import com.softserve.util.URLConstants;

@Controller
public class MainController {
	
	@RequestMapping({URLConstants.MAIN, URLConstants.ACTIONS, URLConstants.CONTACTS, URLConstants.DELIVERY})
	public ModelAndView index(HttpServletRequest request) {
//		ModelAndView modelAndView = new ModelAndView(Page.MAIN);
		ModelAndView modelAndView = new ModelAndView(Page.MAIN.getTemplate());
		modelAndView.getModel().put(ModelMapKeys.PAGE,  Page.fromUrl(request.getRequestURI()));
		modelAndView.getModel().put(ModelMapKeys.PAGES, Page.values());
		return modelAndView;
	}
	
	@RequestMapping(value = URLConstants.ABOUT, produces = MediaType.TEXT_HTML_VALUE)
	public ModelAndView about() {
		ModelAndView modelAndView = new ModelAndView(Page.ABOUT.getTemplate());
		modelAndView.getModel().put(ModelMapKeys.PAGE, Page.ABOUT);
		modelAndView.getModel().put(ModelMapKeys.PAGES, Page.values());
		return modelAndView;
	}
	
}
