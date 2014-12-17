package com.softserve.webdriver;

import java.io.IOException;

import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeDriverService;

import com.softserve.server.WebDriverAppServer;

public class SimpleTestCase {
	
	private static WebDriverAppServer server;
	private static ChromeDriverService service;
	private static WebDriver driver;
	static{
		System.setProperty("webdriver.chrome.driver", "webdriver/com/softserve/webdriver/resources/chromedriver.exe");
	}

	@BeforeClass
	public static void setup() throws IOException{
		server = WebDriverAppServer.getInstance();
		if(server.isStartable()){
			server.start();
			service = ChromeDriverService.createDefaultService();
			service.start();
			driver = new ChromeDriver(service);
			driver.manage().window().maximize();
		}
	}
	
	@AfterClass
	public static void tearDown() throws Exception{
		driver.close();
		service.stop();
		server.stopServer();
	}
	
	
	@Before
	public void login(){
		System.out.println("login...");
	}
	
	@Test
	public void simpleTest() throws IOException{
		driver.get("http://localhost:8080/");
		try {
			Thread.sleep(2000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void simpleTest2() throws IOException{
		driver.get("http://localhost:8080/login");
		try {
			Thread.sleep(2000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}
	
}
