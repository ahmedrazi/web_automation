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

When(/^I click Session Mgt link$/) do
click_link('Session Mgt')
end

When(/^I click Add Session link$/) do
  click_link('Add Session')
end

When(/^I select "00" from Hour$/) do 
    select('00', :from =>'Hour')
  end

When(/^I select "30" from Minute$/) do 
  select('30', :from => 'Minute')
end

When(/^I select "1" from Slot$/) do 
select('1', :from => 'Slot')
end

When(/^I select "C1" from Room Name$/) do 
 select('C1', :from => 'Room_ID')
end

When(/^I click Save button$/) do 
  click_button("btn\-save")
end


Then(/^I should see "(.*?)","(.*?)", "(.*?)"$/) do |room, hour, minute|
  page.has_content?('room')
  page.has_content?('hour')
  page.has_content?('minute')
  
end