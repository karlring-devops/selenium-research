package com.test;

import org.testng.annotations.Test;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.BeforeClass;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.AfterClass;
import org.testng.*;

public class TestClass {
	WebDriver driver;
	
	@BeforeClass
	public void setup() {
		System.setProperty("webdriver.chrome.driver","/Volumes/uga/app/devops/java_files/Drivers/chrome/chromedriver");					
		driver = new ChromeDriver();
		driver.get("https://google.com");
		driver.manage().window().maximize();
	}
	@Test
	public void testCase1() {
		System.out.println("Test Case 1");
	}
	@AfterClass
	public void tearDown() {
		driver.close();
	}

}
