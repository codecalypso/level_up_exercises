def signup_attempt(options={})
  fill_in 'Email', :with => options[:email]
  fill_in 'Password', :with => options[:password]
  fill_in 'Password confirmation', :with => options[:user_password_confirmation]
  find("input[type=submit][value='Sign up']").click
end

Given(/^I am on the signup page$/) do
  visit('/users/sign_up')
end


Given(/^I am already a user$/) do
  @user = FactoryGirl.create(:user)
end

When(/^I complete required fields on the page$/) do
  signup_attempt(email: "smullins@enova.com", password: "redbull32", user_password_confirmation: "redbull32")
end

When(/^I enter my credentials$/) do
  signup_attempt(email: @user.email, password: @user.password, user_password_confirmation: @user.password)
end


Then(/^I should see an email error message$/)do
  expect(page).to have_content("Email is invalid")
end


Then(/^I should see confirmation that I am a user$/)do 
  expect(page).to have_content(" Welcome! You have signed up successfully.")
end

Then(/^I should see an alert that my email is in the system$/) do
  expect(page).to have_content("Email has already been taken")
end


Then(/^I should see message indicating that info missing$/) do
  expect(page).to have_content("Email can't be blank")
end

When (/^I type in a bad email$/)do
  signup_attempt(email: "smullins", password: "redbull32", user_password_confirmation: "redbull32")
end

When(/^I omit my password$/)do
  signup_attempt(email: "smullins@enova.com", password: "", user_password_confirmation: "")
end

When(/^I omit my password$/)do
  signup_attempt(email: "smullins@enova.com", password: "", user_password_confirmation: "")
end

And(/^I dump the page/) do
  puts body
end
