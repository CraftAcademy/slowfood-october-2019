Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Then("I should be on the landing page") do
  expect(current_path).to eq root_path
end