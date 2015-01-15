
Happy Trail

Scenario: Sign In
Given I have entered my information
When I click sign in
Then I should see Sign Out

Scenario: Sign Up
Given all required fields have information
When I click Sign Up
Then I should see Registration email sent to myemail@domain.com

Scenario: Sign Out
Given I am signed in
When I click Sign Out
Then I should see Sign In

Happy Trail Inverse

Scenario: Invalid Sign In
Given I have entered invalid information
When I click sign in 
Then I should see Invalid email or password


Scenario: Incomplete Fields
Given required field is blank
When I click Sign Up
Then I should see Name can't be blank

Sad Trail

Scenario: Sign In
Given I have entered my information
When I click sign in
Then I should see Sign Out

Scenario: Sign Up
Given I 
When I click Sign Up
Then I should see You have successfully signed up

Garbage/Bad Trail

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