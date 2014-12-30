Feature: add a session
As an internet user
I want to login booking site
So that I add a sesion
   @javascript
   Scenario: Add a session
   Given I am on Minlaw login page
   When I enter "admin" in the UserName box
   When I enter "password" in the Password box
   When I click Login button 
   Then I should see a message "Welcome admin"
   When I click Session Mgt link
   When I click Add Session link
   #Given I am at Session Management page
   When I select "00" from Hour
   When I select "30" from Minute
   When I select "1" from Slot 
   When I select "C1" from Room Name
    When I click Save button 
    Then I should see "C1","00:00", "00:30" 