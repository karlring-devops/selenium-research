
# //***************************************************************//
# selenium -> jenkins -> ci/cd intergration
# //***************************************************************//

Edureka: Selenium Jenkins Integration: https://www.youtube.com/watch?v=sZ6RL0ctWjU
Automation Testing Insider(selenium): https://www.youtube.com/watch?v=UoMAEIVAfAM&list=PLsGOlyTzNH6f_pZuGZDFjI5IeCWGQqiwF
Reference:  https://www.lambdatest.com/blog/jenkins-integration-with-selenium-webdriver/

https://www.youtube.com/watch?v=WzuJANOPLyQ
https://www.youtube.com/watch?v=sZ6RL0ctWjU
https://www.youtube.com/watch?v=b4GEjUjWFB4
https://www.youtube.com/watch?v=FVwSjBXb20o
https://www.youtube.com/watch?v=4gHSwvs0HiA&list=PLuAoMvvRllpSlX-RmzvABaB-ct1lq75Br&index=7&ab_channel=SoftwareTestingMentor
https://www.youtube.com/watch?v=X26SzCrZgTU&list=PLsGOlyTzNH6f_pZuGZDFjI5IeCWGQqiwF&index=40
https://www.youtube.com/watch?v=lPxrPqSyCo8

Mysql/WP 		: https://www.youtube.com/watch?v=tV-oDUK5EiQ
Jenkins + Git   : https://www.youtube.com/watch?v=bGqS0f4Utn4
OrangeHRM O/S   : https://opensource-demo.orangehrmlive.com/index.php/time/viewEmployeeTimesheet

Jenkins + Selenium(Headless):

https://digital.ai/catalyst-blog/how-to-launch-jenkins-selenium-tests-using-the-pipeline
https://www.lambdatest.com/blog/jenkins-integration-with-selenium-webdriver/
https://blog.avenuecode.com/how-to-build-headless-browser-testing-and-integrate-with-jenkins
https://www.froglogic.com/blog/tip-of-the-week/headless-execution-of-gui-tests-with-jenkins/
https://elementalselenium.com/tips/38-headless

Jenkins Pipeline - Build and Deploy a war file on Tomcat Server | Pipeline script for CI/CD: 

https://www.youtube.com/watch?v=G_UCeeb5EPc

CLUSTER LOGINS:

KUBERNETES 	:	https://192.168.7.2:31850/#/login
JENKINS 	:	http://192.168.7.2:30000/backup/launchrestore
TOMCAT 		:	http://192.168.7.2:30964/

JAVA VERSIONS:

# /* GIT_UPLOADED **/
# # //*********************************//
# jrunit(){
# 	/usr/libexec/java_home -V
# 	export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.11.jdk/Contents/Home
# 	java -jar jenkins.war 
# }
# # //*********************************//

java -cp /Volumes/uga/app/devops/eclipse-workspace/g99FormSubmit/bin org.testng.TestNG testing.xml

cp /Volumes/uga/app/devops/java_files/selenium/*.jar .
cp /Volumes/uga/app/devops/java_files/selenium/selenium-java-3.141.59/*.jar .
cp /Volumes/uga/app/devops/java_files/selenium/selenium-java-3.141.59/libs/*.jar .

cp /Volumes/uga/app/devops/java_files/Drivers/chrome/chromedriver .
cp /Volumes/uga/app/devops/java_files/Drivers/firefox/geckodriver .

wget https://repo1.maven.org/maven2/org/testng/testng/5.14.2/testng-5.14.2.jar
wget https://repo1.maven.org/maven2/org/junit/jupiter/junit-jupiter-api/5.7.2/junit-jupiter-api-5.7.2.jar
wget https://repo1.maven.org/maven2/org/beanshell/bsh/2.0b5/bsh-2.0b5.jar
wget https://repo1.maven.org/maven2/com/beust/jcommander/1.81/jcommander-1.81.jar

/Volumes/uga/app/devops/testNGTomcatFormTestChrome_lib

export PROJECT_LOCATION=/Volumes/uga/app/devops/eclipse-workspace/TestNGJenkinsDemo
cd ${PROJECT_LOCATION}
export CLASSPATH="${PROJECT_LOCATION}/bin:${PROJECT_LOCATION}/lib"
java org.testng.TestNG ${PROJECT_LOCATION}/testng.xml

java -cp "${CLASSPATH}" org.testng.TestNG.class ${PROJECT_LOCATION}/testng.xml

# //*********************************//
POM.xml

