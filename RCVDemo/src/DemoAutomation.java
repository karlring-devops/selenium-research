//Source: https://www.youtube.com/watch?v=FVwSjBXb20o
import org.openqa.selenium.chrome.ChromeDriver;

public class DemoAutomation {

	public static void main(String[] args) {
		
		System.setProperty("webdriver.chrome.driver","/Volumes/uga/app/devops/java_files/Drivers/chrome/chromedriver"); 
		
		ChromeDriver driver = new ChromeDriver();
		//driver.get("http://www.google.com");
		driver.get("http://192.168.7.2:30964/examples/servlets/servlet/RequestInfoExample");

	}

}
