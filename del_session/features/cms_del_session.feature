Feature: add a session
As an internet user
I want to login booking site
So that I add a sesion
   @javascript
   Scenario: Delete a session
   Given I am on Minlaw login page
   When I enter "admin" in the UserName box
   When I enter "password" in the Password box
   When I click Login button 
   Then I should see a message "Welcome admin"
   When I click Session Mgt link and delete session

    #Then I should see "C1","00:00", "00:30" 
