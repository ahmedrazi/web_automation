
Feature: add an appointment
As an internet user
I want to login booking site
So that I add an appointment
   Scenario: Add appointment
   Given I am on Minlaw login page
   When I enter "admin" in the UserName box
   When I enter "password" in the Password box
   When I click Login button 
   #Then I should see a message "Welcome admin"
   #When I complete and submit the form
   When I click Appointment Mgt link
   When I click Add Booking link
   When I select "Community Mediation [app]" from Type 
   When I should see a date picker appear
   Then I need to click a date
   When I check a timeslot from multiselect 
   When I enter data in Customer NRIC field
   When I enter data in secondary NRIC field
   When I enter mail in Email field 
   When I enter comments in note text box
   When I enter name in Customer Name field
   When I enter address in Customer Address field
   When I enter contact in Customer contact field
   When I click save button
   Then I should see appointment management page