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
When(/^I click Blockout Date Mgt link$/) do
click_link('Blockout Date Mgt')
end
When(/^I click Add Blockout Date link$/) do
  click_link('Add Blockout Date')
end          

When(/^I select "All" from Service Type$/) do 
#select('Community Mediation \[Appt\]', :from=>'Type')                                                                            
select('All', :from=>'Type')
end

When(/^I uncheck "(.*?)" from Day$/) do |all|
uncheck('all-checked')
 end
When(/^I check "All" from Day$/) do 
  check('all-checked')
end

 When(/^I need to enter a start date$/) do 

 find(:xpath,"//td[2]/div/img").click
 
end
Then(/^I should see a start date picker appear$/) do
#date=find(:xpath, "//div[@id='ui-datepicker-div']")
find(:xpath,"//a[2]/span").click
find(:xpath,"//a[contains(text(),'25')]").click
end
 
When(/^I need to enter a end date$/) do 
 find(:xpath,"//td[4]/div/img").click
end
Then(/^I should see a end date picker appear$/) do
#date=find(:xpath, "//div[@id='ui-datepicker-div']")
find(:xpath,"//a[contains(text(),'26')]").click
end

 When(/^I click Save button$/) do
 click_button 'Save'
end

Then(/^I should see a session page$/) do
 page.has_content?('All')
end
