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
 select("10/31/2014", :from =>'Date')

end
When(/^I enter data in NRIC field$/) do 

fill_in('Search', :with => '7860')
end

When(/^I click search button$/) do
click_button('Search')
end

When(/^I click view alert icon and view button$/) do
elem=first(:xpath,'//input[@type="image"]')[1]
puts 'elem'
#click_on('View')

end
 When(/^I click back button on view page$/) do
 	click_button('btn-back')
end
Then(/^I should return to previous page$/) do
  page.has_content? 'Appointment Management'
  end