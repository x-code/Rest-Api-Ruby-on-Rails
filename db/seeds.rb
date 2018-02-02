5.times do
  Product.create({
      name: Faker::Book.name,
      description: Faker::Lorem.sentence,
      category: Faker::Lorem.sentence,
      brand: Faker::Lorem.sentence,
      variants: Faker::Lorem.sentence
  })
end