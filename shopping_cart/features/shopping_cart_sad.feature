happy test/golden path => produces an expected output
bad test => shows the system when fed absolute rubbish
sad test => possible failure/shows that things fail when they should

applying coupon before purchase
requesting more than what's what's available
typing in non numeric info
removing item that is not there
adding something that is not available
clicking add without having made any selections

Scenario: Entering bad data

Scenario: Adding coupon before adding an item
  Given the shopping cart is empty
  When I apply the coupon 
  And click update
  Then I should see an error message

Scenario: Deleting items from empty cart
  Given the shopping cart is empty
  And I click -
  Then I should see an err
  or message

