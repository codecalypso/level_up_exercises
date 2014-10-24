Feature:
  As an online shopper
  I want to start buying groceries
  and add them to a virtual
  shopping cart.

Scenario: Empty Cart
  Given I am on the shopping cart page
  And I have not selected any items
  Then my cart should be empty

Scenario: Add Item to Cart
  Given I am on the frozen foods page
  When I select ice cream
  Add I click add to cart
  Then the cart should should have ice cream

Scenario: Remove Item From Cart
  Given I am on the shopping cart page
  When I select grits
  And I click delete
  Then the cart should not have grits

Scenario: Change Quantity
  Given I am on the shopping cart page
  And I have five cans of beans
  And I type 6 in the quanity field
  And I click update cart
  Then the cart should have six cans

Scenario: Delete Item From Cart
  Given I am on the shopping cart page
  And I have one bag of sugar
  When I click the delete button
  And I click update cart
  Then the cart should not have sugar

Scenario: Add Coupons
  Given I am on the shopping cart page
  And I type in the coupon code
  When I click apply
  And I clik update order
  Then the total should reflect the coupon difference

Scenario: Expired Coupons
  Given I am on the shopping cart page
  And I type in the coupon code
  When I click apply
  And I click update order
  Then I should see an error message

Scenario: View Shipping Estimates
  Given
  When
  Then

Scenario: Redirect to item page
  Given
  When
  Then

  #sad
  #bad