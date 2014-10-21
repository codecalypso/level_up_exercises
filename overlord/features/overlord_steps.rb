require 'pry'
Given /^I visit the overlord home page$/ do
  visit ("/")
end

When /^I type in the right activation code$/ do 
  fill_in("activation_code", with: "2342")
end

And /^I click activate$/ do
  click_button("Activate")
end

Then /^I should see the bomb status as active$/ do
  expect(page).to have_content "Status: The bomb is active"
end

Given /^I am on the activate page$/ do 
  step "I visit the overlord home page"
  step "I type in the right activation code"
  step "I click activate"
 end

When /^I type in the right deactivation code$/ do
  fill_in("deactivation_code", with: "0000")
end

And /^I click deactivate$/ do
  click_button("Deactivate")
end

Then /^I should see the bomb status as inactive$/ do
  expect(page).to have_content "Status: The bomb is inactive"
end

#sad tests :(

When /^I type in the wrong activation code$/ do
 fill_in("activation_code", with: "8768")
end

When /^I type in the wrong deactivation code$/ do
  fill_in("deactivation_code", with: "8758")
end

When /^I type in password$/ do
  fill_in("deactivation_code", with: "password")
end


# When /^I type the wrong deactivation code three times$/ do
#    fill_in("deactivation_code", with: "7654")
#    fill_in("deactivation_code", with: "9086")
#    fill_in("deactivation_code", with: "8765")
# end

#bad tests
# Then /^I should see the bomb status as exploded$/ do
#   expect(page).to have_content "Status: The bomb has exploded. Ha!"
# end

