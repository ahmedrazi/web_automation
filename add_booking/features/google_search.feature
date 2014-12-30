Feature: Google Serach functions
As I resarcher 
I wnant to search google 
so I can do my research
Scenario: A simple google search scenario
When I fill in "q" with "Cucumber test"
 And I click "gbqfb" button
 And I click on the first result
 Then I should see "Cucumber lets software development teams describe how software should behave in plain text."