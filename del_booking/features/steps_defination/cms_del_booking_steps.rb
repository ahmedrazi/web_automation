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
Then (/^I should be redirected to welcome page$/) do
 page.has_content?('welcome admin')
	end
When(/^I click Appointment Mgt link$/) do

click_link 'Appointment Mgt'
end
When(/^I select a date from Date field$/) do 
 select("11/28/2014", :from =>'Date')
end
When(/^I enter data in NRIC field$/) do 
#find(:id, "Date")).select_by(:text, '10/31/2014')
fill_in('Search', :with => '7860')
end

When(/^I click search button$/) do
click_button('Search')
end

When(/^I click delete alert icon and delete button$/) do
click_on('Delete')
#find(:css,".del-alert").click
click_button('btn-delete')
end

Then(/^I should see a delete confirmation message$/) do
page.has_no_content?('1111')
end

