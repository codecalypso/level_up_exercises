FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "jane#{n}@doe.com" }
    password "password"
    password_confirmation "password"
  end
