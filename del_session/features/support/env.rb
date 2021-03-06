require 'capybara/cucumber'
require 'rspec/expectations'
#require 'capybara/poltergeist'
#require 'spec/expectations'
#require 'win32ole'
#require 'singleton'
Capybara.default_driver = :selenium
Capybara.default_wait_time = 20
Capybara.match=:first
#Capybara.app_host = "http://www.google.com"
if ENV['HEADLESS'] == 'true'
  require 'headless'

  headless = Headless.new
  headless.start

  at_exit do
    headless.destroy
  end
end

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end
