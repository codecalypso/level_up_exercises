Feature: User Sign In
In order to access my account
As a user
I want to sign in to the site

Background:
Given I am a registered user
And I visit the signin page

@HappyTrail

Scenario: Sign In
When I login
Then I should see signout

@HappyTrailInverse

Scenario: Invalid Credentials
When I enter the wrong email or password
And I dump the page
Then I should see an error message

Scenario: Blank Fields
When I fail to enter my information in the fields
Then I should see an error message
