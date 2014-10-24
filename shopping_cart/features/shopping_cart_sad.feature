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
  And I have five cans of beans
  And I type 6 in the quantity field
  And I click update cart
  Then the cart should have six cans

Scenario: Adding Invalid Info For Shipping Estimates
  Given I am on the shopping cart page
  When I type in 1984 n Blueberry Street in the address field
  And I type in Neverland in the city field
  And I type " " in the state field
  And I type 123456 in the zipcode field
  And I click Get Estimate
  Then I should see an error message
