Given(/^I am on Minlaw login page$/) do
visit 'http://caladan.theadventus.com/molbooking/Account/Login?ReturnUrl=%2Fmolbooking%2F'
end

When(/^I enter "(.*?)" in the UserName box$/) do |name|
  fill_in "UserName", :with => name
end

When(/^I enter "(.*?)" in the Password box$/) do |password|
  fill_in "Password", :with => password
end

When(/^I click Login button$/) do
#find(:xpath, "//button[@type='submit'").click
#find(:css,'button.btn.btn-danger')
click_on('Login')
end
Then(/^I should see a message "(.*?)"$/) do |expected_output|
page.has_content? 'expected_output'
end

