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
#hen(/^I click "Login" button$/) do 
#find(:xpath, "//button[@type='submit'").click 
click_button 'Login'
end 
Then /^I should be redirected to welcome page$/ do
    page.has_content?('welcome admin')
  end
When(/^I click Blockout Date Mgt link and click delete$/) do
click_link('Blockout Date Mgt')
if (page.has_xpath?("//tr[1]/td[3]/input"))
find(:xpath,"//tr[1]/td[3]/input").click
click_button('btn-delete')
else
puts "No Blockout data exits"
end

end
