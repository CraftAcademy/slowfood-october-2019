# frozen_string_literal: true

Given('(I/He/She) (am/is) on the landing page') do
  visit root_path
end

Given('(I/he/she) click on {string}') do |element|
  click_on element
end

Given('(I/He/She) (am/is) on the signup page') do
  visit new_user_registration_path
end

When('(I/he/she) fill in {string} with {string}') do |input, content|
  fill_in input, with: content
end

Given('(I/he/she) click(s) on {string} for {string}') do |element, product_name|
  product = Product.find_by(name: product_name)
  within("#product_#{product.id}") do
    click_on element
  end
end

Given('{string} has ordered products in the past') do |email|
  user = @user || User.find_by(email: email)
  user.orders.create
  user.orders.last.update_attribute(:active, false)
end

Then('stop') do
  binding.pry
end

Given('(I/He/She) (am/is) on the owner sign-in page') do
  visit new_owner_session_path
end
