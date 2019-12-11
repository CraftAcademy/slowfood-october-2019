Given("the following products exist:") do |table|
  table.hashes.each do |product_attributes|
    category = Category.find_or_create_by(name: product_attributes["category"])
    product_attributes.except!("category")
    create(:product, product_attributes.merge(category: category))
  end
end