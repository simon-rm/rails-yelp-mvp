Restaurant.destroy_all

30.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: %w[chinese italian japanese french belgian].sample
  )
  10.times do
    restaurant.reviews << Review.create(content: Faker::Restaurant.review, rating: rand(1..5))
  end
end
