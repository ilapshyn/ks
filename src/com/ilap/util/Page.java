package com.ilap.util;

public enum Page implements BasePage {
	LOGIN(		PageTemplate.LOGIN, 	URLConstants.LOGIN, 	"Login"),
	MAIN(		PageTemplate.MAIN, 		URLConstants.MAIN, 		"Home"),
	ADMIN(		PageTemplate.ADMIN, 	URLConstants.ADMIN, 	"Admin");
	
	private Page(String template, String url, String name) {
		this.template = template;
		this.url = url;
		this.name = name;
	}

	private final String template;
	private final String url;
	private final String name;
	
	public String getTemplate() {
		return template;
	}

	@Override
	public String getName() {
		return name;
	}

	@Override
	public String getUrl() {
		return url;
	}
	
	public static Page fromUrl(String url) {
		Page returnValue = Page.MAIN;
		for(Page page : Page.values()) {
			System.out.println(url);
			if(page.getUrl().equals(url)){
				returnValue = page;
				break;
			}
		}
		return returnValue;
	}
	
}