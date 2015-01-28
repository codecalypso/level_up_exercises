def login_attempt(options={})
  fill_in 'Email', :with => options[:email]
  fill_in 'Password', :with => options[:password]
  find("input[type=submit][value='Log in']").click
end

Given (/^I am a registered user$/) do
  @user = FactoryGirl.create(:user)
end

And (/^I visit the signin page$/) do
  visit('/users/sign_in')
end

When(/^I login/) do
  login_attempt(email: @user.email, password: @user.password)
end

When(/^I enter the wrong email or password$/) do
  login_attempt(email: "person@gmail.com", password: "password")
end

When(/^I fail to enter my information in the fields$/) do
  login_attempt(email: "", password: "")
end

Then(/^I should see signout$/) do
  expect(page).to have_content("Sign out")
end

Then(/^I should see an error message$/) do
  expect(page).to have_content("Invalid email or password")
end
