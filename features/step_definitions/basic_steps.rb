Given("I am on the landing page") do
   visit root_path  
end
Given("I click on {string}") do |element|
   click_on element
  end
  Given("I fill in {string} with {string}") do |input, content|
   fill_in input with: content
  end
 