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

click_button 'Login'
end 

Then /^I should see a message "(.*?)"$/ do |arg1|
	page.has_content?('arg1')
end

When(/^I click Session Mgt link and delete session$/) do
click_on('Session Mgt')
#visit 'http://caladan.theadventus.com/molbooking/Session/Index/1?page=1'
find(:css, 'input.del-alert').click
#find(:xpath, "//input[@type='image'])[5]").click
click_button('btn-delete')
end


#Then(/^I should see "(.*?)","(.*?)", "(.*?)"$/) do |room, hour, minute|
 # page.has_content?('room')
  #page.has_content?('hour')
  #page.has_content?('minute')
  
#end
