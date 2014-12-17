package com.softserve.util;

public final class ModelAndView extends org.springframework.web.servlet.ModelAndView {
	public ModelAndView(Page page) {
		super(page.getTemplate());
		this.getModelMap().put(ModelMapKeys.PAGE, page);
	}
}
