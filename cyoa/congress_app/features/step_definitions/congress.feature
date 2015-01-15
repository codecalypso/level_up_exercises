Feature: Congress Query
In order to stay current on congressional deeds
As a civilian
I want to find acheivements based on 
a party, bill or congress person.


Scenario: Query keyword
Given I am on the main page
When I type in climate change
Then I should see a list that includes this keyword

Scenario: Tag good deeds for email alerts
Given I am signed in
When I click the favorite button
Then I should expect to receive updates via email

Scenario: Filter deeds
Given I am on the main page
When I click congressmen
Then I should be on the congressmen page

When I click bills person
Then I should be on the bills page

When I click senate person
Then I should be on the senate page

When I click house person
Then I should be on the house page


Scenario: Invalid Query

Scenario: Blank Query