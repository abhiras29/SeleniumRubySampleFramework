#Demo Test Case with RSpec

require 'selenium-webdriver'
require 'rspec'
require_relative '../PageFactory/LoginPageElements'
require_relative '../Framework/BrowserImp'

#Description of the TestCase
describe "Blog Application" do

	before(:all) do
	  @browserObject = BrowserImp.new
	end

  it "Login into the system" do

    driver = @browserObject.setup_driver 

    username = driver.find_element(xpath: LoginPageElements::TEXTBOX_USERNAME)
    @browserObject.waitForElements(LoginPageElements::TEXTBOX_USERNAME, 10)
    username.send_keys("Admin@SHARK")

    password = driver.find_element(xpath: LoginPageElements::TEXTBOX_PASSWORD)
    @browserObject.waitForElements(LoginPageElements::TEXTBOX_PASSWORD, 10)
    password.send_keys("rules")

    login_button = driver.find_element(xpath: LoginPageElements::BTN_LOGIN)
    @browserObject.waitForElements(LoginPageElements::BTN_LOGIN, 10)
    login_button.click

    driver.quit

  end

end



