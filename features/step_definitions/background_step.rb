Given("the following products exist:") do |table|
  table.hashes.each do |attrs|
    create(:product, attrs)
  end
end
Given("the following user exist:") do |table|
  table.hashes.each do |hash|
    create(:user, hash)
  end
end