<project
xmlns="http://maven.apache.org/POM/4.0.0" 

xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">

  <modelVersion>4.0.0</modelVersion>

  <groupId>demoProject</groupId>

  <artifactId>demoProject</artifactId>
  <version>0.0.1-SNAPSHOT</version>
  <build>
	<sourceDirectory>src</sourceDirectory>
	<plugins>
	  	<plugin>
	    	<artifactId>maven-compiler-plugin</artifactId>
	    	<version>3.8.0</version>
	    	<configuration>
	      	<source>1.8</source>
	      	<target>1.8</target>
	    	</configuration>
	  	</plugin>
	</plugins>
  </build>
  <dependencies>
   	<dependency>
          <groupId>org.seleniumhq.selenium</groupId>
          <artifactId>selenium-java</artifactId>
          <version>3.141.59</version>
	</dependency>
	<dependency>
	    <groupId>org.testng</groupId>
	    <artifactId>testng</artifactId>
	    <version>7.3.0</version>
	    <scope>test</scope>
	</dependency>
	<dependency>
	  <groupId>junit</groupId>
	  <artifactId>junit</artifactId>
	  <version>4.11</version>
	  <scope>test</scope>
	</dependency>
  </dependencies>
</project>
---

package WebDriverProject;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class LoginClass {
	
	WebDriver driver;
		
	@BeforeTest
             public void setup(){
	System.setProperty("WebDriver.gecko.driver","/Users/admin/.jenkins/jobs/g99FormSubmitTestNGChrome/workspace/src/test/resources/geckodriver");
		
      	driver = new FirefoxDriver();                    //initialise the WebDriver
	}

            @Test
                         public void loginTest(){	
     	driver.get("https://opensource-demo.orangehrmlive.com/"); //define the url
	String pageTitle = driver.getTitle();		//get the title of the webpage
	System.out.println("The title of this page is ===> " +pageTitle);
	Assert.assertEquals("OrangeHRM", pageTitle);	//verify the title of the webpage
		
		driver.findElement(By.id("txtUsername")).clear();//clear the input field before entering any value
		driver.findElement(By.id("txtUsername")).sendKeys("Admin");//enter the value of username
		driver.findElement(By.id("txtPassword")).clear();
		driver.findElement(By.id("txtPassword")).sendKeys("admin123");//enter the value of password
		driver.findElement(By.id("btnLogin")).click();		//click Login button
		System.out.println("Successfully logged in");
}

@AfterTest
             public void teardown(){
		driver.quit();
}
		
}
---
% cat TestNG.xml \

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE suite SYSTEM "http://testng.org/testng-1.0.dtd">
<suite name="TestSuite">
<test name="LoginTest">
 <groups>
      <run>
        <include name="DemoTest"/>
      </run>
    </groups>
<classes>
<class name="WebDriverProject.LoginClass">
</class>
</classes>
</test>
</suite>
admin@admindeiMac resources % 



#/**GIT_UPLOADED***/
# # //***************************************************************//
# # MAVEN INSTALL
# # //***************************************************************//

# MVN_ROOT=/Volumes/uga/utl/devops/maven
# MVN_VERSION="3.8.1"

# mkdir -p ${MVN_ROOT}
# cd ${MVN_ROOT}

# wget https://mirror-hk.koddos.net/apache/maven/maven-3/${MVN_VERSION}/binaries/apache-maven-${MVN_VERSION}-bin.zip
# unzip -qq apache-maven-${MVN_VERSION}-bin.zip

# cd apache-maven-${MVN_VERSION}
# MVN_HOME=$(pwd)
# echo "export MVN_HOME=${MVN_HOME}" >> ~/.zprofile
# echo 'export PATH=${PATH}:${MVN_HOME}:${MVN_HOME}/bin' >> ~/.zprofile 
# source ~/.zprofile

# mvn --version


# //***************************************************************//

