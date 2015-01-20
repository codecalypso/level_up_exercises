Feature: User Registration
In order to access the website
As a user
I want to sign up and be
be able to login thereafter


@HappyTrail

Scenario: Sign In
Given I have entered my information
When I click sign in
Then I should see Sign Out

Scenario: Sign Up
Given I am on the signup page
When I complete all fields
And I click Sign Up
Then I should see Registration email sent to myemail@domain.com

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