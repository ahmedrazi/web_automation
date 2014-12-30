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
#ind(:xpath, "//button[@type='submit'").click 
click_button 'Login'
end 
#Then(/^I should see a  message "(.*?)"$/) do |expected_output|
#page.has_content? 'expected_output'
#end 
#When(/^I complete and submit the form$/) do

When(/^I click Appointment Mgt link$/) do
#find(:xpath,//a[contains(text(),'Appointment Mgt')].click
 #click_link 'http://caladan.theadventus.com/molbooking/Booking/Create'
click_link 'Appointment Mgt'
end
When(/^I click Add Booking link$/) do
click_link 'Add Booking'
end

When(/^I select "(.*?)" from Type$/) do |arg1|
#select('Community Mediation \[appt\]', :from=>'Type')
#select(//@id='Type')
find(:xpath, '//select[@id="Type"]/option[2]').select_option
end

#When(/^I select "(.*?)" in BookingDate dropdown$/) do 
  #within_fieldset('img.ui-datepicker-trigger') do
#select('10/27/2014' , :from=>'BookingDate')
 #end
When(/^I should see a date picker appear$/) do
#find(:xpath,"//a[contains(text(),'27')]").click
find(:css, 'img.ui-datepicker-trigger').click
#find(:xpath,"//a[contains(@href, '#')]").click

end
 

Then(/^I need to click a date$/) do 
 #find(:xpath,"//div[2]/div/img").click
find(:link, "28").click
 
 #find(:xpath,'//div[@id="ui-datepicker-div"]/table/tbody/tr[5]/td[6]').click
 #find(:xpath,//img[@alt='...']).click
end

When(/^I check a timeslot from multiselect$/) do
find(:xpath, "//button[@type='button']").click
#find(:css, 'label.checkbox'[1]).click
#find(:xpath, "//li[24]/a/label").click
#find(:css, "input[name=\"multiselect\"]").click
find(:xpath, "//input[@name='multiselect']").click
find(:id, "session").click



#find(:xpath, "//button[@type='button']").click
#check('07\:00\-07\:30' , :from=>'multiselect')
#check('07\:00\-07\:30') 
  #expect(page).to have_content('M5')
end

When(/^I enter data in Customer NRIC field$/) do 
fill_in('Customer_NRIC', :with => '7860' )
end

When(/^I enter data in secondary NRIC field$/) do 
fill_in('Customer_SecondaryNRIC',:with => '4444')
end

When(/^I enter mail in Email field$/) do 
fill_in('Customer_Email', :with => 'softsysuser@gmail.com')
  end
#When(/^I select "(.*?)" from Officer ID field$/) do |oid|
 # select_option('oid', :from => 'Officer_ID')
#end
When(/^I enter comments in note text box$/) do 
	fill_in('Note', :with =>'testing')
end

When(/^I enter name in Customer Name field$/) do 
fill_in('Customer_Name', :with => 'softsysuser')
end

When(/^I enter address in Customer Address field$/) do 
fill_in('Customer_Address', :with =>'12 main street')
end

When(/^I enter contact in Customer contact field$/) do
fill_in('Customer_Contact',:with =>'1112223333')
end

When(/^I click save button$/) do 
click_button('btn-save')
end

Then(/^I should see appointment management page$/) do
page.has_content?('Appointment Management')
end