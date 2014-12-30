require 'capybara/cucumber'
require 'rspec/expectations'
#require 'capybara/poltergeist'
#require 'spec/expectations'
#require 'win32ole'
#require 'singleton'
Capybara.default_driver = :selenium
Capybara.default_wait_time = 20
#Capybara.app_host = "http://www.google.com"
if ENV['HEADLESS'] == 'true'
  require 'headless'

  headless = Headless.new
  headless.start

  at_exit do
    headless.destroy
  end
end
class Capybara::XPath
  class << self
    def element(locator)
      append("//*[normalize-space(text())=#{s(locator)}]")
    end
  end
end

When 'I click "$locator"' do |locator|
  msg = "No element found with the content of '#{locator}'"
  locate(:xpath, Capybara::XPath.element(locator), msg).click
end
