#Browser Details
require 'selenium-webdriver'

class BrowserImp

	$driver = []

	#This is to setup the driver with default URL and capabilities
	def setup_driver
		$driver = Selenium::WebDriver.for :chrome

		#Adding Implicit wait time to the driver 
		$driver.manage.timeouts.implicit_wait = 2

		#maximizing the window
		$driver.manage.window.maximize

		#Navigate to the URL
		$driver.navigate.to "http://192.168.99.101:9080/prweb"	

		return $driver
	end 

	def waitForElements(xPath, timeOut)
		wait = Selenium::WebDriver::Wait.new(:timeout => 10)
		begin
			wait.until {
				element = $driver.find_element(xpath: xPath)
			}
		ensure
		

		end
	end
end