Feature: Visitor Registration
In order to access premium content on the web page
As a visitor
I want to sign up

Background:
Given I am on the signup page


Scenario: Sign Up
When I complete required fields on the page
Then I should see confirmation that I am a user

Scenario: Invalid Email
When I type in a bad email
Then I should see an email error message

Scenario: Missing email
When I omit my email
Then I should see message indicating that email missing

Scenario: Missing password
When I omit my password
Then I should see message indicating that password missing

Scenario: Visitor currently in system
Given I am already a user
When I enter my credentials
Then I should see an alert that my email is in the system
