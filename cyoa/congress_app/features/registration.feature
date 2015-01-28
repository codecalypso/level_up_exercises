Feature: Visitor Registration
In order to access premium content on the web page
As a visitor
I want to sign up

Background:
Given I am on the signup page

Scenario: Sign Up
When I complete all fields for the signup page
Then I should see confirmation that I am logged in

Scenario: Invalid Email
Given all required fields have information
When I type 8765309
And I click Sign Up
Then I should see 8765309 is not a valid email

Scenario: Short Username
Given all required fields have information
When I type R2D2
And I click Sign Up
Then I should see Username should be 6 characters

Scenario: Missing information
Given a field is missing
And I click Sign Up
Then I should see message indicating that info missing

Scenario: Visitor currently in system
Given I am already a user
When I enter my credentials
And I click Sign Up
Then I should see an alert informing me that my email is in thesystem
