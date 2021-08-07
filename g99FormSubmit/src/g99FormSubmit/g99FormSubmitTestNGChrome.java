package g99FormSubmit;

import org.testng.annotations.Test;
import org.testng.annotations.BeforeMethod;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.annotations.AfterMethod;

public class g99FormSubmitTestNGChrome {
  @Test
  public void main() {
      //System.out.println("[PASS] -- Text Field Set");					
       
      // Deleting values in the text box		
      //firstName.clear();			
      //lastName.clear();			
      //System.out.println("Text Field Cleared");					

	  System.out.println("[INFO] Load WebDriver...");
	  // declaration and instantiation of objects/variables		
	  System.setProperty("webdriver.chrome.driver","/Volumes/uga/app/devops/java_files/Drivers/chrome/chromedriver");					
	  WebDriver driver = new ChromeDriver();					

	  System.out.println("[INFO] Get BaseURL");
      String baseUrl = "http://192.168.7.2:30964/examples/servlets/servlet/RequestParamExample";					
      driver.get(baseUrl);	
	  System.out.println("[INFO] " + baseUrl);
	  
      // Get the WebElement corresponding to the Email Address(TextField)		
	  System.out.println("[INFO] findElement: firstName");
	  WebElement firstName = driver.findElement(By.name("firstname"));				

      // Get the WebElement corresponding to the Password Field		
	  System.out.println("[INFO] findElement: lastName");
      WebElement lastName = driver.findElement(By.name("lastname"));
      
      // Set the VARS text to key into form
      System.out.println("[INFO] Set Key Data ...");
      String FName = "Roger";
      String LName = "Rabbit";
      
      // Send Field Keys
      System.out.println("[INFO] Send Key Data...");
      firstName.sendKeys(FName); //"abcd@gmail.com");					
      lastName.sendKeys(LName);  //("abcdefghlkjl");
      
      // Submit form
      System.out.println("[INFO] Submit Form - Click Button");
      WebElement submit = driver.findElement(By.xpath("/html/body/form/input[3]")); 
      submit.click();
      
      
      //**************************************************//
      // Source: https://stackoverflow.com/questions/14974508/how-to-find-if-a-text-exists-on-page-using-selenium/14975662
      //**************************************************//
      
      // Test sendKeys value received as complete
      System.out.println("[TEST] Field: First Name = " + FName);
      if(driver.getPageSource().contains(FName))
      {
          System.out.println("[PASS] -- FOUND_TEXT (First Name): " + FName); //abcd@gmail.com");
      }
      else
      {
      	System.out.println("[FAIL] -- NOT_FOUND  (First Name): " + FName); //
      }

      System.out.println("[TEST] Field: Last Name = " + LName);
      if(driver.getPageSource().contains(LName))
      {
          System.out.println("[PASS] -- FOUND_TEXT (Last Name ): " + LName); //abcd@gmail.com");
      }
      else
      {
      	System.out.println("[FAIL] -- NOT_FOUND  (Last Name ): " + LName); //
      }
      //**************************************************// 
      System.out.println("[INFO] Close Browser ...");
      driver.close();			  
	  
  }
  
}
