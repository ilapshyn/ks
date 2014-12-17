package com.softserve.server;

import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.util.resource.ResourceCollection;
import org.eclipse.jetty.webapp.WebAppContext;

public class AppServer extends Server{
	
	private static AppServer INSTANCE;
	
	private AppServer(int port) {
		super(port);
		WebAppContext context = new WebAppContext();
		context.setContextPath("/");
		context.setBaseResource(new ResourceCollection(new String[] { "./WebContent"}));
		context.setDescriptor("WEB-INF/web.xml");
		context.setParentLoaderPriority(true);
		this.setHandler(context);
	}
	
	public static AppServer getInstance(){
		return getInstance(8080);
	}
	
	public static AppServer getInstance(int port){
		if(INSTANCE == null){
			INSTANCE =  new AppServer(port);
		}
		return INSTANCE;
	}
	
}
