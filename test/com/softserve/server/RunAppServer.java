package com.softserve.server;

import org.eclipse.jetty.server.Server;


public class RunAppServer {

	public static void main(String[] args) throws Exception {
		
		Server server = AppServer.getInstance();
		
		try {
			server.start();
			server.join();
		}
		catch (Exception e) {
			if(!server.isStopped()){
				server.stop();
			}
			e.printStackTrace();
			System.exit(0);
		}
		
	}
	
}
