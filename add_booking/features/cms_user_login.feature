Feature: login on MOL 
As an internet user
I want to login on MOL
So that I access my content

 Scenario: sucessful login to MOL as an auth user
   Given I am on MOL login page
   When I enter "user" in the UserName 
   When I enter "password" in the Password box
   When I click "Login" button
   Then I should see a message "Administration System Welcome user"
Scenario: unsuccessful login to MOL with empty userid
   Given I am on MOL login page
   When I enter "" in the UserName box
   When I enter "password" in the Password box
   When I click "Login" button
   Then I should see a message "The User name field is required."

Scenario: unsuccessful login to MOL with invalid userid
   Given I am on MOL login page
   When I enter "user99" in the UserName box
   When I enter "password" in the Password box
   When I click "Login" button
   Then I should see a message "Invalid User"
