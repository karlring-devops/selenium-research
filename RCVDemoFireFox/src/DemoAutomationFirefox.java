import org.openqa.selenium.firefox.FirefoxDriver;

public class DemoAutomationFirefox {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		System.setProperty("webdriver.gecko.driver","/Volumes/uga/app/devops/java_files/Drivers/firefox/geckodriver");
		FirefoxDriver driver = new FirefoxDriver();
		//driver.get("http://www.google.com");
		driver.get("http://192.168.7.2:30964/examples/servlets/servlet/RequestInfoExample");
		driver.manage().window().maximize();
		
	}

}
