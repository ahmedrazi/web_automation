Feature: Minlaw blockout management
In order to manage blockout date
As an admin user
I should be able to login to System and manage blockout date
#So that I add a sesion
   @javascript
   Scenario:Delete  blackout date
   Given I am on Minlaw login page
   When I enter "admin" in the UserName box
   When I enter "password" in the Password box
   When I click Login button 
   #Then I should be redirected to welcome page
   When I click Blockout Date Mgt link and click delete
