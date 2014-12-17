package com.softserve.server;

import org.eclipse.jetty.server.Server;

public class WebDriverAppServer extends Thread{
	
	private Server server = AppServer.getInstance();
	private static final WebDriverAppServer INSTANCE = new WebDriverAppServer();
	
	
	@Override
	public void run() {
		try {
			server.start();
			server.join();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void stopServer() throws Exception{
		if(!(server.isStopped() || server.isStopping()) && server.isStarted()){
			server.stop();
		}
	}
	
	public boolean isStartable(){
		return !(server.isStarted() || server.isStarting() || server.isRunning());
	}
	
	private WebDriverAppServer(){}
	
	public static WebDriverAppServer getInstance(){
		return INSTANCE;
	}

}