# //***************************************************************//
# WEBRIVER & SELENIUM SETUP - TEST BROWSER OPEN (*** LOCAL HOST ***)
# //***************************************************************//
#  Source: https://www.youtube.com/watch?v=FVwSjBXb20o
#  Playlist: https://www.youtube.com/watch?v=EwbTx9xvR3U&list=PLuAoMvvRllpSlX-RmzvABaB-ct1lq75Br&index=6
#      		 https://www.youtube.com/watch?v=UoMAEIVAfAM&list=PLsGOlyTzNH6f_pZuGZDFjI5IeCWGQqiwF
#  WEBDRIVERS: 
#
#  CHROME 	: https://chromedriver.storage.googleapis.com/92.0.4515.43/chromedriver_mac64.zip
#  FIREFOX  : https://github.com/mozilla/geckodriver/releases/download/v0.29.1/geckodriver-v0.29.1-macos.tar.gz
#  SAFARI	: DEFAULT: /usr/bin/safaridriver ENABLE:  safaridriver --enable (installed & disabled by default)
# //***************************************************************//

# Steps:

1. Create Java Project [ File -> New -> Java Project ]
2. Project name
3. JRE -> Use a project specific JRE:  AdoptOpenJDK 16 (dropdown list)
4. Next
5. "Create module-info.java file" -> UN TICK
6. Right Click Properties (On PRoject)
7. Build Path -> Configure Build Path
8. TAB -> Libraries
9. Click on CLASSPATH
10. ADD EXTERNAL JARS... select selenium-SERVER.jar
11. ADD New Class
	Name: xyclass etc
	TICK: Public static void main
	FINISH

12. Add code below
13. PLAY (gets error from OS "Malicious app")
14. macOS -> Settings -> Security & Privacy

	geckodriver was blocked .... -> ALLOW ANYWAY

15. PLAY (Pop-Up: Save and Launch -> OK)
16. macOS [ERROR] -> ""geckodriver” can’t be opened because Apple cannot check it for malicious software."
          [CLICK] -> Open

# //---Firefox -------------//
import org.openqa.selenium.firefox.FirefoxDriver;

public class DemoAutomationFirefox {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		System.setProperty("webdriver.gecko.driver","/Volumes/uga/app/devops/java_files/Drivers/firefox/geckodriver");
		FirefoxDriver driver = new FirefoxDriver();
		//driver.get("http://www.google.com");
		driver.get("http://192.168.7.2:30964/examples/servlets/servlet/RequestInfoExample");
		driver.manage().window().maximize();
		driver.quit();
	}
}

# //---Chrome -------------//
import org.openqa.selenium.chrome.ChromeDriver;

public class DemoAutomation {

	public static void main(String[] args) {
		
		System.setProperty("webdriver.chrome.driver","/Volumes/uga/app/devops/java_files/Drivers/chrome/chromedriver"); 
		
		ChromeDriver driver = new ChromeDriver();
		//driver.get("http://www.google.com");
		driver.get("http://192.168.7.2:30964/examples/servlets/servlet/RequestInfoExample");
		driver.manage().window().maximize();
		driver.quit();
	}

}

# //***************************************************************//

# //***************************************************************//
#  SELENIUM - FORM SUBMISSION - SIMPLE
# //***************************************************************//
# Source: https://www.guru99.com/accessing-forms-in-webdriver.html
# Source: https://www.lambdatest.com/blog/how-to-get-text-of-an-element-in-selenium/

# //--- TOMCAT GET PARAMETERS TEST -- WORKS !!! -------
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

TESTNG INSTALL ECLIPSE: https://www.guru99.com/install-testng-in-eclipse.html

Error occurred during initialization of boot layer
java.lang.module.FindException: Unable to derive module descriptor for /Applications/Eclipse.app/Contents/Eclipse/plugins/com.beust.jcommander_1.78.0.jar
Caused by: java.lang.IllegalArgumentException: com.beust.jcommander.1.78.0: Invalid module name: '1' is not a Java identifier


Source: https://isuruuy.medium.com/learn-maven-testng-and-selenium-3b4952cb4479
java -cp /Volumes/uga/app/devops/eclipse-workspace/g99FormSubmit/bin;
org.testng.TestNG g99FormSubmit.xml

Install via cli: jenkins-plugin-cli --plugins pipeline-maven:3.10.0
wget install https://updates.jenkins.io/download/plugins/pipeline-maven/3.10.0/pipeline-maven.hpi
# //***************************************************************//


