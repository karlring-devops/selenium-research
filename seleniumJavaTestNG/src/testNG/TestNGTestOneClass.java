package testNG;

import org.testng.annotations.Test;
import org.testng.annotations.BeforeMethod;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.Assert;
import org.testng.annotations.AfterMethod;

public class TestNGTestOneClass {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		WebDriver driver;
		
	  	//Setting up the chrome driver exe, the second argument is the location where you have kept the driver in your system
	  	  //System.setProperty("webdriver.chrome.driver", "E:\\Softwares\\chromedriver.exe");
	      System.setProperty("webdriver.chrome.driver","/Volumes/uga/app/devops/java_files/Drivers/chrome/chromedriver");
	  	//Setting the driver to chrome driver
	  	  driver = new ChromeDriver();
	  	  String url = "https://www.google.com";
	  	  driver.get(url);
	  	  //Capturing the title and validating if expected is equal to actual
	  	  String expectedTitle = "Google";
	  	  String actualTitle = driver.getTitle();
	  	  Assert.assertEquals(actualTitle, expectedTitle);
		
	  	  System.out.println("Closing the browser session");
	  	  driver.quit();
	}

}


