Feature: login on MinLlw 
As an internet user
I want to login on Minlaw
So that I access my content
@admin
 Scenario: sucessful login to Minlaw
   Given I am on Minlaw login page
   When I enter "admin" in the UserName box
   When I enter "password" in the Password box
   When I click "Login" button
   Then I should see a message "Welcome admin"
Scenario: login to Minlaw with empty userid
   Given I am on Minlaw login page
   When I enter "" in the UserName box
   When I enter "password" in the Password box
   When I click "Login" button
   Then I should see a message "The User name field is required"

   Scenario: login to Minlaw with invalid userid
   Given I am on Minlaw login page
   When I enter "admin1" in the UserName box
   When I enter "password" in the Password box
   When I click "Login" button
   Then I should see a message "Invalid User"
@user
Scenario: sucessful login to Minlaw
   Given I am on Minlaw login page
   When I enter "user" in the UserName box
   When I enter "password" in the Password box
   When I click "Login" button
   Then I should see a message "Welcome user"
Scenario: login to Minlaw with empty userid
   Given I am on Minlaw login page
   When I enter "" in the UserName box
   When I enter "password" in the Password box
   When I click "Login" button
   Then I should see a message "The User name field is required"

   Scenario: login to Minlaw with invalid userid
   Given I am on Minlaw login page
   When I enter "user99" in the UserName box
   When I enter "password" in the Password box
   When I click "Login" button
   Then I should see a message "Invalid User"
