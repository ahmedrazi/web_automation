Feature: add a session
As an internet user
I want to login booking site
So that I add a sesion
   Scenario: Add a session
   Given I am on Minlaw login page
   When I enter "admin" in the UserName box
   When I enter "password" in the Password box
   When I click Login button 
   #Then I should see a message "Welcome admin"
   When I click Add Session link
   When I click Session Mgt link
    When I complete and submit the form
    And I select "00"00" as Start Time
    And I choose "1" as Slots Available
    And I select "C1" as Room Name
    When I click save button 
    Then I should see "Welcome Admin" message