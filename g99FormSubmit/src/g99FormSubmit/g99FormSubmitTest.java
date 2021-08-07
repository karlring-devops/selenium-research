package g99FormSubmit;


import org.openqa.selenium.By;		
import org.openqa.selenium.WebDriver;		
import org.openqa.selenium.chrome.ChromeDriver;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.*;	


public class g99FormSubmitTest {

	public static void main(String[] args) {
	
		// declaration and instantiation of objects/variables		
        System.setProperty("webdriver.chrome.driver","/Volumes/uga/app/devops/java_files/Drivers/chrome/chromedriver");					
        WebDriver driver = new ChromeDriver();					
        		
        String baseUrl = "http://192.168.7.2:30964/examples/servlets/servlet/RequestParamExample";					
        driver.get(baseUrl);					

        // Get the WebElement corresponding to the Email Address(TextField)		
        WebElement firstName = driver.findElement(By.name("firstname"));							

        // Get the WebElement corresponding to the Password Field		
        WebElement lastName = driver.findElement(By.name("lastname"));							

        String FName = "Roger";
        String LName = "Rabbit";
        
        firstName.sendKeys(FName); //"abcd@gmail.com");					
        lastName.sendKeys(LName);  //("abcdefghlkjl");	
        
        System.out.println("[PASS] -- Text Field Set");					
         
        // Deleting values in the text box		
        //firstName.clear();			
        //lastName.clear();			
        //System.out.println("Text Field Cleared");					

        WebElement submit = driver.findElement(By.xpath("/html/body/form/input[3]")); 
        submit.click();
        System.out.println("[PASS] -- Login Done with Click");
        
        //**************************************************//
        // Source: https://stackoverflow.com/questions/14974508/how-to-find-if-a-text-exists-on-page-using-selenium/14975662
        //**************************************************//
        
        if(driver.getPageSource().contains(FName))
        {
            System.out.println("[PASS] -- FOUND_TEXT (First Name): " + FName); //abcd@gmail.com");
        }
        else
        {
        	System.out.println("[FAIL] -- NOT_FOUND  (First Name): " + FName); //
        }

        
        if(driver.getPageSource().contains(LName))
        {
            System.out.println("[PASS] -- FOUND_TEXT (Last Name ): " + LName); //abcd@gmail.com");
        }
        else
        {
        	System.out.println("[FAIL] -- NOT_FOUND  (Last Name ): " + LName); //
        }
        //**************************************************// 
		driver.close();		
        	
	}

}


	
