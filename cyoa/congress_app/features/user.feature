Feature: User Sign In
In order to access my account
As a user
I want to sign in to the site


@HappyTrail

Scenario: Sign In
Given I am on the signin page
When I complete all fields for the signin page
When I click login
Then I dump the page
Then I should see signout

Scenario: Sign Out
Given I am signed in
When I click Sign Out
Then I should see Sign In

@HappyTrailInverse

Scenario: Invalid Sign In
Given I have entered invalid information
When I click sign in 
Then I should see Invalid email or password


Scenario: Incomplete Fields
Given required field is blank
When I click Sign Up
Then I should see Name can't be blank

@SadTrail

Scenario: Sign In
Given I have entered my information
When I click sign in
Then I should see Sign Out

Scenario: Sign Up
Given I 
When I click Sign Up
Then I should see You have successfully signed up

@Garbage/BadTrail

Scenario: Sign Up
Given all required fields have information
When I type 8765309
And I click Sign Up
Then I should see 8765309 is not a valid email

Scenario: Sign Up
Given all required fields have information
When I type R2D2
And I click Sign Up
Then I should see Username should be 6 characters