import org.openqa.selenium.By;		
import org.openqa.selenium.WebDriver;		
import org.openqa.selenium.chrome.ChromeDriver;		
import org.openqa.selenium.*;		

public class Form {				
    public static void main(String[] args) {									
    		
    	// declaration and instantiation of objects/variables		
        System.setProperty("webdriver.chrome.driver","/Volumes/uga/app/devops/java_files/Drivers/chrome/chromedriver");					
        WebDriver driver = new ChromeDriver();					
        		
        String baseUrl = "http://demo.guru99.com/test/login.html";					
        driver.get(baseUrl);					

        // Get the WebElement corresponding to the Email Address(TextField)		
        WebElement email = driver.findElement(By.id("email"));							

        // Get the WebElement corresponding to the Password Field		
        WebElement password = driver.findElement(By.name("passwd"));							

        email.sendKeys("abcd@gmail.com");					
        password.sendKeys("abcdefghlkjl");					
        System.out.println("Text Field Set");					
         
        // Deleting values in the text box		
        email.clear();			
        password.clear();			
        System.out.println("Text Field Cleared");					

        // Find the submit button		
        WebElement login = driver.findElement(By.id("SubmitLogin"));							
                    		
        // Using click method to submit form		
        email.sendKeys("abcd@gmail.com");					
        password.sendKeys("abcdefghlkjl");					
        login.click();			
        System.out.println("Login Done with Click");					
        		
        //using submit method to submit the form. Submit used on password field		
        driver.get(baseUrl);					
        driver.findElement(By.id("email")).sendKeys("abcd@gmail.com");							
        driver.findElement(By.name("passwd")).sendKeys("abcdefghlkjl");							
        driver.findElement(By.id("SubmitLogin")).submit();					
        System.out.println("Login Done with Submit");					
         
		//driver.close();		
        		
    }		
}

http://192.168.7.2:30964/examples/servlets/servlet/RequestParamExample

name="firstname"
name="lastname"


<!--
 Licensed to the Apache Software Foundation (ASF) under one or more
  contributor license agreements.  See the NOTICE file distributed with
  this work for additional information regarding copyright ownership.
  The ASF licenses this file to You under the Apache License, Version 2.0
  (the "License"); you may not use this file except in compliance with
  the License.  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
-->
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#FFFFFF">
<p><font color="#0000FF"><a href="servlet/RequestParamExample"><img src="images/execute.gif" align="right" border="0"></a><a href="index.html"><img src="images/return.gif" width="24" height="24" align="right" border="0"></a></font></p>
<h3>Source Code for Request Parameter Example<font color="#0000FF"><br>
  </font> </h3>
<font color="#0000FF"></font>
<pre><font color="#0000FF">import</font> java.io.*;
<font color="#0000FF">import</font> java.util.*;
<font color="#0000FF">import</font> javax.servlet.*;
<font color="#0000FF">import</font> javax.servlet.http.*;

