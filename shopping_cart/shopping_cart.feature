Feature:
  As an online shopper
  I want to add items to a shopping cart
  So that I can buy groceries.

Scenario: Empty Cart
  Given I am on the shopping cart page
  And I have not selected any items
  Then my cart should be empty

Scenario: Add Item to Cart
  Given I am on the frozen foods page
  When I select ice cream
  And I click add to cart
  Then the cart should should have ice cream

Scenario: Remove Item From Cart
  Given I am on the shopping cart page and I have grits
  And I select grits
  And I click delete
  Then the cart should not have grits

Scenario: Change Quantity
  Given I am on the shopping cart page
  And I have five cans of beans
  And I type 6 in the quantity field
  And I click update cart
  Then the cart should have six cans

Scenario: Add Coupons
  Given I am on the shopping cart page
  And I type in the coupon code
  When I click apply
  And I click update order
  Then the total should reflect the coupon difference


Scenario: View Shipping Estimates
  Given I on the shopping cart page
  When I enter valid shipping address
  And I click Get Estimate
  Then I should see the shipping estimates

Scenario: Redirect to Item Page
  Given I am on the shopping cart page
  When I click on ice cream
  Then I should be back on the frozen food page
