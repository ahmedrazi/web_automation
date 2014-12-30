
Feature: Delete an existing booking
As an internet user
I want to Minlaw login booking site
So that I can delete an existing booking
   Scenario: Delete booking
   Given I am on Minlaw login page
   When I enter "admin" in the UserName box
   When I enter "password" in the Password box
   When I click Login button 
   Then I should be redirected to welcome page
   When I click Appointment Mgt link
   When I select a date from Date field
   When I enter data in NRIC field
   When I click search button 
   When I click delete alert icon and delete button
   Then I should see a delete confirmation message



   