Scenario: Adding Invalid Info For Shipping Estimates
  Given I am on the shopping cart page
  And I type abcdefg in the zipcode field
  And I click Get Estimate
  Then I should see an error message

Scenario: Change Quantity
  Given I am on the shopping cart page
  And I have five cans of beans
  And I type h in the quantity field
  And I click update cart
  Then the cart should have five cans