<font color="#0000FF">public class</font> RequestParamExample <font color="#0000FF">extends</font> HttpServlet {

    <font color="#0000FF">public void</font> doGet(HttpServletRequest request, HttpServletResponse response)
    <font color="#0000FF">throws</font> IOException, ServletException
    {
        response.setContentType(&quot;<font color="#009900">text/html</font>&quot;);
        PrintWriter out = response.getWriter();
        out.println(&quot;<font color="#009900">&lt;html&gt;</font>&quot;);
        out.println(&quot;<font color="#009900">&lt;head&gt;</font>&quot;);
        out.println(&quot;<font color="#009900">&lt;title&gt;Request Parameters Example&lt;/title&gt;</font>&quot;);
        out.println(&quot;<font color="#009900">&lt;/head&gt;</font>&quot;);
        out.println(&quot;<font color="#009900">&lt;body&gt;</font>&quot;);
        out.println(&quot;<font color="#009900">&lt;h3&gt;Request Parameters Example&lt;/h3&gt;</font>&quot;);
        out.println(&quot;<font color="#009900">Parameters in this request:&lt;br&gt;</font>&quot;);
        if (firstName != null || lastName != null) {
            out.println(&quot;<font color="#009900">First Name:</font>&quot;);
            out.println(&quot;<font color="#009900"> = </font>&quot; + HTMLFilter.filter(firstName) + &quot;<font color="#009900">&lt;br&gt;</font>&quot;);
            out.println(&quot;<font color="#009900">Last Name:</font>&quot;);
            out.println(&quot;<font color="#009900"> = </font>&quot; + HTMLFilter.filter(lastName));
        } else {
            out.println(&quot;<font color="#009900">No Parameters, Please enter some</font>&quot;);
        }
        out.println(&quot;<font color="#009900">&lt;P&gt;</font>&quot;);
        out.print(&quot;<font color="#009900">&lt;form action=\"</font>&quot;);
        out.print(&quot;<font color="#009900">RequestParamExample\" </font>&quot;);
        out.println(&quot;<font color="#009900">method=POST&gt;</font>&quot;);
        out.println(&quot;<font color="#009900">First Name:</font>&quot;);
        out.println(&quot;<font color="#009900">&lt;input type=text size=20 name=firstname&gt;</font>&quot;);
        out.println(&quot;<font color="#009900">&lt;br&gt;</font>&quot;);
        out.println(&quot;<font color="#009900">Last Name:</font>&quot;);
        out.println(&quot;<font color="#009900">&lt;input type=text size=20 name=lastname&gt;</font>&quot;);
        out.println(&quot;<font color="#009900">&lt;br&gt;</font>&quot;);
        out.println(&quot;<font color="#009900">&lt;input type=submit name=submitdetails&gt;</font>&quot;);
        out.println(&quot;<font color="#009900">&lt;/form&gt;</font>&quot;);
        out.println(&quot;<font color="#009900">&lt;/body&gt;</font>&quot;);
        out.println(&quot;<font color="#009900">&lt;/html&gt;</font>&quot;);
    }

    <font color="#0000FF">public void</font> doPost(HttpServletRequest request, HttpServletResponse res)
    <font color="#0000FF">throws</font> IOException, ServletException
    {
        doGet(request, response);
    }
}</pre>
</body>
</html>

# # Source:  https://www.youtube.com/watch?v=a1mtbxASWSM
# https://www.guru99.com/accessing-forms-in-webdriver.html
# public class Script {

# 	public static void main(String[] args) {
# 		// TODO Auto-generated method stub
		
# 		System.setProperty("webdriver.chrome.driver", "/Volumes/uga/app/devops/eclipse-workspace/java_files/chrome/chromedriver");
# 				//"D:\\ChromeDriver\\chromedriver.exe");
		
# 		//Instantiate a ChromeDriver class.
# 		WebDriver driver=new ChromeDriver();
		
# 		driver.get("http://www.coolithelp.com/");
		

# 	}

# }


# //______________________//
# # Source: https://youtu.be/b4GEjUjWFB4
# package seleniumFirstProject;

# import org.openqa.selenium.WebDriver;
# import org.openqa.selenium.firefox.FirefoxDriver;

# public class SeleniumFirstTest {
# WebDriver driver;

# public void launchBrowser() {
# 	System.setProperty("webdriver.gecko.driver", "/Volumes/uga/app/devops/java_files/Drivers/firefox/geckodriver");
#     driver= new FirefoxDriver();
#     driver.get("https://www.amazon.in");
# }

# 	public static void main(String[] args) {
		
# 		SeleniumFirstTest obj = new SeleniumFirstTest();
# 		obj.launchBrowser();

# 	}

# }
kubectl describe pod jenkins-5c6c476487-5qdvx -n jenkins | egrep 'Container'

ContainerID='docker://de410395b31322a1e0272bce0ee9e9bfb5f0accd598c748b8f438b852e0626fb'

ContainerID=$(kubectl describe pod jenkins-5c6c476487-5qdvx -n jenkins | egrep 'Container' | grep ID | awk '{print $3}')
docker exec -it -u root ${ContainerID} /bin/bash

ContainerID=$(docker container ls | grep jenkins | grep -v pause | awk '{print $1}')
docker exec -it -u root "${ContainerID}" /bin/bash

root@jenkins-5c6c476487-5qdvx:/# java -version
openjdk version "1.8.0_292"
OpenJDK Runtime Environment (AdoptOpenJDK)(build 1.8.0_292-b10)
OpenJDK 64-Bit Server VM (AdoptOpenJDK)(build 25.292-b10, mixed mode)


