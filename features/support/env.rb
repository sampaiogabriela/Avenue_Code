require "json"
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations



Before(:each) do
  @driver = Selenium::WebDriver.for :firefox
  @base_url = "http://www.williams-sonoma.com/"
  @accept_next_alert = true
  @driver.manage.timeouts.implicit_wait = 30
  @verification_errors = []
end

After(:each) do
  @driver.quit
  @verification_errors.should == []
end
