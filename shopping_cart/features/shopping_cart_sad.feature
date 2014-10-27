happy test/golden path => produces an expected output
bad test => shows the system when fed absolute rubbish
sad test => possible failure/shows that things fail when they should

Scenario: Adding coupon before adding an item
  Given I am on the shopping cart page
  And I have not selected any items
  And I type in the coupon code
  And I click apply
  And I click update order
  Then the I should see an error message

Scenario: Invalid Quantity Change
  Given I am on the shopping cart page
  And I have five cans of beans in the cart
  And I type 6 in the quantity field
  And I click update cart
  Then the cart should have six cans

Scenario: Adding Invalid Info For Shipping Estimates
  Given I am on the shopping cart page
  When I type Neverland in the city field
  And I click Get Estimate
  Then I should see an error message

Scenario: Adding Invalid Info For Shipping Estimates
  Given I am on the shopping cart page
  When I type St in the name field
  And I click Get Estimate
  Then I should see an error message

Scenario: Adding Invalid Info For Shipping Estimates
  Given I am on the shopping cart page
  And I type 6066000 in the zipcode field
  And I click Get Estimate
  Then I should see an error message


