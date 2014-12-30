Feature: Minlaw blockout management
In order to manage blockout date
As an admin user
I should be able to login to System and manage blockout date
#So that I add a sesion
   @javascript
   Scenario: Add a blackout date
   Given I am on Minlaw login page
   When I enter "admin" in the UserName box
   When I enter "password" in the Password box
   When I click Login button 
   #Then I should be redirected to welcome page
   When I click Blockout Date Mgt link
   #When I find and delete  existing blockout entry for "10/24/2014"
   When I click Add Blockout Date link
   #When I complete and submit
   When I select "All" from Service Type
   When I uncheck "All" from Day
   When I check "All" from Day
   When I need to enter a start date 
   Then I should see a start date picker appear
   When I need to enter a end date 
   Then I should see a end date picker appear
   When I click Save button 
   Then I should see a session page

   
